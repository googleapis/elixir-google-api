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
          :schema => GoogleApi.Discovery.V1.Model.JsonSchema.t()
        }

  defstruct [:name, :description, :properties, :schema]

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
end
