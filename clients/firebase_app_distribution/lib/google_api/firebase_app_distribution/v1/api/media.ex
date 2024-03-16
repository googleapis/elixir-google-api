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

defmodule GoogleApi.FirebaseAppDistribution.V1.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias GoogleApi.FirebaseAppDistribution.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Uploads a binary. Uploading a binary can result in a new release being created, an update to an existing release, or a no-op if a release with the same binary already exists.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - The name of the app resource. Format: `projects/{project_number}/apps/{app_id}`
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
      *   `:body` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappdistribution_media_upload(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappdistribution_media_upload(connection, app, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/{+app}/releases:upload", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation{}]
    )
  end

  @doc """
  Uploads a binary. Uploading a binary can result in a new release being created, an update to an existing release, or a no-op if a release with the same binary already exists.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - The name of the app resource. Format: `projects/{project_number}/apps/{app_id}`
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseRequest.t`) - object metadata
  *   `data` (*type:* `iodata`) - Content to upload, as a string or iolist
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappdistribution_media_upload_iodata(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseRequest.t(),
          iodata,
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappdistribution_media_upload_iodata(
        connection,
        app,
        upload_type,
        metadata,
        data,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v1/{+app}/releases:upload", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:body, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation{}]
    )
  end

  @doc """
  Uploads a binary. Uploading a binary can result in a new release being created, an update to an existing release, or a no-op if a release with the same binary already exists.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Connection.t`) - Connection to server
  *   `app` (*type:* `String.t`) - The name of the app resource. Format: `projects/{project_number}/apps/{app_id}`
  *   `upload_type` (*type:* `String.t`) - Upload type. Must be "multipart".
  *   `metadata` (*type:* `GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseRequest.t`) - object metadata
  *   `data` (*type:* `String.t`) - Path to file containing content to upload
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
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebaseappdistribution_media_upload_simple(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          GoogleApi.FirebaseAppDistribution.V1.Model.GoogleFirebaseAppdistroV1UploadReleaseRequest.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def firebaseappdistribution_media_upload_simple(
        connection,
        app,
        upload_type,
        metadata,
        data,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/upload/v1/{+app}/releases:upload", %{
        "app" => URI.encode(app, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :uploadType, upload_type)
      |> Request.add_param(:body, :metadata, metadata)
      |> Request.add_param(:file, :data, data)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.FirebaseAppDistribution.V1.Model.GoogleLongrunningOperation{}]
    )
  end
end