defmodule GoogleApis.Generator.ElixirGenerator.Property do
  @moduledoc """
  A property is a field of a resource object
  """

  @type t :: %__MODULE__ {
    :name => String.t(),
    :description => String.t(),
    :type => String.t(),
    :struct => String.t(),
    :typespec => String.t(),
    :required => boolean(),
    :default => any()
  }

  defstruct [:name, :description, :type, :struct, :typespec, :required, :default]

  @doc """
  Returns a pretty string representing this type. Used primarily for building
  documentation for a struct.
  """
  @spec full_description(t) :: String.t()
  def full_description(property) do
    "#{property.name} (#{property.typespec}): #{property.description}"
  end
end