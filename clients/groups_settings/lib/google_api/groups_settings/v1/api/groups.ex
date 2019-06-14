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

defmodule GoogleApi.GroupsSettings.V1.Api.Groups do
  @moduledoc """
  API calls for all endpoints tagged `Groups`.
  """

  alias GoogleApi.GroupsSettings.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one resource by id.

  ## Parameters

  - connection (GoogleApi.GroupsSettings.V1.Connection): Connection to server
  - group_unique_id (String.t): The resource ID
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.GroupsSettings.V1.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_settings_groups_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.GroupsSettings.V1.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_settings_groups_get(connection, group_unique_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:get)
      |> Request.url("/{groupUniqueId}", %{
        "groupUniqueId" => URI.encode(group_unique_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.GroupsSettings.V1.Model.Groups{}])
  end

  @doc """
  Updates an existing resource. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.GroupsSettings.V1.Connection): Connection to server
  - group_unique_id (String.t): The resource ID
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.GroupsSettings.V1.Model.Groups.t): 

  ## Returns

  {:ok, %GoogleApi.GroupsSettings.V1.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_settings_groups_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.GroupsSettings.V1.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_settings_groups_patch(connection, group_unique_id, optional_params \\ [], opts \\ []) do
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
      |> Request.method(:patch)
      |> Request.url("/{groupUniqueId}", %{
        "groupUniqueId" => URI.encode(group_unique_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.GroupsSettings.V1.Model.Groups{}])
  end

  @doc """
  Updates an existing resource.

  ## Parameters

  - connection (GoogleApi.GroupsSettings.V1.Connection): Connection to server
  - group_unique_id (String.t): The resource ID
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.GroupsSettings.V1.Model.Groups.t): 

  ## Returns

  {:ok, %GoogleApi.GroupsSettings.V1.Model.Groups{}} on success
  {:error, info} on failure
  """
  @spec groups_settings_groups_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.GroupsSettings.V1.Model.Groups.t()} | {:error, Tesla.Env.t()}
  def groups_settings_groups_update(
        connection,
        group_unique_id,
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/{groupUniqueId}", %{
        "groupUniqueId" => URI.encode(group_unique_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.GroupsSettings.V1.Model.Groups{}])
  end
end
