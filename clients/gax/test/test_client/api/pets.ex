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

defmodule TestClient.Api.Pets do
  alias TestClient.Connection
  alias GoogleApi.Gax.{Request, Response}

  def pets_list_by_store(connection, store, opts \\ []) do
    optional_params = %{
      :prettyPrint => :query,
      :tags => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.library_version("1.2.3")
      |> Request.url("/v1/stores/{store}/pets", %{
        "store" => URI.encode_www_form(store)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %TestClient.Model.Pets{})
  end
end
