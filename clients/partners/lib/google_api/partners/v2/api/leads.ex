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

defmodule GoogleApi.Partners.V2.Api.Leads do
  @moduledoc """
  API calls for all endpoints tagged `Leads`.
  """

  alias GoogleApi.Partners.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Lists advertiser leads for a user&#39;s associated company. Should only be called within the context of an authorized logged in user.

  ## Parameters

  - connection (GoogleApi.Partners.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :callback (String.t): JSONP
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :$.xgafv (String.t): V1 error format.
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :requestMetadata.experimentIds ([String.t]): Experiment IDs the current request belongs to.
    - :orderBy (String.t): How to order Leads. Currently, only &#x60;create_time&#x60; and &#x60;create_time desc&#x60; are supported
    - :requestMetadata.trafficSource.trafficSubId (String.t): Second level identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :requestMetadata.userOverrides.userId (String.t): Logged-in user ID to impersonate instead of the user&#39;s ID.
    - :requestMetadata.partnersSessionId (String.t): Google Partners session ID.
    - :pageToken (String.t): A token identifying a page of results that the server returns. Typically, this is the value of &#x60;ListLeadsResponse.next_page_token&#x60; returned from the previous call to ListLeads.
    - :pageSize (integer()): Requested page size. Server may return fewer leads than requested. If unspecified, server picks an appropriate default.
    - :requestMetadata.trafficSource.trafficSourceId (String.t): Identifier to indicate where the traffic comes from. An identifier has multiple letters created by a team which redirected the traffic to us.
    - :requestMetadata.locale (String.t): Locale to use for the current request.
    - :requestMetadata.userOverrides.ipAddress (String.t): IP address to use instead of the user&#39;s geo-located IP address.

  ## Returns

  {:ok, %GoogleApi.Partners.V2.Model.ListLeadsResponse{}} on success
  {:error, info} on failure
  """
  @spec partners_leads_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Partners.V2.Model.ListLeadsResponse.t()} | {:error, Tesla.Env.t()}
  def partners_leads_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :fields => :query,
      :uploadType => :query,
      :callback => :query,
      :oauth_token => :query,
      :"$.xgafv" => :query,
      :alt => :query,
      :access_token => :query,
      :key => :query,
      :upload_protocol => :query,
      :quotaUser => :query,
      :prettyPrint => :query,
      :"requestMetadata.experimentIds" => :query,
      :orderBy => :query,
      :"requestMetadata.trafficSource.trafficSubId" => :query,
      :"requestMetadata.userOverrides.userId" => :query,
      :"requestMetadata.partnersSessionId" => :query,
      :pageToken => :query,
      :pageSize => :query,
      :"requestMetadata.trafficSource.trafficSourceId" => :query,
      :"requestMetadata.locale" => :query,
      :"requestMetadata.userOverrides.ipAddress" => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/leads")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Partners.V2.Model.ListLeadsResponse{}])
  end
end
