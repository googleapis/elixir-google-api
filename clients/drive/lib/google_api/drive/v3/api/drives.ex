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

defmodule GoogleApi.Drive.V3.Api.Drives do
  @moduledoc """
  API calls for all endpoints tagged `Drives`.
  """

  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new shared drive.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - request_id (String.t): An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.Drive.V3.Model.Drive.t): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Drive{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Drive.t()} | {:error, Tesla.Env.t()}
  def drive_drives_create(connection, request_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/drive/v3/drives", %{})
      |> Request.add_param(:query, :requestId, request_id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Drive{}])
  end

  @doc """
  Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - drive_id (String.t): The ID of the shared drive.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def drive_drives_delete(connection, drive_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:delete)
      |> Request.url("/drive/v3/drives/{driveId}", %{
        "driveId" => URI.encode(drive_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets a shared drive's metadata by ID.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - drive_id (String.t): The ID of the shared drive.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :useDomainAdminAccess (boolean()): Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Drive{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Drive.t()} | {:error, Tesla.Env.t()}
  def drive_drives_get(connection, drive_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :useDomainAdminAccess => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/drives/{driveId}", %{
        "driveId" => URI.encode(drive_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Drive{}])
  end

  @doc """
  Hides a shared drive from the default view.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - drive_id (String.t): The ID of the shared drive.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Drive{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_hide(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Drive.t()} | {:error, Tesla.Env.t()}
  def drive_drives_hide(connection, drive_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/drive/v3/drives/{driveId}/hide", %{
        "driveId" => URI.encode(drive_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Drive{}])
  end

  @doc """
  Lists the user's shared drives.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :pageSize (integer()): Maximum number of shared drives to return.
    - :pageToken (String.t): Page token for shared drives.
    - :q (String.t): Query string for searching shared drives.
    - :useDomainAdminAccess (boolean()): Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.DriveList{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.DriveList.t()} | {:error, Tesla.Env.t()}
  def drive_drives_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :pageSize => :query,
      :pageToken => :query,
      :q => :query,
      :useDomainAdminAccess => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/drives", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.DriveList{}])
  end

  @doc """
  Restores a shared drive to the default view.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - drive_id (String.t): The ID of the shared drive.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Drive{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_unhide(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Drive.t()} | {:error, Tesla.Env.t()}
  def drive_drives_unhide(connection, drive_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/drive/v3/drives/{driveId}/unhide", %{
        "driveId" => URI.encode(drive_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Drive{}])
  end

  @doc """
  Updates the metadate for a shared drive.

  ## Parameters

  - connection (GoogleApi.Drive.V3.Connection): Connection to server
  - drive_id (String.t): The ID of the shared drive.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :useDomainAdminAccess (boolean()): Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.
    - :body (GoogleApi.Drive.V3.Model.Drive.t): 

  ## Returns

  {:ok, %GoogleApi.Drive.V3.Model.Drive{}} on success
  {:error, info} on failure
  """
  @spec drive_drives_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Drive.t()} | {:error, Tesla.Env.t()}
  def drive_drives_update(connection, drive_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :useDomainAdminAccess => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/drive/v3/drives/{driveId}", %{
        "driveId" => URI.encode(drive_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Drive{}])
  end
end
