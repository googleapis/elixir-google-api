# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule Gax.DeserializerTest do
  use ExUnit.Case

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
