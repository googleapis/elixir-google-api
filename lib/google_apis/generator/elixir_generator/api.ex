defmodule GoogleApis.Generator.ElixirGenerator.Api do
  @moduledoc """
  An Api represents a collection of endpoints.
  """

  @type t :: %__MODULE__{
    :name => String.t(),
    :description => String.t(),
    :endpoints => list(Endpoint.t())
  }

  defstruct [:name, :description, :endpoints]

  @doc """
  Returns the name of the file that should be generated.
  """
  @spec filename(t) :: String.t()
  def filename(api) do
    "#{Macro.underscore(api.name)}.ex"
  end
end