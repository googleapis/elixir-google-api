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

  alias GoogleApi.TestClient.V1.Model.{Container, ContainerObjectVal}
  alias GoogleApi.TestClient.V1.Connection
  alias GoogleApi.TestClient.V1.Api.Objects, as: Api

  import Tesla.Mock

  @container_json Poison.encode!(%Container{
                    arrayRefVal: [
                      %Container{
                        arrayVal: ["foo", "bar"]
                      }
                    ],
                    arrayVal: ["qwer", "asdf"],
                    booleanVal: true,
                    numberVal: 1.234,
                    objectVal: %ContainerObjectVal{
                      field1: false
                    },
                    stringVal: "description"
                  })

  test "basic request" do
    mock(fn %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/1234"} ->
      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, obj} = Api.objects_get(conn, "bucket-1", 1234)

    assert %Container{} = obj
  end

  test "simple query param" do
    mock(fn %{
              method: :get,
              url: "http://localhost:8080/test/v1/b/bucket-1/o/1234",
              query: [alt: "json"]
            } ->
      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, obj} = Api.objects_get(conn, "bucket-1", 1234, alt: "json")

    assert %Container{} = obj
  end

  test "list query param" do
    mock(fn %{
              method: :get,
              url: "http://localhost:8080/test/v1/b/bucket-1/o/1234",
              query: [category: "foo", category: "bar"]
            } ->
      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, obj} = Api.objects_get(conn, "bucket-1", 1234, category: ["foo", "bar"])

    assert %Container{} = obj
  end

  test "no response" do
    mock(fn %{method: :delete, url: "http://localhost:8080/test/v1/b/bucket-1/o/object-1"} ->
      %Tesla.Env{status: 200, body: ""}
    end)

    conn = Connection.new()
    {:ok, resp} = Api.objects_delete(conn, "bucket-1", "object-1")

    assert %Tesla.Env{status: 200, body: ""} = resp
  end

  test "multipart file upload" do
    container = %Container{stringVal: "foo"}
    upload_file = __ENV__.file

    mock(fn %{method: :post, url: "http://localhost:8080/upload/v1/b/bucket-1/o", body: body} ->
      assert %Tesla.Multipart{parts: [metadata, file]} = body
      assert Poison.encode!(container) == metadata.body
      assert ["Content-Type": "application/json"] == metadata.headers

      assert %File.Stream{} = file.body

      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, obj} = Api.objects_insert_simple(conn, "bucket-1", "multipart", container, upload_file)

    assert %Container{} = obj
  end

  test "integer in path" do
    mock(fn %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/1234"} ->
      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, obj} = Api.objects_get(conn, "bucket-1", 1234)

    assert %Container{} = obj
  end

  test "path reserved expansion" do
    mock(fn %{method: :post, url: "http://localhost:8080/test/v1/b/bucket-1/o:batchWrite"} ->
      %Tesla.Env{status: 200, body: ""}
    end)

    container = %Container{
      stringVal: "some value"
    }

    conn = Connection.new()
    {:ok, resp} = Api.objects_batch_write(conn, "b/bucket-1", body: container)

    assert %Tesla.Env{status: 200, body: ""} = resp
  end

  test "skip decode" do
    mock(fn %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/1234"} ->
      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, env} = Api.objects_get(conn, "bucket-1", 1234, [], decode: false)

    assert %Tesla.Env{} = env
  end

  test "url path encoding" do
    mock(fn %{method: :get, url: "http://localhost:8080/test/v1/b/bucket-1/o/some%2Fpath%2FFile%20with%20sp%C3%A4ces.zip"} ->
      %Tesla.Env{status: 200, body: @container_json}
    end)

    conn = Connection.new()
    {:ok, env} = Api.objects_get(conn, "bucket-1", "some/path/File with späces.zip", [], decode: false)

    assert %Tesla.Env{} = env
  end
end
