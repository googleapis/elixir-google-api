defmodule GoogleApi.Gax.Deserializer do
  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)

      # quote do
      #   IO.inspect "writing decode/2 function"
      #   def decode(value, options) do
      #     IO.inspect "deserializer decode"
      #     apply __MODULE__, :decode, [value, options]
      #   end
      # end
    end
  end

  def decode(value, options) do
    apply __MODULE__, :decode, [value, options]
  end
end