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

defmodule GoogleApis.Generator.ElixirGenerator.Endpoint do
  @moduledoc """
  An endpoint represents a remote URL + parameters that represents an API call
  a user can make.
  """

  alias GoogleApis.Generator.ElixirGenerator.{Parameter, ResourceContext, Type}
  alias GoogleApi.Discovery.V1.Model.RestMethod

  @type t :: %__MODULE__{
          :name => String.t(),
          :description => String.t(),
          :typespec => String.t(),
          :required_parameters => list(Parameter.t()),
          :optional_parameters => list(Parameter.t()),
          :path_parameters => list(Parameter.t()),
          :typespec => String.t(),
          :return => Type.t(),
          :method => String.t(),
          :path => String.t()
        }

  defstruct [
    :name,
    :description,
    :required_parameters,
    :optional_parameters,
    :path_parameters,
    :typespec,
    :return,
    :method,
    :path
  ]

  @spec from_discovery_method(RestMethod.t(), ResourceContext.t()) :: t
  def from_discovery_method(method, context) do
    parameters = method.parameters || []

    {required_parameters, optional_parameters} = Parameter.from_discovery_method(method)

    name = method_name_to_endpoint_name(method.id)
    ret = return_type(method, context)

    %__MODULE__{
      name: name,
      description: method.description,
      method: String.downcase(method.httpMethod),
      path: method.path,
      required_parameters: required_parameters,
      optional_parameters: optional_parameters,
      path_parameters: Enum.filter(required_parameters, fn p -> p.location == "path" end),
      typespec: typespec(name, required_parameters, ret),
      return: ret
    }
  end

  defp typespec(name, params, ret) do
    param_specs = Enum.map_join(params, ", ", fn param -> param.type.typespec end)

    "#{name}(Tesla.Env.client(), #{param_specs}, keyword()) :: {:ok, #{ret.typespec}} | {:error, Tesla.Env.t()}"
  end

  defp return_type(%{response: nil}, _context), do: Type.empty()

  defp return_type(%{response: schema}, context) do
    Type.from_schema(schema, context)
  end

  defp method_name_to_endpoint_name(method_name) do
    method_name
    |> String.replace(".", "_")
    |> Macro.underscore()
  end
end
