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

    assert {:ok, %{"foo" => "bar"}} = Response.decode({:ok, env})
  end

  test "handles other 200 responses without body" do
    env = %Tesla.Env{
      status: 200,
      body: nil
    }

    assert {:ok, nil} = Response.decode({:ok, env})
  end

  test "handles other 200 responses with struct" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"calloutStatusRate\": []}"
    }

    assert {:ok, report} = Response.decode({:ok, env}, struct: %Pet{})
    assert %Pet{} = report
  end

  test "handles other 200 responses with data wrapped struct" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"data\": {\"calloutStatusRate\": []}}"
    }

    assert {:ok, report} = Response.decode({:ok, env}, struct: %Pet{}, data_wrapped: true)
    assert %Pet{} = report
  end

  test "handles other 2xx responses" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"foo\": \"bar\"}"
    }

    assert {:ok, %{"foo" => "bar"}} = Response.decode({:ok, env})
  end

  test "handles other 2xx responses without body" do
    env = %Tesla.Env{
      status: 204,
      body: nil
    }

    assert {:ok, nil} = Response.decode({:ok, env})
  end

  test "handles other 2xx responses with struct" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"calloutStatusRate\": []}"
    }

    assert {:ok, report} = Response.decode({:ok, env}, struct: %Pet{})
    assert %Pet{} = report
  end

  test "handles other 2xx responses with data wrapped struct" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"data\": {\"calloutStatusRate\": []}}"
    }

    assert {:ok, report} = Response.decode({:ok, env}, struct: %Pet{}, data_wrapped: true)
    assert %Pet{} = report
  end

  test "handles error status" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }

    assert {:error, ^env} = Response.decode({:ok, env})
  end

  test "handles error status with struct" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }

    assert {:error, ^env} = Response.decode({:ok, env}, struct: %Pet{})
  end

  test "handles error status with data wrapped struct" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }

    assert {:error, ^env} = Response.decode({:ok, env}, struct: %Pet{}, data_wrapped: true)
  end

  test "returns raw response" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"foo\": \"bar\"}"
    }

    assert {:ok, ^env} = Response.decode({:ok, env}, decode: false)
  end
end
