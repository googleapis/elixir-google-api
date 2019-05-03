defmodule GoogleApis.Generator.ElixirGenerator.Parameter do
  @moduledoc """
  A parameter is an argument to an endpoint.
  """

  @type t :: %__MODULE__{
    :name => String.t(),
    :description => String.t(),
    :typespec => String.t(),
    :location => String.t()
  }

  defstruct [:name, :description, :typespec, :location]
end