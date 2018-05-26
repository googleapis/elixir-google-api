# Copyright 2018 Google Inc.
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

defmodule Gax.ConnectionTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Connection

  alias GoogleApi.Gax.{Connection, Request}

  test "builds a basic request with a query" do
    request = Request.new
    |> Request.add_param(:query, :foo, "bar")
    |> Connection.build_request

    assert [foo: "bar"] == Keyword.get(request, :query)
  end

  test "builds a basic request with a url" do
    request = Request.new
    |> Request.url("/foo/bar")
    |> Connection.build_request

    assert "/foo/bar" == Keyword.get(request, :url)
  end

  test "builds a basic request with a body" do
    request = Request.new
    |> Request.add_param(:body, :foo, "bar")
    |> Request.add_param(:body, :asdf, "qwer")
    |> Connection.build_request

    assert [foo: "bar", asdf: "qwer"] == Keyword.get(request, :body)
  end

  test "builds a request with a single file" do
    request = Request.new
    |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
    |> Connection.build_request

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 1 == length(body.parts)
  end

  test "builds a request with multiple files" do
    request = Request.new
    |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
    |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
    |> Connection.build_request

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 2 == length(body.parts)
  end

  test "builds a request with body and files" do
    request = Request.new
    |> Request.add_param(:body, :foo, "bar")
    |> Request.add_param(:body, :asdf, "qwer")
    |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
    |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
    |> Connection.build_request

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 4 == length(body.parts)
  end

end