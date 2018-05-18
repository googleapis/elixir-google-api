defmodule Gax.DeserializerTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Deserializer

  @pet_json """
  {
    "id": 4375893,
    "category": {
      "id": 0,
      "name": "household"
    },
    "name": "Fido",
    "tags": [
      {
        "id": 0,
        "name": "string"
      }
    ],
    "status": "available"
  }
  """

  test "keeps plain attributes" do
    assert {:ok, %TestClient.Model.Pet{} = pet} = Poison.decode(@pet_json, as: %TestClient.Model.Pet{})
    assert pet.id == 4375893
    assert pet.name == "Fido"
  end

  test "deserializes a has one relationship" do
    assert {:ok, %TestClient.Model.Pet{} = pet} = Poison.decode(@pet_json, as: %TestClient.Model.Pet{})
    assert %TestClient.Model.Category{} = pet.category
    assert 0 == pet.category.id
    assert "household" == pet.category.name
  end

  test "deserializes a has many relationship" do
    assert {:ok, %TestClient.Model.Pet{} = pet} = Poison.decode(@pet_json, as: %TestClient.Model.Pet{})
    assert Enum.all?(pet.tags, fn tag ->
      assert %TestClient.Model.Tag{} = tag
    end)
  end
end
