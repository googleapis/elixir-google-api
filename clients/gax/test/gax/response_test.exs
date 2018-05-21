defmodule Gax.ResponseTest do
  use ExUnit.Case
  doctest GoogleApi.Gax.Response
  alias GoogleApi.Gax.Response
  alias TestClient.Model.Pet

  test "handles other 200 responses" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"foo\": \"bar\"}"
    }
    assert {:ok, %{"foo" => "bar"}} = Response.decode(env)
  end

  test "handles other 200 responses without body" do
    env = %Tesla.Env{
      status: 200,
      body: nil
    }
    assert {:ok, nil} = Response.decode(env)
  end

  test "handles other 200 responses with struct" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"calloutStatusRate\": []}"
    }
    assert {:ok, report} = Response.decode(env, struct: %Pet{})
    assert %Pet{} = report
  end

  test "handles other 200 responses with data wrapped struct" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"data\": {\"calloutStatusRate\": []}}"
    }
    assert {:ok, report} = Response.decode(env, struct: %Pet{}, data_wrapped: true)
    assert %Pet{} = report
  end

  test "handles other 2xx responses" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"foo\": \"bar\"}"
    }
    assert {:ok, %{"foo" => "bar"}} = Response.decode(env)
  end

  test "handles other 2xx responses without body" do
    env = %Tesla.Env{
      status: 204,
      body: nil
    }
    assert {:ok, nil} = Response.decode(env)
  end

  test "handles other 2xx responses with struct" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"calloutStatusRate\": []}"
    }
    assert {:ok, report} = Response.decode(env, struct: %Pet{})
    assert %Pet{} = report
  end

  test "handles other 2xx responses with data wrapped struct" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"data\": {\"calloutStatusRate\": []}}"
    }
    assert {:ok, report} = Response.decode(env, struct: %Pet{}, data_wrapped: true)
    assert %Pet{} = report
  end

  test "handles error status" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }
    assert {:error, ^env} = Response.decode(env)
  end

  test "handles error status with struct" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }
    assert {:error, ^env} = Response.decode(env, struct: %Pet{})
  end

  test "handles error status with data wrapped struct" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }
    assert {:error, ^env} = Response.decode(env, struct: %Pet{}, data_wrapped: true)
  end
end