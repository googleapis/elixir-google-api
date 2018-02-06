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

defmodule DeserializerTest do
  use ExUnit.Case
  alias GoogleApi.TestClient.V1.Model.PerformanceReport
  alias GoogleApi.TestClient.V1.Model.Bucket

  test "deserialize array of anything" do
    json = """
    {
      "calloutStatusRate": [
        {"foo": "bar"},
        [
          {"asdf": "qwer"}
        ]
      ]
    }
    """

    assert {:ok, report} = Poison.decode(json, as: %PerformanceReport{})
    assert %PerformanceReport{calloutStatusRate: rate} = report
    assert 2 == Enum.count(rate)
    assert %{"foo" => "bar"} == Enum.at(rate, 0)
    assert [%{"asdf" => "qwer"}] == Enum.at(rate, 1)
  end

  test "deserialize date and date-time" do
    json = """
    {
      "timeCreated": "2017-04-12T19:44:27.293Z",
      "updated": null,
      "updated2": "2017-04-12T19:44:27.293Z",
      "updated3": null
    }
    """

    assert {:ok, bucket} = Poison.decode(json, as: %Bucket{})
    assert %Bucket{timeCreated: timeCreated, updated: nil, updated2: updated2, updated3: nil} = bucket
    assert %DateTime{} = timeCreated
    assert %DateTime{} = updated2
  end

end
