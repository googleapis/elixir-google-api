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

defmodule Gax.RequestTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Request
  alias GoogleApi.Gax.Request

  test "creates empty request" do
    request = Request.new()
    assert %Request{} = request
  end

  test "sets request method" do
    request =
      Request.new()
      |> Request.method(:post)

    assert :post == request.method
  end

  test "sets library version" do
    request =
      Request.new()
      |> Request.library_version("1.2.3")

    assert "1.2.3" == request.library_version
  end

  test "sets url" do
    request =
      Request.new()
      |> Request.url("/path/to/some/file")

    assert "/path/to/some/file" == request.url
  end

  test "sets url with replacement" do
    request =
      Request.new()
      |> Request.url("/upload/storage/v1/b/{bucket}/o", %{
        "bucket" => URI.encode_www_form("foo/bar")
      })

    assert "/upload/storage/v1/b/foo%2Fbar/o" == request.url
  end

  test "sets url with allowed expansion" do
    request =
      Request.new()
      |> Request.url("/{+name}:batchInsert", %{"name" => URI.encode_www_form("foo/bar")})

    assert "/foo/bar:batchInsert" = request.url
  end

  test "adds parameter" do
    request =
      Request.new()
      |> Request.add_param(:query, :foo, "asdf")
      |> Request.add_param(:query, :bar, "qwer")

    assert [foo: "asdf", bar: "qwer"] == request.query
  end

  test "adds optional parameters empty" do
    optional_params = %{
      :foo => :query,
      :bar => :body
    }

    input = []

    request =
      Request.new()
      |> Request.add_optional_params(optional_params, input)

    assert [] == request.query
    assert [] == request.body
  end

  test "adds optional parameters" do
    optional_params = %{
      :foo => :query,
      :bar => :body
    }

    input = [
      foo: "asdf",
      bar: "qwer"
    ]

    request =
      Request.new()
      |> Request.add_optional_params(optional_params, input)

    assert [foo: "asdf"] == request.query
    assert [bar: "qwer"] == request.body
  end

  test "adds file by filename" do
    request =
      Request.new()
      |> Request.add_param(:file, :"foo.json", "/path/to/file")

    assert [{:"foo.json", "/path/to/file"}] == request.file
  end

  test "list of query params" do
    request =
      Request.new()
      |> Request.add_param(:query, :foo, ["bar1", "bar2"])

    assert [foo: "bar1", foo: "bar2"] == request.query
  end

  test "simple query params" do
    request =
      Request.new()
      |> Request.add_param(:query, :foo, "bar1")

    assert [foo: "bar1"] == request.query
  end
end
