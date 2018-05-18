defmodule GoogleApi.Gax.ModelBase do

  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)

      @fields []

      @before_compile unquote(__MODULE__)
    end
  end

  defmacro __before_compile__(_env) do
    quote do
      defstruct Keyword.keys(@fields)

      def decode(value, _options) do
        Enum.reduce(@fields, value, fn {field_name, opts}, v ->
          if struct = Keyword.get(opts, :as) do
            Map.update!(v, field_name, fn current ->
              type = Keyword.get(opts, :type, :primitive)
              struct = Keyword.get(opts, :as)
              GoogleApi.Gax.ModelBase.decode(current, type, struct)
            end)
          else
            v
          end
        end)
      end

      def encode(value, options) do
        value
      end
    end
  end

  defmacro field(field_name, opts \\ []) do
    quote do
      @fields [{unquote(field_name), unquote(opts)} | @fields]
    end
  end

  def decode(value, _, nil) do
    value
  end

  def decode(value, :list, module) do
    Poison.Decode.decode(value, as: [struct(module)])
  end

  def decode(value, _, module) do
    Poison.Decode.decode(value, as: struct(module))
  end

end