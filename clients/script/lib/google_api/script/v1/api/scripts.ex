# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Script.V1.Api.Scripts do
  @moduledoc """
  API calls for all endpoints tagged `Scripts`.
  """

  alias GoogleApi.Script.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Runs a function in an Apps Script project. The script project must be
  deployed for use with the Apps Script API and the calling application must
  share the same Cloud Platform project.

  This method requires authorization with an OAuth 2.0 token that includes at
  least one of the scopes listed in the [Authorization](#authorization)
  section; script projects that do not require authorization cannot be
  executed through this API. To find the correct scopes to include in the
  authentication token, open the project in the script editor, then select
  **File > Project properties** and click the **Scopes** tab.

  The error `403, PERMISSION_DENIED: The caller does not have permission`
  indicates that the Cloud Platform project used to authorize the request is
  not the same as the one used by the script.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Script.V1.Connection.t`) - Connection to server
  *   `script_id` (*type:* `String.t`) - The script ID of the script to be executed. To find the script ID, open
      the project in the script editor and select **File > Project properties**.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:body` (*type:* `GoogleApi.Script.V1.Model.ExecutionRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Script.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec script_scripts_run(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Script.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def script_scripts_run(connection, script_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/scripts/{scriptId}:run", %{
        "scriptId" => URI.encode(script_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Script.V1.Model.Operation{}])
  end
end
