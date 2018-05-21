defmodule Gax.DeserializerTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Deserializer

  @pet_json """
  {
    "id": 4375893,
    "category": {
      "id": 111,
      "name": "household"
    },
    "name": "Fido",
    "tags": [
      {
        "id": 222,
        "name": "string"
      }
    ],
    "status": "available"
  }
  """

  test "keeps plain attributes" do
    assert {:ok, %TestClient.Model.Pet{} = pet} =
             Poison.decode(@pet_json, as: %TestClient.Model.Pet{})

    assert pet.id == 4_375_893
    assert pet.name == "Fido"
  end

  test "deserializes a has one relationship" do
    assert {:ok, %TestClient.Model.Pet{} = pet} =
             Poison.decode(@pet_json, as: %TestClient.Model.Pet{})

    assert %TestClient.Model.Category{id: 111, name: "household"} = pet.category
  end

  test "deserializes a has many relationship" do
    assert {:ok, %TestClient.Model.Pet{} = pet} =
             Poison.decode(@pet_json, as: %TestClient.Model.Pet{})

    assert [%TestClient.Model.Tag{id: 222, name: "string"}] = pet.tags
  end
end
