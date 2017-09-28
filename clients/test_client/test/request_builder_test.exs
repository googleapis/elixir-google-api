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

defmodule RequestBuilderTest do
  use ExUnit.Case
  alias GoogleApi.TestClient.V1.RequestBuilder

  test "builds request url" do
    assert %{url: "/foo%2Fbar:batchInsert"} = RequestBuilder.url(%{}, "/{name}:batchInsert", %{"name" => URI.encode_www_form("foo/bar")})
  end

  test "builds request url with allowed expansion" do
    assert %{url: "/foo/bar:batchInsert"} = RequestBuilder.url(%{}, "/{+name}:batchInsert", %{"name" => URI.encode_www_form("foo/bar")})
  end

  test "replaces multiple path variables" do
    assert %{url: "/foo/bar"} = RequestBuilder.url(%{}, "/{a}/{b}", %{"a" => "foo", "b" => "bar"})
  end
end
