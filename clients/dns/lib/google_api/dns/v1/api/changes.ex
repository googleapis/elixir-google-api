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

defmodule GoogleApi.DNS.V1.Api.Changes do
  @moduledoc """
  API calls for all endpoints tagged `Changes`.
  """

  alias GoogleApi.DNS.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Atomically update the ResourceRecordSet collection.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
      *   `:body` (*type:* `GoogleApi.DNS.V1.Model.Change.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.Change{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_changes_create(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.Change.t()} | {:error, Tesla.Env.t()}
  def dns_changes_create(connection, project, managed_zone, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/{project}/managedZones/{managedZone}/changes", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.Change{}])
  end

  @doc """
  Fetch the representation of an existing Change.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  *   `change_id` (*type:* `String.t`) - The identifier of the requested change, from a previous ResourceRecordSetsChangeResponse.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.Change{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_changes_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.DNS.V1.Model.Change.t()} | {:error, Tesla.Env.t()}
  def dns_changes_get(
        connection,
        project,
        managed_zone,
        change_id,
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
      :clientOperationId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones/{managedZone}/changes/{changeId}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &URI.char_unreserved?/1),
        "changeId" => URI.encode(change_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.Change{}])
  end

  @doc """
  Enumerate Changes to a ResourceRecordSet collection.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
      *   `:pageToken` (*type:* `String.t`) - Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
      *   `:sortBy` (*type:* `String.t`) - Sorting criterion. The only supported value is change sequence.
      *   `:sortOrder` (*type:* `String.t`) - Sorting order direction: 'ascending' or 'descending'.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.ChangesListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_changes_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ChangesListResponse.t()} | {:error, Tesla.Env.t()}
  def dns_changes_list(connection, project, managed_zone, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query,
      :sortBy => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones/{managedZone}/changes", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.ChangesListResponse{}])
  end
end
