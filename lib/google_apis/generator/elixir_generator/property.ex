defmodule GoogleApis.Generator.ElixirGenerator.Property do
  @moduledoc """
  A property is a field of a resource object
  """

  alias GoogleApis.Generator.ElixirGenerator.Type

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
end
