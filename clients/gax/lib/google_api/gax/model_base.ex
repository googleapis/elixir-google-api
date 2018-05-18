defmodule GoogleApi.Gax.ModelBase do

  defmacro __using__(_opts) do
    quote do
      IO.inspect "importing #{unquote(__MODULE__)}"
      import unquote(__MODULE__)

      @fields []

      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      IO.inspect @fields
      defstruct Keyword.keys(@fields)
    end
  end

  defmacro field(field_name, opts \\ []) do
    quote do
      @fields [{unquote(field_name), unquote(opts)} | @fields]
    end
  end

  def decode(value, options) do
    IO.inspect "decode in #{__MODULE__}"
    value
  end

  def encode(value, options) do
    IO.inspect "encode in #{__MODULE__}"
    value
  end

end