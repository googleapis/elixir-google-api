defmodule Gax.RequestTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Request
  alias GoogleApi.Gax.Request

  test "creates empty request" do
    request = Request.new
    assert %Request{} = request
  end

  test "sets request method" do
    request = Request.new
    |> Request.method(:post)

    assert :post == request.method
  end

  test "sets url" do
    request = Request.new
    |> Request.url("/path/to/some/file")

    assert "/path/to/some/file" == request.url
  end

  test "sets url with replacement" do
    request = Request.new
    |> Request.url("/storage/v1/b/{bucket}/o", %{
      "bucket" => URI.encode_www_form("foo/bar")
    })

    assert "/storage/v1/b/foo%2Fbar/o" == request.url
  end

  test "sets url with allowed expansion" do
    request = Request.new
    |> Request.url("/{+name}:batchInsert", %{"name" => URI.encode_www_form("foo/bar")})

    assert "/foo/bar:batchInsert" = request.url
  end

  test "adds parameter" do
    request = Request.new
    |> Request.add_param(:query, :foo, 'asdf')
    |> Request.add_param(:query, :bar, 'qwer')

    assert [foo: 'asdf', bar: 'qwer'] == request.query
  end

  test "adds optional parameters empty" do
    optional_params = %{
      :foo => :query,
      :bar => :body
    }

    input = []

    request = Request.new
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
      foo: 'asdf',
      bar: 'qwer'
    ]

    request = Request.new
    |> Request.add_optional_params(optional_params, input)

    assert [foo: 'asdf'] == request.query
    assert [bar: 'qwer'] == request.body
  end

  test "adds file by filename" do
    request = Request.new
    |> Request.add_param(:file, :"foo.json", "/path/to/file")

    assert [{:"foo.json", "/path/to/file"}] == request.file
  end
end