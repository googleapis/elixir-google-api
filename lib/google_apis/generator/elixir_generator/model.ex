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

defmodule GoogleApis.Generator.ElixirGenerator.Model do
  @moduledoc """
  A model is a resource type that is used by the API.
  """

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :properties => list(Property.t()),
          :schema => JsonSchema.t()
        }

  defstruct [:name, :description, :properties, :schema]

  alias GoogleApi.Discovery.V1.Model.JsonSchema
  alias GoogleApis.Generator.ElixirGenerator.ResourceContext

  @doc """
  Returns the name of the file that should be generated.
  """
  @spec filename(t) :: String.t()
  def filename(model) do
    "#{Macro.underscore(model.name)}.ex"
  end

  @doc """
  Returns a stringified value
  """
  @spec value_string(any()) :: String.t()
  def value_string(nil), do: "nil"
  def value_string(""), do: "\"\""
  def value_string(value), do: "#{value}"

  @spec from_schemas(%{optional(String.t()) => JsonSchema.t()}) :: list(t)
  def from_schemas(schemas) do
    Enum.flat_map(schemas, fn {name, schema} -> from_schema(name, schema) end)
  end

  @spec from_schema(String.t(), JsonSchema.t()) :: list(t)
  def from_schema(name, schema) do
    context =
      ResourceContext.empty()
      |> ResourceContext.with_property(name)

    from_schema("", schema, context)
    |> fix_collisions
  end

  defp fix_collisions(models) do
    do_fix_collisions(models)
    |> Map.values()
  end

  defp do_fix_collisions([]), do: %{}

  defp do_fix_collisions([model | rest]) do
    do_fix_collisions(rest)
    |> add_with_name_collision(model)
  end

  defp add_with_name_collision(by_name, model) do
    if Map.has_key?(by_name, model.name) do
      add_with_name_collision(by_name, model, 1)
    else
      Map.put(by_name, model.name, model)
    end
  end

  defp add_with_name_collision(by_name, model, inc) do
    new_name = "#{model.name}#{inc}"

    if Map.has_key?(by_name, new_name) do
      add_with_name_collision(by_name, model, inc + 1)
    else
      Map.put(by_name, new_name, Map.put(model, :name, new_name))
    end
  end

  defp from_schema(name, schema = %JsonSchema{type: "object", properties: properties}, context)
       when not is_nil(properties) do
    property_models =
      Enum.flat_map(properties, fn {n, s} ->
        from_schema(n, s, context)
      end)

    model = %__MODULE__{
      name: ResourceContext.name(context, name),
      description: schema.description,
      properties: Map.keys(properties),
      schema: []
      # schema: schema
    }

    [model | property_models]
  end

  defp from_schema(name, schema = %JsonSchema{type: "array", items: items}, context) do
    from_schema(name, items, context)
  end

  defp from_schema(_, _, _), do: []
end
