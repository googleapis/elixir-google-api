defmodule GoogleApi.Gax.Model.DataWrapper do
  defstruct [:data]
end

defimpl Poison.Decoder, for: GoogleApi.Gax.Internal.DataWrapper do
  import GoogleApi.Gax.Deserializer

  def decode(value, options) do
    # deserialize(value, :data, :struct, options[:struct], options)
    value
  end
end
