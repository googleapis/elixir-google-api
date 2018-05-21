defmodule GoogleApi.Gax.Model.DataWrapper do
  defstruct [:data]

  def decode(value, options) do
    struct = options[:struct]
    Poison.Decode.decode(value.data, as: struct)
  end
end

defimpl Poison.Decoder, for: GoogleApi.Gax.Model.DataWrapper do
  def decode(value, options) do
    GoogleApi.Gax.Model.DataWrapper.decode(value, options)
  end
end
