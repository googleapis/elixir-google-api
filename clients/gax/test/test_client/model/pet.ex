defmodule TestClient.Model.Pet do
  use GoogleApi.Gax.ModelBase

  field(:id)
  field(:category, as: TestClient.Model.Category)
  field(:name)
  field(:tags, as: TestClient.Model.Tag, type: :list)
  field(:status)
end

defimpl Poison.Decoder, for: TestClient.Model.Pet do
  def decode(value, options) do
    TestClient.Model.Pet.decode(value, options)
  end
end
