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
          :property => String.t(),
          :base_path => String.t()
        }

  defstruct namespace: "Default Namespace", property: nil, base_path: ""

  @doc """
  Return the default struct name for this context.
  """
  @spec struct_name(t) :: String.t()
  def struct_name(context), do: struct_name(context, default_name(context))

  @doc """
  Return the struct name for this context with a specific model name
  """
  @spec struct_name(t, String.t()) :: String.t()
  def struct_name(context, name) do
    "#{context.namespace}.Model.#{name}"
  end

  @doc """
  Return the default typespec for this context.
  """
  @spec typespec(t) :: String.t()
  def typespec(context), do: typespec(context, default_name(context))

  @doc """
  Return the typespec for this context with a specific model name
  """
  @spec typespec(t, String.t()) :: String.t()
  def typespec(context, name) do
    "#{context.namespace}.Model.#{name}.t"
  end

  defp default_name(%{property: nil}), do: "Unknown"

  defp default_name(context) do
    Macro.camelize(context.property)
  end

  @doc """
  Returns a default ResourceContext
  """
  @spec default() :: t
  def default() do
    %__MODULE__{
      namespace: "Default.Namespace",
      property: "DefaultProperty"
    }
  end

  @doc """
  Returns an empty ResourceContext
  """
  @spec empty() :: t
  def empty() do
    %__MODULE__{
      namespace: "",
      property: ""
    }
  end

  @doc """
  Returns a new ResourceContext under a new property
  """
  @spec with_property(t, String.t()) :: t
  def with_property(context, property) do
    Map.update!(context, :property, fn prop -> "#{prop}#{Macro.camelize(property)}" end)
  end

  @doc """
  Returns a new ResourceContext with a new namespace
  """
  @spec with_namespace(t, String.t()) :: t
  def with_namespace(context, namespace) do
    Map.put(context, :namespace, namespace)
  end

  @doc """
  Returns a new ResourceContext with appended base path
  """
  def with_base_path(context, base_path) do
    Map.put(context, :base_path, path(context, base_path))
  end

  @doc """
  Return a resource name given the provided context
  """
  @spec name(t, String.t()) :: String.t()
  def name(context, name) do
    "#{context.property}#{Macro.camelize(name)}"
  end

  @doc """
  Return a full endpoint path given the provided context
  """
  def path(%{base_path: nil}, path_suffix), do: path_suffix

  def path(%{base_path: base_path}, path_suffix), do: Path.join([base_path, path_suffix])
end
