defmodule GoogleApi.Gax.Serializer do
  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)
    end
  end

  def encode(value, options) do
    value
    |> Map.from_struct()
    |> Enum.filter(fn {_k, v} -> v != nil end)
    |> Enum.into(%{})
    |> Poison.Encoder.encode(options)
  end
end
