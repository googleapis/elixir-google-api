# Copyright 2017 Google Inc.
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
  alias GoogleApis.Generator.ElixirGenerator.{Api, Endpoint, Model, Property}

  defmodule Token do

    defstruct [
      :filename,
      :library_name,
      :namespace,
      :base_dir,
      :rest_description,
      :models_by_name
    ]

    def build(api_config) do
      filename = ApiConfig.file(api_config)
      library_name = ApiConfig.library_name(api_config)
      namespace = ApiConfig.library_namespace(api_config)
      base_dir = Path.join([
        "clients",
        library_name,
        "lib",
        "google_api",
        library_name,
        String.downcase(ApiConfig.module_version(api_config))
      ])
      rest_description =
        api_config
        |> ApiConfig.google_spec_file
        |> File.read!
        |> Poison.decode!(as: %GoogleApi.Discovery.V1.Model.RestDescription{})

      %__MODULE__{
        filename: filename,
        library_name: library_name,
        namespace: namespace,
        base_dir: base_dir,
        rest_description: rest_description
      }
    end

    def build_property(token, model, name, schema) do
      {type, struct, typespec} = determine_type(token, model, name, schema)
      %Property{
        name: name,
        description: schema.description,
        required: schema.required,
        default: schema.default,
        struct: struct,
        type: type,
        typespec: typespec
      }
    end

    defp determine_type(token, model, name, %{type: "array", items: items}) do
      {_type, struct, typespec} = determine_type(token, model, name, items)
      {"array", struct, "list(#{typespec})"}
    end
    defp determine_type(_token, _model, _name, %{"$ref": ref}) when not is_nil(ref) do
      {"object", nil, "#{ref}.t"}
    end
    defp determine_type(_token, _model, _name, %{type: int}) when int in ["int", "integer"] do
      {"integer", nil, "integer()"}
    end
    defp determine_type(_token, _model, _name, %{type: "string", format: date_or_time}) when date_or_time in ["date", "date-time", "time"] do
      {"datetime", nil, "DateTime.t"}
    end
    defp determine_type(_token, _model, _name, %{type: "string"}) do
      {"string", nil, "String.t"}
    end
    defp determine_type(_token, _model, _name, %{type: "boolean"}) do
      {"boolean", nil, "boolean()"}
    end
    defp determine_type(_token, _model, _name, %{type: "number", format: "double"}) do
      {"float", nil, "float()"}
    end
    defp determine_type(_token, _model, _name, %{type: "number"}) do
      {"number", nil, "number()"}
    end
    defp determine_type(_token, _model, _name, %{type: "any"}) do
      {"any", nil, "any()"}
    end
    defp determine_type(token, model, name, %{type: "object"}) do
      full_name = "#{model.name}#{Macro.camelize(name)}"
      struct = "#{token.namespace}.Model.#{full_name}"
      {"object", struct, "#{struct}.t"}
    end
    defp determine_type(_token, _model, _name, _schema) do
      {"string", nil, "String.t"}
    end
  end

  def generate_client(api_config) do
    Token.build(api_config)
    |> load_models
    |> update_model_properties
    |> write_model_files
    |> load_apis
    |> write_api_files
  end

  def load_models(token) do
    models = all_models(token.rest_description)

    token
    |> Map.put(:models, models)
    |> Map.put(:models_by_name, Enum.reduce(models, %{}, fn model, acc -> Map.put(acc, model.name, model) end))
  end

  def update_model_properties(token) do
    Map.update!(token, :models, fn models ->
      models
      |> Enum.map(fn model ->
        Map.put(model, :properties, Enum.map(model.schema.properties, fn {name, property} ->
          Token.build_property(token, model, name, property)
        end))
      end)
    end)
  end

  def write_model_files(%{models: models, namespace: namespace, base_dir: base_dir} = token) do
    models
    |> Enum.take(1)
    |> Enum.each(fn model ->
      path = Path.join([base_dir, "model", Model.filename(model)])
      IO.puts "Writing #{model.name} to #{path}."
      File.write!(
        path,
        Renderer.model(model, namespace)
      )
    end)
    token
  end

  def load_apis(token) do
    Map.put(token, :apis, all_apis(token.rest_description))
  end

  def write_api_files(%{apis: apis, namespace: namespace, base_dir: base_dir}) do
    apis
    |> Enum.each(fn api ->
      path = Path.join([base_dir, "api", Api.filename(api)])
      IO.puts "Writing #{api.name} to #{path}."
      File.write!(
        path,
        Renderer.api(api, namespace)
      )
    end)
  end

  def all_apis(%{resources: resources}) do
    resources
    |> Enum.map(fn {name, resource} ->
      name = Macro.camelize(name)
      methods = resource.methods || []
      %Api{
        name: name,
        description: "API calls for all endpoints tagged `#{name}`.",
        endpoints: Enum.map(methods, fn {_, method} ->
          Endpoint.from_discovery_method(method)
        end)
      }
    end)
  end

  def all_models(rest_description) do
    rest_description.schemas
    |> Enum.flat_map(&(all_schemas("", &1)))
  end

  defp all_schemas(context, {name, schema = %JsonSchema{type: "object", properties: properties}}) when not is_nil(properties) do
    full_name = "#{context}#{Macro.camelize(name)}"

    property_models = Enum.flat_map(properties, &(all_schemas(full_name, &1)))

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