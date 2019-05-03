defmodule GoogleApis.Generator.ElixirGenerator.Model do
  @moduledoc """
  A model is a resource type that is used by the API.
  """

  @type t :: %__MODULE__ {
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