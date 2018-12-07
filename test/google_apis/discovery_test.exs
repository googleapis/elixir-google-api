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

defmodule GoogleApis.DiscoveryTest do
  use ExUnit.Case
  doctest GoogleApis.Discovery
  alias GoogleApis.Discovery

  @moduletag :external

  test "fetch GOOGLE_REST_SIMPLE_URI urls" do
    assert {:ok, {body, format}} =
             Discovery.fetch("https://pubsub.googleapis.com/$discovery/rest?version=v1")

    assert "GOOGLE_REST_SIMPLE_URI" == format

    assert {:ok, content} = Poison.decode(body)
    assert "Pubsub" == content["canonicalName"]
  end

  test "fetch fallback rest urls" do
    assert {:ok, {body, format}} =
             Discovery.fetch(
               "https://analyticsreporting.googleapis.com/$discovery/rest?version=v4"
             )

    assert "rest" == format

    assert {:ok, content} = Poison.decode(body)
    assert "AnalyticsReporting" == content["canonicalName"]
  end

  test "fetch default urls" do
    assert {:ok, {body, format}} =
             Discovery.fetch(
               "https://www.googleapis.com/discovery/v1/apis/adexchangebuyer/v1.4/rest"
             )

    assert "default" == format

    assert {:ok, content} = Poison.decode(body)
    assert "Ad Exchange Buyer" == content["canonicalName"]
  end
end
