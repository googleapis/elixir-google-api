defmodule GoogleApi.Gax.ApiBase do
  defmacro __using__(_opts) do
    quote do
      import unquote(__MODULE__)
    end
  end
end
