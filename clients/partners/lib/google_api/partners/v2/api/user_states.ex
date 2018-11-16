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

defmodule GoogleApi.Partners.V2.Api.UserStates do
  @moduledoc """
  API calls for all endpoints tagged `UserStates`.
  """

  alias GoogleApi.Partners.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists states for current user.

  ## Parameters

  - connection (GoogleApi.Partners.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :requestMetadata.partnersSessionId (String.t): Google Partners session ID.
    - :requestMetadata.userOverrides.userId (String.t): Logged-in user ID to impersonate instead of the user&#39;s ID.
    - :requestMetadata.trafficSource.trafficSourceId (String.t): Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :requestMetadata.locale (String.t): Locale to use for the current request.
    - :requestMetadata.userOverrides.ipAddress (String.t): IP address to use instead of the user&#39;s geo-located IP address.
    - :requestMetadata.experimentIds ([String.t]): Experiment IDs the current request belongs to.
    - :requestMetadata.trafficSource.trafficSubId (String.t): Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.

  ## Returns

  {:ok, %GoogleApi.Partners.V2.Model.ListUserStatesResponse{}} on success
  {:error, info} on failure
  """
  @spec partners_user_states_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Partners.V2.Model.ListUserStatesResponse.t()} | {:error, Tesla.Env.t()}
  def partners_user_states_list(connection, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :"requestMetadata.partnersSessionId" => :query,
      :"requestMetadata.userOverrides.userId" => :query,
      :"requestMetadata.trafficSource.trafficSourceId" => :query,
      :"requestMetadata.locale" => :query,
      :"requestMetadata.userOverrides.ipAddress" => :query,
      :"requestMetadata.experimentIds" => :query,
      :"requestMetadata.trafficSource.trafficSubId" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/userStates")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Partners.V2.Model.ListUserStatesResponse{}])
  end
end
