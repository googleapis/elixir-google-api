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
  alias GoogleApi.Discovery.V1.Model.JsonSchema

  alias GoogleApis.Generator.ElixirGenerator.{
    Api,
    Endpoint,
    Model,
    Parameter,
    Property,
    Renderer,
    ResourceContext,
    Token,
    Type
  }

  @spec generate_client(ApiConfig.t()) :: {:ok, any()} | {:error, String.t}
  def generate_client(api_config) do
    Token.build(api_config)
    |> load_models
    |> update_model_properties
    # |> write_model_files

    |> load_global_optional_params
    |> load_apis
    |> write_api_files
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
        Map.put(
          model,
          :properties,
          Enum.map(model.schema.properties, fn {name, property} ->
            Token.build_property(token, model, name, property)
          end)
        )
      end)
    end)
  end

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
        Parameter.from_json_schema(name, schema)
      end)
      |> Enum.sort_by(fn param -> param.name end)
    IO.inspect global_optional_parameters
    Map.put(token, :global_optional_parameters, global_optional_parameters)
  end

  defp load_apis(token) do
    context = %ResourceContext{
      namespace: token.namespace
    }
    Map.put(token, :apis, all_apis(token.rest_description, context))
  end

  defp write_api_files(token) do
    token.apis
    |> Enum.take(1)
    |> Enum.each(fn api ->
      path = Path.join([token.base_dir, "api", Api.filename(api)])
      IO.puts("Writing #{api.name} to #{path}.")

      File.write!(
        path,
        Renderer.api(api, token.namespace, token.global_optional_parameters)
      )
    end)
  end


  def all_apis(rest_description) do
    all_apis(rest_description, %ResourceContext{
      namespace: "DefaultNamespace"
    })
  end

  def all_apis(%{resources: resources}, context) do
    resources
    |> Enum.map(fn {name, resource} ->
      name = Macro.camelize(name)
      methods = resource.methods || []

      %Api{
        name: name,
        description: "API calls for all endpoints tagged `#{name}`.",
        endpoints:
          Enum.map(methods, fn {_, method} ->
            Endpoint.from_discovery_method(method, context)
          end)
      }
    end)
  end

  def all_models(rest_description) do
    rest_description.schemas
    |> Enum.flat_map(&all_schemas("", &1))
  end

  defp all_schemas(context, {name, schema = %JsonSchema{type: "object", properties: properties}})
       when not is_nil(properties) do
    full_name = "#{context}#{Macro.camelize(name)}"

    property_models = Enum.flat_map(properties, &all_schemas(full_name, &1))

    model = %Model{
      name: full_name,
      description: schema.description,
      properties: [],
      schema: schema
    }

    [model | property_models]
  end

  defp all_schemas(_context, {_name, _schema}) do
    []
  end
end
