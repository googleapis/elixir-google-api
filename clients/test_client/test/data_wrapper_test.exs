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

defmodule Gax.DataWrapperTest do
  use ExUnit.Case, async: true

  alias GoogleApi.TestClient.V2.Model.Container
  alias GoogleApi.TestClient.V2.Connection
  alias GoogleApi.TestClient.V2.Api.Objects, as: Api

  import Tesla.Mock

  test "decodes data wrapped response" do
    json = """
    {
      "data": {
        "stringVal": "some string"
      }
    }
    """
    mock(fn %{method: :get, url: "http://localhost:8080/test/v2/b/bucket-1/wrapped"} ->
      %Tesla.Env{status: 200, body: json}
    end)

    conn = Connection.new()
    {:ok, container} = Api.objects_wrapped(conn, "bucket-1")
    assert %Container{stringVal: "some string"} = container
  end
end