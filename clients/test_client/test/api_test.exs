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

  alias GoogleApi.TestClient.V1.Model.{Container,ContainerObjectVal}

  import Tesla.Mock

  @container_json Poison.encode!(
    %Container{
      arrayRefVal: %Container{
        arrayVal: ["foo", "bar"]
      },
      arrayVal: ["qwer", "asdf"],
      booleanVal: true,
      numberVal: 1.234,
      objectVal: %ContainerObjectVal{
        field1: false
      },
      stringVal: "description"
    }
  )

  test "basic request" do
    mock fn
      %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/1234"} ->
        %Tesla.Env{status: 200, body: @container_json}
    end

    conn = GoogleApi.TestClient.V1.Connection.new
    {:ok, obj} = GoogleApi.TestClient.V1.Api.Objects.objects_get(conn, "bucket-1", 1234)

    assert %Container{} = obj
  end

  test "simple query param" do
    mock fn
      %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/1234", query: [alt: "json"]} ->
        %Tesla.Env{status: 200, body: @container_json}
    end

    conn = GoogleApi.TestClient.V1.Connection.new
    {:ok, obj} = GoogleApi.TestClient.V1.Api.Objects.objects_get(conn, "bucket-1", 1234, [
      alt: "json"
    ])

    assert %Container{} = obj
  end

  test "list query param" do
    mock fn
      %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/1234", query: [category: "foo", category: "bar"]} ->
        %Tesla.Env{status: 200, body: @container_json}
    end

    conn = GoogleApi.TestClient.V1.Connection.new
    {:ok, obj} = GoogleApi.TestClient.V1.Api.Objects.objects_get(conn, "bucket-1", 1234, [
      category: ["foo", "bar"]
    ])

    assert %Container{} = obj
  end

  test "no response" do
    # mock fn
    #   %{method: :delete, url: "https://example.com/v1/stores/store-1/pets/pet-1"} ->
    #     %Tesla.Env{status: 200, body: ""}
    # end

    # conn = TestClient.Connection.new
    # {:ok, resp} = TestClient.Api.Pets.pet_delete(conn, "store-1", "pet-1")

    # assert %Tesla.Env{status: 200, body: ""} = resp
  end

  test "multipart file upload" do
  end

  test "integer in path" do
  end
end