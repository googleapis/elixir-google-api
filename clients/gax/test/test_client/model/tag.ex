defmodule TestClient.Model.Tag do
  use GoogleApi.Gax.ModelBase

  field(:id)
  field(:name)
end

defimpl Poison.Decoder, for: TestClient.Model.Tag do
  def decode(value, options) do
    TestClient.Model.Tag.decode(value, options)
  end
end
