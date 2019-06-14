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

defmodule GoogleApis.Generator.ElixirGenerator.Property do
  @moduledoc """
  A property is a field of a resource object
  """

  alias GoogleApi.Discovery.V1.Model.JsonSchema
  alias GoogleApis.Generator.ElixirGenerator.{ResourceContext, Type}

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :type => Type.t(),
          :required => boolean(),
          :default => any()
        }

  defstruct [:name, :description, :type, :required, :default]

  @doc """
  Returns a pretty string representing this type. Used primarily for building
  documentation for a struct.
  """
  @spec full_description(t) :: String.t()
  def full_description(property) do
    "#{property.name} (#{property.type.typespec}): #{property.description}"
  end

  @doc """
  Builds a property from the given schema and name.
  """
  @spec from_schema(JsonSchema.t(), String.t(), ResourceContext.t()) :: t
  def from_schema(schema, name, context) do
    %__MODULE__{
      name: name,
      description: schema.description,
      required: schema.required,
      default: schema.default,
      type: Type.from_schema(schema, ResourceContext.with_property(context, name))
    }
  end
end
