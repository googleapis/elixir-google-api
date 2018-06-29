# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Script.V1.Api.Scripts do
  @moduledoc """
  API calls for all endpoints tagged `Scripts`.
  """

  alias GoogleApi.Script.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Runs a function in an Apps Script project. The project must be deployed for use with the Apps Script API.  This method requires authorization with an OAuth 2.0 token that includes at least one of the scopes listed in the [Authorization](#authorization) section; script projects that do not require authorization cannot be executed through this API. To find the correct scopes to include in the authentication token, open the project in the script editor, then select **File &gt; Project properties** and click the **Scopes** tab.

  ## Parameters

  - connection (GoogleApi.Script.V1.Connection): Connection to server
  - script_id (String.t): The script ID of the script to be executed. To find the script ID, open the project in the script editor and select **File &gt; Project properties**.
  - opts (KeywordList): [optional] Optional parameters
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :access_token (String.t): OAuth access token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :$.xgafv (String.t): V1 error format.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :body (ExecutionRequest): 

  ## Returns

  {:ok, %GoogleApi.Script.V1.Model.Operation{}} on success
  {:error, info} on failure
  """
  @spec script_scripts_run(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Script.V1.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def script_scripts_run(connection, script_id, opts \\ []) do
    optional_params = %{
      :key => :query,
      :access_token => :query,
      :upload_protocol => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :fields => :query,
      :"$.xgafv" => :query,
      :oauth_token => :query,
      :callback => :query,
      :alt => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/scripts/{scriptId}:run", %{
        "scriptId" => URI.encode_www_form(script_id)
      })
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Script.V1.Model.Operation{})
  end
end
