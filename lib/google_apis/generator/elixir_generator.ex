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

  defmodule Renderer do
    require EEx
    EEx.function_from_file(:def, :model, Path.expand("./template/elixir/model.ex.eex"), [:model, :namespace])
  end

  defmodule Field do
    defstruct [:name, :required, :collection_type, :type, :typespec]
  end

  defmodule Model do
    defstruct [:name, :schema]

    def filename(model) do
      "#{String.underscore(model)}.ex"
    end
  end

  def generate_client(api_config) do
    filename = ApiConfig.file(api_config)
    client_library_name = ApiConfig.library_name(api_config)

    rest_description =
      api_config
      |> ApiConfig.google_spec_file
      |> File.read!
      |> Poison.decode!(as: %GoogleApi.Discovery.V1.Model.RestDescription{})

    schemas = all_models(rest_description)
    |> IO.inspect
  end

  def all_models(rest_description) do
    rest_description.schemas
    |> Enum.flat_map(&(all_schemas("", &1)))
  end

  defp all_schemas(context, {name, schema = %JsonSchema{type: "object", properties: properties}}) when not is_nil(properties) do
    full_name = "#{context}#{Macro.camelize(name)}"
    [%Model{name: full_name, schema: schema} | Enum.flat_map(schema.properties, &(all_schemas(full_name, &1)))]
  end
  defp all_schemas(_context, {_name, _schema}) do
    []
  end

end