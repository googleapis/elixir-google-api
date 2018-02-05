# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule DecodeTest do
  use ExUnit.Case
  alias GoogleApi.TestClient.V1.RequestBuilder
  alias GoogleApi.TestClient.V1.Model.PerformanceReport

  test "handles other 200 responses" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"foo\": \"bar\"}"
    }
    assert {:ok, %{"foo" => "bar"}} = RequestBuilder.decode(env)
  end

  test "handles other 200 responses without body" do
    env = %Tesla.Env{
      status: 200,
      body: nil
    }
    assert {:ok, nil} = RequestBuilder.decode(env)
  end

  test "handles other 200 responses with struct" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"calloutStatusRate\": []}"
    }
    assert {:ok, report} = RequestBuilder.decode(env, %PerformanceReport{})
    assert %PerformanceReport{} = report
  end

  test "handles other 200 responses with data wrapped struct" do
    env = %Tesla.Env{
      status: 200,
      body: "{\"data\": {\"calloutStatusRate\": []}}"
    }
    assert {:ok, report} = RequestBuilder.decode(env, %PerformanceReport{}, dataWrapped: true)
    assert %PerformanceReport{} = report
  end

  test "handles other 2xx responses" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"foo\": \"bar\"}"
    }
    assert {:ok, %{"foo" => "bar"}} = RequestBuilder.decode(env)
  end

  test "handles other 2xx responses without body" do
    env = %Tesla.Env{
      status: 204,
      body: nil
    }
    assert {:ok, nil} = RequestBuilder.decode(env)
  end

  test "handles other 2xx responses with struct" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"calloutStatusRate\": []}"
    }
    assert {:ok, report} = RequestBuilder.decode(env, %PerformanceReport{})
    assert %PerformanceReport{} = report
  end

  test "handles other 2xx responses with data wrapped struct" do
    env = %Tesla.Env{
      status: 204,
      body: "{\"data\": {\"calloutStatusRate\": []}}"
    }
    assert {:ok, report} = RequestBuilder.decode(env, %PerformanceReport{}, dataWrapped: true)
    assert %PerformanceReport{} = report
  end

  test "handles error status" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }
    assert {:error, ^env} = RequestBuilder.decode(env)
  end

  test "handles error status with struct" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }
    assert {:error, ^env} = RequestBuilder.decode(env, %PerformanceReport{})
  end

  test "handles error status with data wrapped struct" do
    env = %Tesla.Env{
      status: 500,
      body: "{\"error\": \"some message\"}"
    }
    assert {:error, ^env} = RequestBuilder.decode(env, %PerformanceReport{}, dataWrapped: true)
  end
end
