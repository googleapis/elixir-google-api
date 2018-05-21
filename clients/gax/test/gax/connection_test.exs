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
    assert 3 == length(body.parts)
  end

end