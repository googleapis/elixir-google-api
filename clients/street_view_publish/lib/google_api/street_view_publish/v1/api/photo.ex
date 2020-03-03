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

defmodule GoogleApi.StreetViewPublish.V1.Api.Photo do
  @moduledoc """
  API calls for all endpoints tagged `Photo`.
  """

  alias GoogleApi.StreetViewPublish.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  After the client finishes uploading the photo with the returned
  UploadRef,
  CreatePhoto
  publishes the uploaded Photo to
  Street View on Google Maps.

  Currently, the only way to set heading, pitch, and roll in CreatePhoto is
  through the [Photo Sphere XMP
  metadata](https://developers.google.com/streetview/spherical-metadata) in
  the photo bytes. CreatePhoto ignores the  `pose.heading`, `pose.pitch`,
  `pose.roll`, `pose.altitude`, and `pose.level` fields in Pose.

  This method returns the following error codes:

  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if
  the uploaded photo is not a 360 photo.
  * google.rpc.Code.NOT_FOUND if the upload reference does not exist.
  * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the
  storage limit.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StreetViewPublish.V1.Connection.t`) - Connection to server
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
      *   `:body` (*type:* `GoogleApi.StreetViewPublish.V1.Model.Photo.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StreetViewPublish.V1.Model.Photo{}}` on success
  *   `{:error, info}` on failure
  """
  @spec streetviewpublish_photo_create(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Photo.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_create(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/photo", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Photo{}])
  end

  @doc """
  Deletes a Photo and its metadata.

  This method returns the following error codes:

  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  create the requested photo.
  * google.rpc.Code.NOT_FOUND if the photo ID does not exist.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StreetViewPublish.V1.Connection.t`) - Connection to server
  *   `photo_id` (*type:* `String.t`) - Required. ID of the Photo.
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

  *   `{:ok, %GoogleApi.StreetViewPublish.V1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec streetviewpublish_photo_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_delete(connection, photo_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:delete)
      |> Request.url("/v1/photo/{photoId}", %{
        "photoId" => URI.encode(photo_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Empty{}])
  end

  @doc """
  Gets the metadata of the specified
  Photo.

  This method returns the following error codes:

  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  create the requested Photo.
  * google.rpc.Code.NOT_FOUND if the requested
  Photo does not exist.
  * google.rpc.Code.UNAVAILABLE if the requested
  Photo is still being indexed.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StreetViewPublish.V1.Connection.t`) - Connection to server
  *   `photo_id` (*type:* `String.t`) - Required. ID of the Photo.
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
      *   `:languageCode` (*type:* `String.t`) - The BCP-47 language code, such as "en-US" or "sr-Latn". For more
          information, see
          http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
          If language_code is unspecified, the user's language preference for Google
          services is used.
      *   `:view` (*type:* `String.t`) - Required. Specifies if a download URL for the photo bytes should be returned in the
          Photo response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StreetViewPublish.V1.Model.Photo{}}` on success
  *   `{:error, info}` on failure
  """
  @spec streetviewpublish_photo_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Photo.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_get(connection, photo_id, optional_params \\ [], opts \\ []) do
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
      :languageCode => :query,
      :view => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/photo/{photoId}", %{
        "photoId" => URI.encode(photo_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Photo{}])
  end

  @doc """
  Creates an upload session to start uploading photo bytes.  The method uses
  the upload URL of the returned
  UploadRef to upload the bytes for
  the Photo.

  In addition to the photo requirements shown in
  https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604,
  the photo must meet the following requirements:

  * Photo Sphere XMP metadata must be included in the photo metadata. See
  https://developers.google.com/streetview/spherical-metadata for the
  required fields.
  * The pixel size of the photo must meet the size requirements listed in
  https://support.google.com/maps/answer/7012050?hl=en&ref_topic=6275604, and
  the photo must be a full 360 horizontally.

  After the upload completes, the method uses
  UploadRef with
  CreatePhoto
  to create the Photo object entry.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StreetViewPublish.V1.Connection.t`) - Connection to server
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
      *   `:body` (*type:* `GoogleApi.StreetViewPublish.V1.Model.Empty.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StreetViewPublish.V1.Model.UploadRef{}}` on success
  *   `{:error, info}` on failure
  """
  @spec streetviewpublish_photo_start_upload(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.UploadRef.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_start_upload(connection, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1/photo:startUpload", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.UploadRef{}])
  end

  @doc """
  Updates the metadata of a Photo, such
  as pose, place association, connections, etc. Changing the pixels of a
  photo is not supported.

  Only the fields specified in the
  updateMask
  field are used. If `updateMask` is not present, the update applies to all
  fields.

  This method returns the following error codes:

  * google.rpc.Code.PERMISSION_DENIED if the requesting user did not
  create the requested photo.
  * google.rpc.Code.INVALID_ARGUMENT if the request is malformed.
  * google.rpc.Code.NOT_FOUND if the requested photo does not exist.
  * google.rpc.Code.UNAVAILABLE if the requested
  Photo is still being indexed.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.StreetViewPublish.V1.Connection.t`) - Connection to server
  *   `id` (*type:* `String.t`) - Required. A unique identifier for a photo.
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
      *   `:updateMask` (*type:* `String.t`) - Required. Mask that identifies fields on the photo metadata to update.
          If not present, the old Photo
          metadata is entirely replaced with the
          new Photo metadata in this request.
          The update fails if invalid fields are specified. Multiple fields can be
          specified in a comma-delimited list.

          The following fields are valid:

          * `pose.heading`
          * `pose.latLngPair`
          * `pose.pitch`
          * `pose.roll`
          * `pose.level`
          * `pose.altitude`
          * `connections`
          * `places`


          <aside class="note"><b>Note:</b> When
          updateMask
          contains repeated fields, the entire set of repeated values get replaced
          with the new contents. For example, if
          updateMask
          contains `connections` and `UpdatePhotoRequest.photo.connections` is empty,
          all connections are removed.</aside>
      *   `:body` (*type:* `GoogleApi.StreetViewPublish.V1.Model.Photo.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.StreetViewPublish.V1.Model.Photo{}}` on success
  *   `{:error, info}` on failure
  """
  @spec streetviewpublish_photo_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.StreetViewPublish.V1.Model.Photo.t()} | {:error, Tesla.Env.t()}
  def streetviewpublish_photo_update(connection, id, optional_params \\ [], opts \\ []) do
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
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v1/photo/{id}", %{
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.StreetViewPublish.V1.Model.Photo{}])
  end
end
