defmodule TestClient.Model.Category do
  use GoogleApi.Gax.ModelBase

  field :id
  field :name
end

defimpl Poison.Decoder, for: TestClient.Model.Category do
  def decode(value, options) do
    TestClient.Model.Category.decode(value, options)
  end
end