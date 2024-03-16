# Copyright 2019 Google LLC
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

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Integrations.V1alpha.Api.Callback do
  @moduledoc """
  API calls for all endpoints tagged `Callback`.
  """

  alias GoogleApi.Integrations.V1alpha.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Receives the auth code and auth config id to combine that with the client id and secret to retrieve access tokens from the token endpoint. Returns either a success or error message when it's done.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Integrations.V1alpha.Connection.t`) - Connection to server
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
      *   `:code` (*type:* `String.t`) - The auth code for the given request
      *   `:gcpProjectId` (*type:* `String.t`) - The gcp project id of the request
      *   `:product` (*type:* `String.t`) - Which product sends the request
      *   `:redirectUri` (*type:* `String.t`) - Redirect uri of the auth code request
      *   `:state` (*type:* `String.t`) - The auth config id for the given request
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaGenerateTokenResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec integrations_callback_generate_token(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok,
           GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaGenerateTokenResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def integrations_callback_generate_token(connection, optional_params \\ [], opts \\ []) do
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
      :code => :query,
      :gcpProjectId => :query,
      :product => :query,
      :redirectUri => :query,
      :state => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha/callback:generateToken", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.Integrations.V1alpha.Model.GoogleCloudIntegrationsV1alphaGenerateTokenResponse{}
        ]
    )
  end
end