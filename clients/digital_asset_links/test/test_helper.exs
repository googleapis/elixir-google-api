ExUnit.start()

defmodule GoogleApi.DigitalAssetLinks.V1.TestHelper do

  defmacro __using__(opts) do
    quote do
      use ExUnit.Case, unquote(opts)
      import GoogleApi.DigitalAssetLinks.V1.TestHelper
    end
  end

  def for_scope(scopes) when is_list(scopes), do: for_scope(Enum.join(scopes, " "))
  def for_scope(scope) do
    {:ok, token} = Goth.Token.for_scope(scope)
    token.token
  end

end
