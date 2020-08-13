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

defmodule GoogleApi.DNS.V1.Api.ManagedZones do
  @moduledoc """
  API calls for all endpoints tagged `ManagedZones`.
  """

  alias GoogleApi.DNS.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Create a new ManagedZone.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
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
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
      *   `:body` (*type:* `GoogleApi.DNS.V1.Model.ManagedZone.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.ManagedZone{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_managed_zones_create(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ManagedZone.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dns_managed_zones_create(connection, project, optional_params \\ [], opts \\ []) do
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
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/dns/v1/projects/{project}/managedZones", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.ManagedZone{}])
  end

  @doc """
  Delete a previously created ManagedZone.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
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
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_managed_zones_delete(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dns_managed_zones_delete(
        connection,
        project,
        managed_zone,
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
      :clientOperationId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/dns/v1/projects/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Fetch the representation of an existing ManagedZone.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
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
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.ManagedZone{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_managed_zones_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ManagedZone.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dns_managed_zones_get(connection, project, managed_zone, optional_params \\ [], opts \\ []) do
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
      :clientOperationId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dns/v1/projects/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.ManagedZone{}])
  end

  @doc """
  Enumerate ManagedZones that have been created but not yet deleted.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
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
      *   `:dnsName` (*type:* `String.t`) - Restricts the list to return only zones with this domain name.
      *   `:maxResults` (*type:* `integer()`) - Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
      *   `:pageToken` (*type:* `String.t`) - Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.ManagedZonesListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_managed_zones_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.ManagedZonesListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dns_managed_zones_list(connection, project, optional_params \\ [], opts \\ []) do
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
      :dnsName => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dns/v1/projects/{project}/managedZones", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.ManagedZonesListResponse{}])
  end

  @doc """
  Apply a partial update to an existing ManagedZone.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
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
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
      *   `:body` (*type:* `GoogleApi.DNS.V1.Model.ManagedZone.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_managed_zones_patch(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.Operation.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dns_managed_zones_patch(
        connection,
        project,
        managed_zone,
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
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/dns/v1/projects/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.Operation{}])
  end

  @doc """
  Update an existing ManagedZone.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
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
      *   `:clientOperationId` (*type:* `String.t`) - For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
      *   `:body` (*type:* `GoogleApi.DNS.V1.Model.ManagedZone.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_managed_zones_update(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DNS.V1.Model.Operation.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dns_managed_zones_update(
        connection,
        project,
        managed_zone,
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
      :clientOperationId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/dns/v1/projects/{project}/managedZones/{managedZone}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.Operation{}])
  end
end
