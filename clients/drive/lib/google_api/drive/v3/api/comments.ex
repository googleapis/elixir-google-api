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

defmodule GoogleApi.Drive.V3.Api.Comments do
  @moduledoc """
  API calls for all endpoints tagged `Comments`.
  """

  alias GoogleApi.Drive.V3.Connection
  import GoogleApi.Drive.V3.RequestBuilder

  @doc """
  Creates a new comment on a file.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Comment): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec drive_comments_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def drive_comments_create(connection, file_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    %{}
    |> method(:post)
    |> url("/drive/v3/files/{fileId}/comments", %{
      "fileId" => URI.encode_www_form(file_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.Comment{})
  end

  @doc """
  Deletes a comment.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - comment_id (String.t): The ID of the comment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_comments_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def drive_comments_delete(connection, file_id, comment_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    %{}
    |> method(:delete)
    |> url("/drive/v3/files/{fileId}/comments/{commentId}", %{
      "fileId" => URI.encode_www_form(file_id),
      "commentId" => URI.encode_www_form(comment_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Gets a comment by ID.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - comment_id (String.t): The ID of the comment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :includeDeleted (boolean()): Whether to return deleted comments. Deleted comments will not include their original content.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec drive_comments_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def drive_comments_get(connection, file_id, comment_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeDeleted => :query
    }

    %{}
    |> method(:get)
    |> url("/drive/v3/files/{fileId}/comments/{commentId}", %{
      "fileId" => URI.encode_www_form(file_id),
      "commentId" => URI.encode_www_form(comment_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.Comment{})
  end

  @doc """
  Lists a file&#39;s comments.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :includeDeleted (boolean()): Whether to include deleted comments. Deleted comments will not include their original content.
    - :pageSize (integer()): The maximum number of comments to return per page.
    - :pageToken (String.t): The token for continuing a previous list request on the next page. This should be set to the value of &#39;nextPageToken&#39; from the previous response.
    - :startModifiedTime (String.t): The minimum value of &#39;modifiedTime&#39; for the result comments (RFC 3339 date-time).

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.CommentList{}} on success
  {:error, info} on failure
  """
  @spec drive_comments_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.CommentList.t()} | {:error, Tesla.Env.t()}
  def drive_comments_list(connection, file_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeDeleted => :query,
      :pageSize => :query,
      :pageToken => :query,
      :startModifiedTime => :query
    }

    %{}
    |> method(:get)
    |> url("/drive/v3/files/{fileId}/comments", %{
      "fileId" => URI.encode_www_form(file_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.CommentList{})
  end

  @doc """
  Updates a comment with patch semantics.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - file_id (String.t): The ID of the file.
  - comment_id (String.t): The ID of the comment.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :userIp (String.t): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Comment): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Comment{}} on success
  {:error, info} on failure
  """
  @spec drive_comments_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Comment.t()} | {:error, Tesla.Env.t()}
  def drive_comments_update(connection, file_id, comment_id, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    %{}
    |> method(:patch)
    |> url("/drive/v3/files/{fileId}/comments/{commentId}", %{
      "fileId" => URI.encode_www_form(file_id),
      "commentId" => URI.encode_www_form(comment_id)
    })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Drive.V3.Model.Comment{})
  end
end
