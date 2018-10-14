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
  @behaviour GoogleApis.Generator
  alias GoogleApis.ApiConfig

  alias GoogleApi.Discovery.V1.Model.JsonSchema

  defmodule Token do
    defstruct [
      :filename,
      :library_name,
      :namespace,
      :base_dir,
      :rest_description,
      :models
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
  end

  defmodule Renderer do
    require EEx
    EEx.function_from_file(:def, :model, Path.expand("./template/elixir/model.ex.eex"), [:model, :namespace])
  end

  defmodule Property do
    defstruct [:name, :description, :type, :struct, :typespec, :required, :default]

    def full_description(property) do
      "#{property.name} (#{property.typespec}): #{property.description}"
    end
  end

  defmodule Model do
    defstruct [:name, :description, :properties, :typespec, :schema]

    def filename(model) do
      "#{Macro.underscore(model.name)}.ex"
    end

    def attribute_description(field_name, schema) do
      "#{field_name} (#{typespec(schema)}): #{schema.description}  Defaults to `#{value_string(schema.default)}`."
    end

    def typespec(%{type: "array", items: items}), do: "list(#{typespec(items)})"
    def typespec(%{"$ref": ref}) when not is_nil(ref), do: "#{ref}.t"
    def typespec(%{type: int}) when int in ["int", "integer"], do: "integer()"
    def typespec(%{type: "string", format: date_or_time}) when date_or_time in ["date", "date-time", "time"], do: "DateTime.t"
    def typespec(%{type: "string"}), do: "String.t"
    def typespec(%{type: "boolean"}), do: "boolean()"
    def typespec(%{type: "number", format: "double"}), do: "float()"
    def typespec(%{type: "number"}), do: "number()"
    def typespec(%{type: "any"}), do: "any()"
    def typespec(%{type: "object", full_name: full_name}) do
      IO.inspect full_name
       "#{full_name}.t()"
    end
    def typespec(%{type: "object"} = schema) do
      IO.inspect "unknown object with properties: #{Enum.join(Map.keys(schema.properties), ", ")}"
      IO.inspect Map.keys(schema)
       "any()" # FIXME
    end
    def typespec(spec) do
      "String.t"
    end

    def value_string(nil), do: "nil"
    def value_string(""), do: "\"\""
    def value_string(value), do: "#{value}"
  end

  def generate_client(api_config) do
    token =
      Token.build(api_config)
      |> load_models
      |> update_model_properties
      |> write_model_files
  end

  def load_models(token = %{rest_description: rest_description}) do
    Map.put(token, :models, all_models(rest_description))
  end

  def update_model_properties(token) do
    token
  end

  def write_model_files(%{models: models, namespace: namespace, base_dir: base_dir}) do
    models
    |> Enum.take(1)
    |> Enum.each(fn model ->
      File.write!(
        Path.join([base_dir, "model", Model.filename(model)]) |> IO.inspect,
        Renderer.model(model, namespace)
      )
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