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

defmodule GoogleApis.Generator.ElixirGenerator.ResourceContext do

  @type t :: %__MODULE__{
    :namespace => String.t(),
    :model => Model.t(),
    :property => String.t()
  }

  defstruct [:namespace, :model, :property]

  @spec struct_name(t) :: String.t()
  def struct_name(context), do: struct_name(context, default_name(context))

  @spec struct_name(t, String.t()) :: String.t()
  def struct_name(context, name) do
    "#{context.namespace}.Model.#{name}"
  end

  @spec typespec(t) :: String.t()
  def typespec(context), do: typespec(context, default_name(context))

  @spec typespec(t, String.t()) :: String.t()
  def typespec(context, name) do
    "#{context.namespace}.Model.#{name}.t"
  end

  defp default_name(context) do
    Macro.camelize("#{context.model.name}_#{context.property}")
  end

end