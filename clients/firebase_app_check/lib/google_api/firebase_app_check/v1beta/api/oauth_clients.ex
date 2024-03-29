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

defmodule GoogleApi.FirebaseAppCheck.V1beta.Api.OauthClients do
  @moduledoc """
  API calls for all endpoints tagged `OauthClients`.
  """

  alias GoogleApi.FirebaseAppCheck.V1beta.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Accepts an App Attest assertion and an artifact previously obtained from ExchangeAppAttestAttestation and verifies those with Apple. If valid, returns an AppCheckToken.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if this method is being called for an OAuth client protected by App Check, this field can also be in the format: ``` oauthClients/{oauth_client_id} ``` You can view the OAuth client ID for your OAuth clients in the Google Cloud console. Note that only iOS OAuth clients are supported at this time, and they must be linked to corresponding iOS Firebase apps. Please see [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup) for more information.
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
      *   `:body` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeAppAttestAssertionRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappcheck_oauth_clients_exchange_app_attest_assertion(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappcheck_oauth_clients_exchange_app_attest_assertion(
        connection,
        app,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/v1beta/{+app}:exchangeAppAttestAssertion", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken{}
        ]
    )
  end

  @doc """
  Accepts an App Attest CBOR attestation and verifies it with Apple using your preconfigured team and bundle IDs. If valid, returns an attestation artifact that can later be exchanged for an AppCheckToken using ExchangeAppAttestAssertion. For convenience and performance, this method's response object will also contain an AppCheckToken (if the verification is successful).

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if this method is being called for an OAuth client protected by App Check, this field can also be in the format: ``` oauthClients/{oauth_client_id} ``` You can view the OAuth client ID for your OAuth clients in the Google Cloud console. Note that only iOS OAuth clients are supported at this time, and they must be linked to corresponding iOS Firebase apps. Please see [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup) for more information.
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
      *   `:body` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappcheck_oauth_clients_exchange_app_attest_attestation(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappcheck_oauth_clients_exchange_app_attest_attestation(
        connection,
        app,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/v1beta/{+app}:exchangeAppAttestAttestation", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeAppAttestAttestationResponse{}
        ]
    )
  end

  @doc """
  Validates a debug token secret that you have previously created using CreateDebugToken. If valid, returns an AppCheckToken. Note that a restrictive quota is enforced on this method to prevent accidental exposure of the app to abuse.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - Required. The relative resource name of the app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if this method is being called for an OAuth client protected by App Check, this field can also be in the format: ``` oauthClients/{oauth_client_id} ``` You can view the OAuth client ID for your OAuth clients in the Google Cloud console. Note that only iOS OAuth clients are supported at this time, and they must be linked to corresponding iOS Firebase apps. Please see [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup) for more information.
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
      *   `:body` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaExchangeDebugTokenRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappcheck_oauth_clients_exchange_debug_token(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappcheck_oauth_clients_exchange_debug_token(
        connection,
        app,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/v1beta/{+app}:exchangeDebugToken", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaAppCheckToken{}
        ]
    )
  end

  @doc """
  Generates a challenge that protects the integrity of an immediately following call to ExchangeAppAttestAttestation or ExchangeAppAttestAssertion. A challenge should not be reused for multiple calls.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - Required. The relative resource name of the iOS app, in the format: ``` projects/{project_number}/apps/{app_id} ``` If necessary, the `project_number` element can be replaced with the project ID of the Firebase project. Learn more about using project identifiers in Google's [AIP 2510](https://google.aip.dev/cloud/2510) standard. Alternatively, if this method is being called for an OAuth client protected by App Check, this field can also be in the format: ``` oauthClients/{oauth_client_id} ``` You can view the OAuth client ID for your OAuth clients in the Google Cloud console. Note that only iOS OAuth clients are supported at this time, and they must be linked to corresponding iOS Firebase apps. Please see [the documentation](https://developers.google.com/identity/sign-in/ios/appcheck/get-started#project-setup) for more information.
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
      *   `:body` (*type:* `GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappcheck_oauth_clients_generate_app_attest_challenge(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappcheck_oauth_clients_generate_app_attest_challenge(
        connection,
        app,
        optional_params \\ [],
        opts \\ []
      ) do
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
      |> Request.url("/v1beta/{+app}:generateAppAttestChallenge", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.FirebaseAppCheck.V1beta.Model.GoogleFirebaseAppcheckV1betaGenerateAppAttestChallengeResponse{}
        ]
    )
  end
end
