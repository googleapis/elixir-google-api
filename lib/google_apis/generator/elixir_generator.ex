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
  alias GoogleApi.Discovery.V1.Model.RestDescription

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
  @spec generate_client(ApiConfig.t()) :: any()
  def generate_client(api_config) do
    case Token.build(api_config) do
      nil ->
        IO.puts("Unable to read spec file #{ApiConfig.google_spec_file(api_config)}")
      token ->
        if updated_discovery_revision?(token) do
          token
          |> load_models
          |> set_model_filenames
          |> update_model_properties
          |> create_directories
          |> write_model_files
          |> load_global_optional_params
          |> load_apis
          |> set_api_filenames
          |> write_api_files
          |> write_connection
          |> write_metadata
          |> write_mix_exs
          |> write_readme
          |> write_license
          |> write_gitignore
          |> write_config_exs
          |> write_test_helper_exs
        end
    end
    :ok
  end

  defp updated_discovery_revision?(token) do
    path = Path.join(token.base_dir, "metadata.ex")
    with {:ok, old_metadata} <- File.read(path),
         [_, old_revision] <- Regex.run(~r/@discovery_revision "(\d{8})"/, old_metadata) do
      new_revision = token.rest_description.revision
      result = Regex.match?(~r/^\d{8}$/, new_revision) && old_revision <= new_revision
      IO.puts("Revision check: old=#{old_revision}, new=#{new_revision}, generating=#{result}")
      result
    else
      _ ->
        IO.puts("Couldn't determine old discovery revision. Generating by default.")
        true
    end
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

  defp set_model_filenames(token) do
    {models, _} =
      token.models
      |> Enum.map_reduce(MapSet.new(), fn(model, used) ->
        {file, used} = find_unused_filename(Model.filename(model), used, 0)
        {%Model{model | filename: file}, used}
      end)
    %Token{token | models: models}
  end

  defp set_api_filenames(token) do
    {apis, _} =
      token.apis
      |> Enum.map_reduce(MapSet.new(), fn(api, used) ->
        {file, used} = find_unused_filename(Api.filename(api), used, 0)
        {%Api{api | filename: file}, used}
      end)
    %Token{token | apis: apis}
  end

  defp find_unused_filename(name, used, num) do
    candidate = filename_candidate(name, num)
    if MapSet.member?(used, candidate) do
      find_unused_filename(name, used, num + 1)
    else
      {candidate, MapSet.put(used, candidate)}
    end
  end

  def filename_candidate(name, 0), do: name

  def filename_candidate(name, num) do
    base = Path.basename(name, ".ex")
    "#{base}_#{num}.ex"
  end

  defp update_model_properties(token) do
    context = ResourceContext.with_models_by_name(token.resource_context, token.models_by_name)
    Map.update!(token, :models, fn models ->
      models
      |> Enum.map(fn model ->
        Model.update_properties(model, context)
      end)
    end)
  end

  defp create_directories(token) do
    IO.puts("Creating leading directories")
    File.rm_rf!(token.base_dir)
    File.rm_rf!(Path.join(token.root_dir, ".swagger-codegen"))
    File.rm_rf!(Path.join(token.root_dir, ".swagger-codegen-ignore"))
    File.mkdir_p!(Path.join(token.base_dir, "api"))
    File.mkdir_p!(Path.join(token.base_dir, "model"))
    File.mkdir_p!(Path.join(token.root_dir, "config"))
    File.mkdir_p!(Path.join(token.root_dir, "test"))
    token
  end

  defp write_connection(token) do
    scopes = scopes_for(token.rest_description)
    otp_app = "google_api_#{token.library_name}"

    path = Path.join(token.base_dir, "connection.ex")
    IO.puts("Writing connection.ex.")

    File.write!(
      path,
      Renderer.connection(token.namespace, scopes, otp_app, token.base_url)
    )

    token
  end

  defp write_metadata(token) do
    path = Path.join(token.base_dir, "metadata.ex")
    IO.puts("Writing metadata.ex.")

    File.write!(
      path,
      Renderer.metadata(token.namespace, token.rest_description.revision)
    )

    token
  end

  defp write_license(token) do
    path = Path.join(token.root_dir, "LICENSE")
    IO.puts("Writing LICENSE")
    File.write!(path, Renderer.license())

    token
  end

  defp write_config_exs(token) do
    path = Path.join(token.root_dir, "config/config.exs")
    IO.puts("Writing config/config.exs")
    has_env_config = token.root_dir |> Path.join("config/dev.exs") |> File.regular?()
    File.write!(path, Renderer.config_exs(has_env_config))

    token
  end

  defp write_test_helper_exs(token) do
    path = Path.join(token.root_dir, "test/test_helper.exs")
    IO.puts("Writing test/test_helper.exs")
    File.write!(path, Renderer.test_helper_exs(token.root_namespace))

    token
  end

  defp write_gitignore(token) do
    path = Path.join(token.root_dir, ".gitignore")
    IO.puts("Writing .gitignore")
    File.write!(path, Renderer.gitignore())

    token
  end

  defp write_mix_exs(token) do
    path = Path.join(token.root_dir, "mix.exs")
    IO.puts("Writing mix.exs")

    description = generate_hex_description(token.rest_description)
    docs_link = docs_link_for(token.rest_description)
    version = version_from_mix_exs(path)

    File.write!(
      path,
      Renderer.mix_exs(
        token.root_namespace,
        token.library_name,
        docs_link,
        version,
        description
      )
    )

    token
  end

  defp write_readme(token) do
    path = Path.join(token.root_dir, "README.md")
    IO.puts("Writing README.md")

    api_title = api_title_for(token.rest_description)
    docs_link = docs_link_for(token.rest_description)
    description = description_for(token.rest_description)
    version = token.root_dir |> Path.join("mix.exs") |> version_from_mix_exs() |> Version.parse!()
    version_requirement = "~> #{version.major}.#{version.minor}"
    library_name = "google_api_#{token.library_name}"

    File.write!(
      path,
      Renderer.readme(
        token.root_namespace,
        library_name,
        api_title,
        docs_link,
        version_requirement,
        description
      )
    )

    token
  end

  defp generate_hex_description(rest_info) do
    api_title = api_title_for(rest_info)
    description_start = "#{api_title} client library."
    rest_description = description_for(rest_info)

    if String.length(description_start) + String.length(rest_description) > 298 do
      description_start
    else
      "#{description_start} #{rest_description}"
    end
  end

  defp scopes_for(%{auth: nil}), do: []
  defp scopes_for(%{auth: %{oauth2: %{scopes: scopes}}}), do: scopes

  defp api_title_for(%{title: title}) when is_binary(title), do: title

  defp docs_link_for(%{documentationLink: "/admin-sdk/" <> _ = link}), do: "https://developers.google.com#{link}"
  defp docs_link_for(%{documentationLink: ""}), do: "https://cloud.google.com/"
  defp docs_link_for(%{documentationLink: link}) when is_binary(link), do: link
  defp docs_link_for(_), do: "https://cloud.google.com/"

  defp description_for(%{description: desc}) when is_binary(desc), do: desc
  defp description_for(_), do: ""

  defp version_from_mix_exs(path, default_version \\ "0.1.0") do
    with {:ok, old_content} <- File.read(path),
         [_, version] <- Regex.run(~r{@version "([\d\.]+)"}, old_content) do
      version
    else
      _ -> default_version
    end
  end

  defp write_model_files(%{models: models, namespace: namespace, base_dir: base_dir} = token) do
    models
    |> Enum.each(fn model ->
      path = Path.join([base_dir, "model", model.filename])
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
      path = Path.join([token.base_dir, "api", api.filename])
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
      name = name |> String.replace("-", "_") |> Macro.camelize()
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
    |> Enum.sort_by(&(&1.name))
  end

  defp collect_methods(%{resources: resources, methods: methods}) do
    collect_methods_from_methods(methods) ++ collect_methods_from_resources(resources)
  end

  defp collect_methods_from_methods(nil), do: []
  defp collect_methods_from_methods(methods), do: Enum.into(methods, [])

  defp collect_methods_from_resources(nil), do: []

  defp collect_methods_from_resources(resources) do
    Enum.flat_map(resources, fn {_name, resource} ->
      collect_methods(resource)
    end)
  end

  @doc """
  Returns all Models found from the provided RestDescription
  """
  @spec all_models(RestDescription.t()) :: list(Model.t())
  def all_models(rest_description) do
    rest_description.schemas
    |> Model.from_schemas()
    |> Enum.sort_by(&(&1.name))
  end
end
