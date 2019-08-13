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

defmodule Gax.ConnectionTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Connection

  alias GoogleApi.Gax.{Connection, Request}

  test "builds a basic request with a query" do
    request =
      Request.new()
      |> Request.add_param(:query, :foo, "bar")
      |> Connection.build_request()

    assert [foo: "bar"] == Keyword.get(request, :query)
  end

  test "builds a basic request with a url" do
    request =
      Request.new()
      |> Request.url("/foo/bar")
      |> Connection.build_request()

    assert "/foo/bar" == Keyword.get(request, :url)
  end

  test "builds a basic request with a body" do
    request =
      Request.new()
      |> Request.add_param(:body, :foo, "bar")
      |> Request.add_param(:body, :asdf, "qwer")
      |> Connection.build_request()

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 2 == length(body.parts)
  end

  test "builds a request with a single file" do
    request =
      Request.new()
      |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
      |> Connection.build_request()

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 1 == length(body.parts)
  end

  test "builds a request with multiple files" do
    request =
      Request.new()
      |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
      |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
      |> Connection.build_request()

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 2 == length(body.parts)
  end

  test "builds a request with body and files" do
    request =
      Request.new()
      |> Request.add_param(:body, :foo, "bar")
      |> Request.add_param(:body, :asdf, "qwer")
      |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
      |> Request.add_param(:file, Path.basename(__ENV__.file), __ENV__.file)
      |> Connection.build_request()

    body = %Tesla.Multipart{} = Keyword.get(request, :body)
    assert 4 == length(body.parts)
  end

  test "creates api client header without library version" do
    request =
      Request.new()
      |> Connection.build_request()

    elixir_version = System.version()
    gax_version = Application.spec(:google_gax, :vsn)

    assert [{"x-goog-api-client", "gl-elixir/#{elixir_version} gax/#{gax_version} gdcl/"}] ==
             Keyword.get(request, :headers)
  end

  test "creates api client header with library version" do
    request =
      Request.new()
      |> Request.library_version("1.2.3")
      |> Connection.build_request()

    elixir_version = System.version()
    gax_version = Application.spec(:google_gax, :vsn)

    assert [{"x-goog-api-client", "gl-elixir/#{elixir_version} gax/#{gax_version} gdcl/1.2.3"}] ==
             Keyword.get(request, :headers)
  end

  test "Appends existing api client header" do
    request =
      Request.new()
      |> Map.put(:header, [{"user-agent", "hello"}, {"x-goog-api-client", "whoops/3.2.1"}])
      |> Connection.build_request()

    elixir_version = System.version()
    gax_version = Application.spec(:google_gax, :vsn)

    assert [
             {"x-goog-api-client",
              "gl-elixir/#{elixir_version} gax/#{gax_version} gdcl/ whoops/3.2.1"},
             {"user-agent", "hello"}
           ] == Keyword.get(request, :headers)
  end

  test "Appends multiple existing api client headers" do
    request =
      Request.new()
      |> Map.put(:header, [
        {"user-agent", "hello"},
        {"X-Goog-Api-Client", "foo/4.3.2"},
        {"x-goog-api-client", "whoops/3.2.1"}
      ])
      |> Request.library_version("0.1.1")
      |> Connection.build_request()

    elixir_version = System.version()
    gax_version = Application.spec(:google_gax, :vsn)

    assert [
             {"x-goog-api-client",
              "gl-elixir/#{elixir_version} gax/#{gax_version} gdcl/0.1.1 foo/4.3.2 whoops/3.2.1"},
             {"user-agent", "hello"}
           ] == Keyword.get(request, :headers)
  end
end
