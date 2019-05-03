defmodule GoogleApis.Generator.ElixirGenerator.Endpoint do
  @moduledoc """
  An endpoint represents a remote URL + parameters that represents an API call
  a user can make.
  """

  alias GoogleApis.Generator.ElixirGenerator.Parameter

  @type t :: %__MODULE__{
    :name => String.t(),
    :description => String.t(),
    :typespec => String.t(),
    :required_parameters => list(Parameter.t()),
    :optional_parameters => list(Parameter.t()),
    :typespec => String.t(),
    :return => String.t(),
    :method => String.t(),
    :path => String.t()
  }

  defstruct [:name, :description, :required_parameters, :optional_parameters, :typespec, :return, :method, :path]

  def from_discovery_method(method) do
    parameters = method.parameters || []
    required_parameters =
      parameters
      |> Enum.filter(fn {name, parameter} -> parameter.required end)
      |> Enum.map(fn {name, parameter} ->
        %Parameter{
          name: name,
          description: parameter.description,
          location: parameter.location,
          typespec: "String.t"
        }
      end)
    %__MODULE__{
      name: method_name_to_endpoint_name(method.id),
      description: method.description,
      method: String.downcase(method.httpMethod),
      path: method.path,
      required_parameters: required_parameters,
      optional_parameters: [],
      typespec: "String.t",
      return: ""
    }
  end

  defp method_name_to_endpoint_name(method_name) do
    method_name
    |> String.replace(".", "_")
    |> Macro.underscore()
  end
end