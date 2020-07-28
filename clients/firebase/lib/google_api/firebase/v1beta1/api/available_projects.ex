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

defmodule GoogleApi.Firebase.V1beta1.Api.AvailableProjects do
  @moduledoc """
  API calls for all endpoints tagged `AvailableProjects`.
  """

  alias GoogleApi.Firebase.V1beta1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Lists each [Google Cloud Platform (GCP) `Project`]
  (https://cloud.google.com/resource-manager/reference/rest/v1/projects)
  that can have Firebase resources added to it.

  A Project will only be listed if:
  <ul>
  <li>The caller has sufficient
    [Google IAM](https://cloud.google.com/iam) permissions to call
    AddFirebase.
  </li>
  <li>The Project is not already a FirebaseProject.
  </li>
  <li>The Project is not in an Organization which has policies
    that prevent Firebase resources from being added.
  </li>
  </ul>

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Firebase.V1beta1.Connection.t`) - Connection to server
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of Projects to return in the response.

          The server may return fewer than this value at its discretion.
          If no value is specified (or too large a value is specified), the server
          will impose its own limit.

          This value cannot be negative.
      *   `:pageToken` (*type:* `String.t`) - Token returned from a previous call to `ListAvailableProjects`
          indicating where in the set of Projects to resume listing.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Firebase.V1beta1.Model.ListAvailableProjectsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec firebase_available_projects_list(Tesla.Env.client(), keyword(), keyword()) ::
          {:ok, GoogleApi.Firebase.V1beta1.Model.ListAvailableProjectsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def firebase_available_projects_list(connection, optional_params \\ [], opts \\ []) do
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
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1beta1/availableProjects", %{})
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Firebase.V1beta1.Model.ListAvailableProjectsResponse{}]
    )
  end
end
