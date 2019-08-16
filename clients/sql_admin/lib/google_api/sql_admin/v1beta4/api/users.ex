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

defmodule GoogleApi.SQLAdmin.V1beta4.Api.Users do
  @moduledoc """
  API calls for all endpoints tagged `Users`.
  """

  alias GoogleApi.SQLAdmin.V1beta4.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes a user from a Cloud SQL instance.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Database instance ID. This does not include the project ID.
  *   `host` (*type:* `String.t`) - Host of the user in the instance.
  *   `name` (*type:* `String.t`) - Name of the user in the instance.
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

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_users_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_users_delete(
        connection,
        project,
        instance,
        host,
        name,
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
      |> Request.method(:delete)
      |> Request.url("/projects/{project}/instances/{instance}/users", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :host, host)
      |> Request.add_param(:query, :name, name)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Creates a new user in a Cloud SQL instance.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Database instance ID. This does not include the project ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.User.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_users_insert(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_users_insert(connection, project, instance, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/projects/{project}/instances/{instance}/users", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end

  @doc """
  Lists users in the specified Cloud SQL instance.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Database instance ID. This does not include the project ID.
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

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_users_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse.t()} | {:error, Tesla.Env.t()}
  def sql_users_list(connection, project, instance, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/projects/{project}/instances/{instance}/users", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.UsersListResponse{}])
  end

  @doc """
  Updates an existing user in a Cloud SQL instance.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.SQLAdmin.V1beta4.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID of the project that contains the instance.
  *   `instance` (*type:* `String.t`) - Database instance ID. This does not include the project ID.
  *   `name` (*type:* `String.t`) - Name of the user in the instance.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:host` (*type:* `String.t`) - Host of the user in the instance.
      *   `:body` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.User.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec sql_users_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.SQLAdmin.V1beta4.Model.Operation.t()} | {:error, Tesla.Env.t()}
  def sql_users_update(connection, project, instance, name, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :host => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/projects/{project}/instances/{instance}/users", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "instance" => URI.encode(instance, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :name, name)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.SQLAdmin.V1beta4.Model.Operation{}])
  end
end
