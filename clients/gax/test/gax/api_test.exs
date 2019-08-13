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

defmodule Gax.ApiTest do
  use ExUnit.Case, async: true

  import Tesla.Mock

  @pets_json """
  {
    "pets": [
      {"id": "pet1", "category": {"id": 1, "name": "Dogs"}, "name": "Fido", "tags": [], "status": "available"}
    ]
  }
  """

  test "basic request" do
    elixir_version = System.version()
    gax_version = Application.spec(:google_gax, :vsn)
    api_client = "gl-elixir/#{elixir_version} gax/#{gax_version} gdcl/1.2.3"

    mock(fn %{
              method: :get,
              url: "https://example.com/v1/stores/store-1/pets",
              headers: [{"x-goog-api-client", ^api_client}]
            } ->
      %Tesla.Env{status: 200, body: @pets_json}
    end)

    conn = TestClient.Connection.new()
    {:ok, pets} = TestClient.Api.Pets.pets_list_by_store(conn, "store-1")

    assert %TestClient.Model.Pets{} = pets
    assert 1 == Enum.count(pets.pets)

    assert Enum.all?(pets.pets, fn pet ->
             assert %TestClient.Model.Pet{} = pet
           end)
  end

  test "simple query param" do
    mock(fn %{
              method: :get,
              url: "https://example.com/v1/stores/store-1/pets",
              query: [prettyPrint: true]
            } ->
      %Tesla.Env{status: 200, body: @pets_json}
    end)

    conn = TestClient.Connection.new()
    {:ok, pets} = TestClient.Api.Pets.pets_list_by_store(conn, "store-1", prettyPrint: true)

    assert %TestClient.Model.Pets{} = pets
    assert 1 == Enum.count(pets.pets)

    assert Enum.all?(pets.pets, fn pet ->
             assert %TestClient.Model.Pet{} = pet
           end)
  end

  @tag :skip
  test "list query param" do
    mock(fn %{
              method: :get,
              url: "https://example.com/v1/stores/store-1/pets",
              query: [tags: "dog", tags: "cat"]
            } ->
      %Tesla.Env{status: 200, body: @pets_json}
    end)

    conn = TestClient.Connection.new()
    {:ok, pets} = TestClient.Api.Pets.pets_list_by_store(conn, "store-1", tags: ["dog", "cat"])

    assert %TestClient.Model.Pets{} = pets
    assert 1 == Enum.count(pets.pets)

    assert Enum.all?(pets.pets, fn pet ->
             assert %TestClient.Model.Pet{} = pet
           end)
  end
end
