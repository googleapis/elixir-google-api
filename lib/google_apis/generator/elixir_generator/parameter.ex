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

defmodule GoogleApis.Generator.ElixirGenerator.Parameter do
  @moduledoc """
  A parameter is an argument to an endpoint.
  """

  @type t :: %__MODULE__{
          :name => String.t(),
          :variable_name => String.t(),
          :description => String.t(),
          :type => Type.t(),
          :location => String.t(),
          :is_path_trailer => boolean()
        }

  defstruct [:name, :variable_name, :description, :type, :location, :is_path_trailer]

  alias GoogleApi.Discovery.V1.Model.{JsonSchema, RestMethod}
  alias GoogleApis.Generator.ElixirGenerator.{ResourceContext, Type}

  @doc """
  Parse a RestMethod's parameters and split into required and optional
  parameters.
  """
  @spec from_discovery_method(RestMethod.t()) :: {list(t), list(t)}
  def from_discovery_method(method), do: from_discovery_method(method, ResourceContext.default())

  @spec from_discovery_method(RestMethod.t(), ResourceContext.t()) :: {list(t), list(t)}
  def from_discovery_method(%RestMethod{parameters: nil, request: nil}, _context), do: {[], []}

  def from_discovery_method(%RestMethod{parameters: nil, request: request}, context),
    do: {[], [body_param(request, context)]}

  def from_discovery_method(
        %RestMethod{parameters: parameters, parameterOrder: order, request: request, path: path},
        context
      ) do
    {required, optional} =
      parameters
      |> Enum.split_with(fn {_name, schema} ->
        schema.required
      end)

    required_by_name =
      Enum.reduce(required, %{}, fn {name, schema}, acc ->
        Map.put(acc, name, from_json_schema(name, schema, context, path))
      end)

    required = Enum.map(order || [], fn name -> required_by_name[name] end)

    optional =
      Enum.map(optional, fn {name, schema} -> from_json_schema(name, schema, context) end)

    optional =
      case request do
        nil -> optional
        _ -> add_body_param(optional, request, context)
      end

    {required, optional}
  end

  defp add_body_param(params, request, context) do
    List.insert_at(params, -1, body_param(request, context))
  end

  defp body_param(%{parameterName: nil} = request, context) do
    %__MODULE__{
      name: "body",
      variable_name: "body",
      description: nil,
      type: Type.from_schema(request, context),
      location: "body",
      is_path_trailer: false
    }
  end

  defp body_param(%{parameterName: name} = request, context) do
    %__MODULE__{
      name: name,
      variable_name: "body",
      description: nil,
      type: Type.from_schema(request, context),
      location: "body",
      is_path_trailer: false
    }
  end

  @doc """
  Build a Parameter from the parameter name and JsonSchema

  If a parameter is the last one in a path, the generated code will *not*
  URI.encode() the path separator (`/`) character in the parameter.

  However, the Storage API requires the `object` parameter to have path
  separator characters encoded, even though it is the last parameter in a URL
  path.
  """
  @spec from_json_schema(String.t(), JsonSchema.t(), ResourceContext.t()) :: t
  def from_json_schema(name, schema, context, path \\ "")

  def from_json_schema(
        name,
        schema,
        %ResourceContext{namespace: "GoogleApi.Storage.V1"} = context,
        _path
      )
      when name in ["object", "destinationObject"] do
    %__MODULE__{
      name: name,
      variable_name: build_variable_name(name),
      description: schema.description,
      type: Type.from_schema(schema, context),
      location: schema.location,
      is_path_trailer: false
    }
  end

  def from_json_schema(name, schema, context, path) do
    %__MODULE__{
      name: name,
      variable_name: build_variable_name(name),
      description: schema.description,
      type: Type.from_schema(schema, context),
      location: schema.location,
      is_path_trailer: schema.location == "path" && String.ends_with?(path, "{#{name}}")
    }
  end

  defp build_variable_name(name) do
    name
    |> Macro.underscore()
    |> String.replace("-", "_")
  end
end
