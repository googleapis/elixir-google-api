# Copyright 2019 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule GoogleApis.Generator.ElixirGenerator do
  @moduledoc """
  Code generator written in Elixir which takes a Google Discovery document and
  generates an Elixir client library.
  """

  @behaviour GoogleApis.Generator
  alias GoogleApis.ApiConfig
  alias GoogleApi.Discovery.V1.Model.{JsonSchema, RestDescription}

  alias GoogleApis.Generator.ElixirGenerator.{
    Api,
    Endpoint,
    Model,
    Parameter,
    Renderer,
    ResourceContext,
    Token
  }

  @doc """
  Run the generator for the specified api configuration
  """
  @spec generate_client(ApiConfig.t()) :: {:ok, any()} | {:error, String.t()}
  def generate_client(api_config) do
    Token.build(api_config)
    |> load_models
    |> update_model_properties
    |> create_directories
    |> write_model_files
    |> load_global_optional_params
    |> load_apis
    |> write_api_files
    |> write_connection
  end

  defp load_models(token) do
    models = all_models(token.rest_description)

    token
    |> Map.put(:models, models)
    |> Map.put(
      :models_by_name,
      Enum.reduce(models, %{}, fn model, acc -> Map.put(acc, model.name, model) end)
    )
  end

  defp update_model_properties(token) do
    Map.update!(token, :models, fn models ->
      models
      |> Enum.map(fn model ->
        Model.update_properties(model, token.resource_context)
      end)
    end)
  end

  defp create_directories(token) do
    IO.puts("Creating leading directories")
    File.mkdir_p!(Path.join(token.base_dir, "api"))
    File.mkdir_p!(Path.join(token.base_dir, "model"))
    token
  end

  defp write_connection(token) do
    scopes = scopes_for(token.rest_description)
    otp_app = "google_api_#{Macro.underscore(token.rest_description.name)}"

    path = Path.join(token.base_dir, "connection.ex")
    IO.puts("Writing connection.ex.")

    File.write!(
      path,
      Renderer.connection(token.namespace, scopes, otp_app, token.base_url)
    )
  end

  defp scopes_for(%{auth: nil}), do: []
  defp scopes_for(%{auth: %{oauth2: %{scopes: scopes}}}), do: scopes

  defp write_model_files(%{models: models, namespace: namespace, base_dir: base_dir} = token) do
    models
    |> Enum.each(fn model ->
      path = Path.join([base_dir, "model", Model.filename(model)])
      IO.puts("Writing #{model.name} to #{path}.")

      File.write!(
        path,
        Renderer.model(model, namespace)
      )
    end)

    token
  end

  defp load_global_optional_params(token) do
    params = token.rest_description.parameters || []

    global_optional_parameters =
      params
      |> Enum.map(fn {name, schema} ->
        Parameter.from_json_schema(name, schema, token.resource_context)
      end)
      |> Enum.sort_by(fn param -> param.name end)

    Map.put(token, :global_optional_parameters, global_optional_parameters)
  end

  defp load_apis(token) do
    Map.put(token, :apis, all_apis(token.rest_description, token.resource_context))
  end

  defp write_api_files(token) do
    token.apis
    |> Enum.each(fn api ->
      path = Path.join([token.base_dir, "api", Api.filename(api)])
      IO.puts("Writing #{api.name} to #{path}.")

      File.write!(
        path,
        Renderer.api(api, token.namespace, token.global_optional_parameters, token.data_wrapped)
      )
    end)

    token
  end

  @doc """
  Returns all Apis found from the provided RestDescription
  """
  @spec all_apis(RestDescription.t()) :: list(Api.t())
  def all_apis(rest_description) do
    all_apis(rest_description, ResourceContext.default())
  end

  @doc """
  Returns all Apis found from the provided RestDescription and ResourceContext
  """
  @spec all_apis(RestDescription.t(), ResourceContext.t()) :: list(Api.t())
  def all_apis(%{resources: resources}, context) do
    resources
    |> Enum.map(fn {name, resource} ->
      name = Macro.camelize(name)
      methods = collect_methods(resource)

      %Api{
        name: name,
        description: "API calls for all endpoints tagged `#{name}`.",
        endpoints:
          Enum.flat_map(methods, fn {_, method} ->
            Endpoint.from_discovery_method(method, context)
          end)
      }
    end)
  end

  defp collect_methods(%{resources: resources, methods: methods}) do
    collect_methods_from_methods(methods) ++ collect_methods_from_resources(resources)
  end

  defp collect_methods_from_methods(nil), do: []
  defp collect_methods_from_methods(methods), do: Enum.into(methods, [])

  defp collect_methods_from_resources(nil), do: []

  defp collect_methods_from_resources(resources) do
    Enum.flat_map(resources, fn {name, resource} ->
      collect_methods(resource)
    end)
  end

  @doc """
  Returns all Models found from the provided RestDescription
  """
  @spec all_models(RestDescription.t()) :: list(Model.t())
  def all_models(rest_description) do
    Model.from_schemas(rest_description.schemas)
  end
end
