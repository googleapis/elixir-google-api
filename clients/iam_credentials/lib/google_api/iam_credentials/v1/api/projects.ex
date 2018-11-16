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

defmodule GoogleApi.IAMCredentials.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.IAMCredentials.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Generates an OAuth 2.0 access token for a service account.

  ## Parameters

  - connection (GoogleApi.IAMCredentials.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource name of the service account for which the credentials are requested, in the following format: &#x60;projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}&#x60;.
  - service_accounts_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
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
    - :body (GenerateAccessTokenRequest): 

  ## Returns

  {:ok, %GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenResponse{}} on success
  {:error, info} on failure
  """
  @spec iamcredentials_projects_service_accounts_generate_access_token(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenResponse.t()}
          | {:error, Tesla.Env.t()}
  def iamcredentials_projects_service_accounts_generate_access_token(
        connection,
        projects_id,
        service_accounts_id,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/v1/projects/{projectsId}/serviceAccounts/{serviceAccountsId}:generateAccessToken",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "serviceAccountsId" => URI.encode_www_form(service_accounts_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.IAMCredentials.V1.Model.GenerateAccessTokenResponse{}]
    )
  end

  @doc """
  Generates an OpenID Connect ID token for a service account.

  ## Parameters

  - connection (GoogleApi.IAMCredentials.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource name of the service account for which the credentials are requested, in the following format: &#x60;projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}&#x60;.
  - service_accounts_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
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
    - :body (GenerateIdTokenRequest): 

  ## Returns

  {:ok, %GoogleApi.IAMCredentials.V1.Model.GenerateIdTokenResponse{}} on success
  {:error, info} on failure
  """
  @spec iamcredentials_projects_service_accounts_generate_id_token(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.IAMCredentials.V1.Model.GenerateIdTokenResponse.t()}
          | {:error, Tesla.Env.t()}
  def iamcredentials_projects_service_accounts_generate_id_token(
        connection,
        projects_id,
        service_accounts_id,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/v1/projects/{projectsId}/serviceAccounts/{serviceAccountsId}:generateIdToken",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "serviceAccountsId" => URI.encode_www_form(service_accounts_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.IAMCredentials.V1.Model.GenerateIdTokenResponse{}]
    )
  end

  @doc """


  ## Parameters

  - connection (GoogleApi.IAMCredentials.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource name of the service account for which the credentials are requested, in the following format: &#x60;projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}&#x60;.
  - service_accounts_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
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
    - :body (GenerateIdentityBindingAccessTokenRequest): 

  ## Returns

  {:ok, %GoogleApi.IAMCredentials.V1.Model.GenerateIdentityBindingAccessTokenResponse{}} on success
  {:error, info} on failure
  """
  @spec iamcredentials_projects_service_accounts_generate_identity_binding_access_token(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.IAMCredentials.V1.Model.GenerateIdentityBindingAccessTokenResponse.t()}
          | {:error, Tesla.Env.t()}
  def iamcredentials_projects_service_accounts_generate_identity_binding_access_token(
        connection,
        projects_id,
        service_accounts_id,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/v1/projects/{projectsId}/serviceAccounts/{serviceAccountsId}:generateIdentityBindingAccessToken",
        %{
          "projectsId" => URI.encode_www_form(projects_id),
          "serviceAccountsId" => URI.encode_www_form(service_accounts_id)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [struct: %GoogleApi.IAMCredentials.V1.Model.GenerateIdentityBindingAccessTokenResponse{}]
    )
  end

  @doc """
  Signs a blob using a service account&#39;s system-managed private key.

  ## Parameters

  - connection (GoogleApi.IAMCredentials.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource name of the service account for which the credentials are requested, in the following format: &#x60;projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}&#x60;.
  - service_accounts_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
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
    - :body (SignBlobRequest): 

  ## Returns

  {:ok, %GoogleApi.IAMCredentials.V1.Model.SignBlobResponse{}} on success
  {:error, info} on failure
  """
  @spec iamcredentials_projects_service_accounts_sign_blob(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.IAMCredentials.V1.Model.SignBlobResponse.t()} | {:error, Tesla.Env.t()}
  def iamcredentials_projects_service_accounts_sign_blob(
        connection,
        projects_id,
        service_accounts_id,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectsId}/serviceAccounts/{serviceAccountsId}:signBlob", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "serviceAccountsId" => URI.encode_www_form(service_accounts_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAMCredentials.V1.Model.SignBlobResponse{}])
  end

  @doc """
  Signs a JWT using a service account&#39;s system-managed private key.

  ## Parameters

  - connection (GoogleApi.IAMCredentials.V1.Connection): Connection to server
  - projects_id (String.t): Part of &#x60;name&#x60;. The resource name of the service account for which the credentials are requested, in the following format: &#x60;projects/-/serviceAccounts/{ACCOUNT_EMAIL_OR_UNIQUEID}&#x60;.
  - service_accounts_id (String.t): Part of &#x60;name&#x60;. See documentation of &#x60;projectsId&#x60;.
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
    - :body (SignJwtRequest): 

  ## Returns

  {:ok, %GoogleApi.IAMCredentials.V1.Model.SignJwtResponse{}} on success
  {:error, info} on failure
  """
  @spec iamcredentials_projects_service_accounts_sign_jwt(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.IAMCredentials.V1.Model.SignJwtResponse.t()} | {:error, Tesla.Env.t()}
  def iamcredentials_projects_service_accounts_sign_jwt(
        connection,
        projects_id,
        service_accounts_id,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectsId}/serviceAccounts/{serviceAccountsId}:signJwt", %{
        "projectsId" => URI.encode_www_form(projects_id),
        "serviceAccountsId" => URI.encode_www_form(service_accounts_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.IAMCredentials.V1.Model.SignJwtResponse{}])
  end
end
