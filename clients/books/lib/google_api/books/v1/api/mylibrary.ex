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

defmodule GoogleApi.Books.V1.Api.Mylibrary do
  @moduledoc """
  API calls for all endpoints tagged `Mylibrary`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes an annotation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `annotation_id` (*type:* `String.t`) - The ID for the annotation to delete.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_annotations_delete(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def books_mylibrary_annotations_delete(
        connection,
        annotation_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/mylibrary/annotations/{annotationId}", %{
        "annotationId" => URI.encode(annotation_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Inserts a new annotation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:annotationId` (*type:* `String.t`) - The ID for the annotation to insert.
      *   `:country` (*type:* `String.t`) - ISO-3166-1 code to override the IP-based location.
      *   `:showOnlySummaryInResponse` (*type:* `boolean()`) - Requests that only the summary of the specified layer be provided in the response.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:body` (*type:* `GoogleApi.Books.V1.Model.Annotation.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Annotation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_annotations_insert(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Annotation.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_annotations_insert(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :annotationId => :query,
      :country => :query,
      :showOnlySummaryInResponse => :query,
      :source => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/annotations", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Annotation{}])
  end

  @doc """
  Retrieves a list of annotations, possibly filtered.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:contentVersion` (*type:* `String.t`) - The content version for the requested volume.
      *   `:layerId` (*type:* `String.t`) - The layer ID to limit annotation by.
      *   `:layerIds` (*type:* `list(String.t)`) - The layer ID(s) to limit annotation by.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:pageToken` (*type:* `String.t`) - The value of the nextToken from the previous page.
      *   `:showDeleted` (*type:* `boolean()`) - Set to true to return deleted annotations. updatedMin must be in the request to use this. Defaults to false.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:updatedMax` (*type:* `String.t`) - RFC 3339 timestamp to restrict to items updated prior to this timestamp (exclusive).
      *   `:updatedMin` (*type:* `String.t`) - RFC 3339 timestamp to restrict to items updated since this timestamp (inclusive).
      *   `:volumeId` (*type:* `String.t`) - The volume to restrict annotations to.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Annotations{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_annotations_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Annotations.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_annotations_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :contentVersion => :query,
      :layerId => :query,
      :layerIds => :query,
      :maxResults => :query,
      :pageToken => :query,
      :showDeleted => :query,
      :source => :query,
      :updatedMax => :query,
      :updatedMin => :query,
      :volumeId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mylibrary/annotations", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Annotations{}])
  end

  @doc """
  Gets the summary of specified layers.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `layer_ids` (*type:* `list(String.t)`) - Array of layer IDs to get the summary for.
  *   `volume_id` (*type:* `String.t`) - Volume id to get the summary for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.AnnotationsSummary{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_annotations_summary(
          Tesla.Env.client(),
          list(String.t()),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Books.V1.Model.AnnotationsSummary.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_annotations_summary(
        connection,
        layer_ids,
        volume_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/annotations/summary", %{})
      |> Request.add_param(:query, :layerIds, layer_ids)
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.AnnotationsSummary{}])
  end

  @doc """
  Updates an existing annotation.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `annotation_id` (*type:* `String.t`) - The ID for the annotation to update.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:body` (*type:* `GoogleApi.Books.V1.Model.Annotation.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Annotation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_annotations_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Annotation.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_annotations_update(
        connection,
        annotation_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/mylibrary/annotations/{annotationId}", %{
        "annotationId" => URI.encode(annotation_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Annotation{}])
  end

  @doc """
  Adds a volume to a bookshelf.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `shelf` (*type:* `String.t`) - ID of bookshelf to which to add a volume.
  *   `volume_id` (*type:* `String.t`) - ID of volume to add.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:reason` (*type:* `String.t`) - The reason for which the book is added to the library.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_add_volume(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_add_volume(
        connection,
        shelf,
        volume_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :reason => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/bookshelves/{shelf}/addVolume", %{
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Clears all volumes from a bookshelf.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `shelf` (*type:* `String.t`) - ID of bookshelf from which to remove a volume.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_clear_volumes(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_clear_volumes(
        connection,
        shelf,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/bookshelves/{shelf}/clearVolumes", %{
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves metadata for a specific bookshelf belonging to the authenticated user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `shelf` (*type:* `String.t`) - ID of bookshelf to retrieve.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Bookshelf{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Bookshelf.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_get(connection, shelf, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mylibrary/bookshelves/{shelf}", %{
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Bookshelf{}])
  end

  @doc """
  Retrieves a list of bookshelves belonging to the authenticated user.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Bookshelves{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Bookshelves.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mylibrary/bookshelves", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Bookshelves{}])
  end

  @doc """
  Moves a volume within a bookshelf.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `shelf` (*type:* `String.t`) - ID of bookshelf with the volume.
  *   `volume_id` (*type:* `String.t`) - ID of volume to move.
  *   `volume_position` (*type:* `integer()`) - Position on shelf to move the item (0 puts the item before the current first item, 1 puts it between the first and the second and so on.)
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_move_volume(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          integer(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_move_volume(
        connection,
        shelf,
        volume_id,
        volume_position,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/bookshelves/{shelf}/moveVolume", %{
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_param(:query, :volumePosition, volume_position)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Removes a volume from a bookshelf.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `shelf` (*type:* `String.t`) - ID of bookshelf from which to remove a volume.
  *   `volume_id` (*type:* `String.t`) - ID of volume to remove.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:reason` (*type:* `String.t`) - The reason for which the book is removed from the library.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_remove_volume(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_remove_volume(
        connection,
        shelf,
        volume_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :reason => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/bookshelves/{shelf}/removeVolume", %{
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets volume information for volumes on a bookshelf.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `shelf` (*type:* `String.t`) - The bookshelf ID or name retrieve volumes for.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:country` (*type:* `String.t`) - ISO-3166-1 code to override the IP-based location.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return
      *   `:projection` (*type:* `String.t`) - Restrict information returned to a set of selected fields.
      *   `:q` (*type:* `String.t`) - Full-text search query string in this bookshelf.
      *   `:showPreorders` (*type:* `boolean()`) - Set to true to show pre-ordered books. Defaults to false.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
      *   `:startIndex` (*type:* `integer()`) - Index of the first element to return (starts at 0)
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.Volumes{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_bookshelves_volumes_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_bookshelves_volumes_list(
        connection,
        shelf,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :country => :query,
      :maxResults => :query,
      :projection => :query,
      :q => :query,
      :showPreorders => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mylibrary/bookshelves/{shelf}/volumes", %{
        "shelf" => URI.encode(shelf, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Retrieves my reading position information for a volume.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - ID of volume for which to retrieve a reading position.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:contentVersion` (*type:* `String.t`) - Volume content version for which this reading position is requested.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Books.V1.Model.ReadingPosition{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_readingpositions_get(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.ReadingPosition.t()} | {:error, Tesla.Env.t()}
  def books_mylibrary_readingpositions_get(
        connection,
        volume_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :contentVersion => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/mylibrary/readingpositions/{volumeId}", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.ReadingPosition{}])
  end

  @doc """
  Sets my reading position information for a volume.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Books.V1.Connection.t`) - Connection to server
  *   `volume_id` (*type:* `String.t`) - ID of volume for which to update the reading position.
  *   `timestamp` (*type:* `String.t`) - RFC 3339 UTC format timestamp associated with this reading position.
  *   `position` (*type:* `String.t`) - Position string for the new volume reading position.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:action` (*type:* `String.t`) - Action that caused this reading position to be set.
      *   `:contentVersion` (*type:* `String.t`) - Volume content version for which this reading position applies.
      *   `:deviceCookie` (*type:* `String.t`) - Random persistent device cookie optional on set position.
      *   `:source` (*type:* `String.t`) - String to identify the originator of this request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec books_mylibrary_readingpositions_set_position(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def books_mylibrary_readingpositions_set_position(
        connection,
        volume_id,
        timestamp,
        position,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :action => :query,
      :contentVersion => :query,
      :deviceCookie => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/mylibrary/readingpositions/{volumeId}/setPosition", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :timestamp, timestamp)
      |> Request.add_param(:query, :position, position)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end
end
