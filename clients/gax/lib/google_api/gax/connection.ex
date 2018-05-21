defmodule GoogleApi.Gax.Connection do
  def execute(connection, request) do
    # FIXME
    Tesla.request(connection, request)
  end
end
