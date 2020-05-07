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

defmodule GoogleApi.Logging.V2.Api.Logs do
  @moduledoc """
  API calls for all endpoints tagged `Logs`.
  """

  alias GoogleApi.Logging.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes all the log entries in a log. The log reappears if it receives new entries. Log entries written shortly before the delete operation might not be deleted. Entries received after the delete operation with a timestamp before the operation will be deleted.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `logName`. Required. The resource name of the log to delete:
      "projects/[PROJECT_ID]/logs/[LOG_ID]"
      "organizations/[ORGANIZATION_ID]/logs/[LOG_ID]"
      "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]"
      "folders/[FOLDER_ID]/logs/[LOG_ID]"
      [LOG_ID] must be URL-encoded. For example, "projects/my-project-id/logs/syslog", "organizations/1234567890/logs/cloudresourcemanager.googleapis.com%2Factivity". For more information about log names, see LogEntry.
  *   `v2_id1` (*type:* `String.t`) - Part of `logName`. See documentation of `v2Id`.
  *   `logs_id` (*type:* `String.t`) - Part of `logName`. See documentation of `v2Id`.
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

  *   `{:ok, %GoogleApi.Logging.V2.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_logs_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.Logging.V2.Model.Empty.t()} | {:ok, Tesla.Env.t()} | {:error, any()}
  def logging_logs_delete(connection, v2_id, v2_id1, logs_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v2/{v2Id}/{v2Id1}/logs/{logsId}", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1),
        "logsId" => URI.encode(logs_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.Empty{}])
  end

  @doc """
  Lists the logs in projects, organizations, folders, or billing accounts. Only logs that have entries are listed.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Logging.V2.Connection.t`) - Connection to server
  *   `v2_id` (*type:* `String.t`) - Part of `parent`. Required. The resource name that owns the logs:
      "projects/[PROJECT_ID]"
      "organizations/[ORGANIZATION_ID]"
      "billingAccounts/[BILLING_ACCOUNT_ID]"
      "folders/[FOLDER_ID]"

  *   `v2_id1` (*type:* `String.t`) - Part of `parent`. See documentation of `v2Id`.
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
      *   `:pageSize` (*type:* `integer()`) - Optional. The maximum number of results to return from this request. Non-positive values are ignored. The presence of nextPageToken in the response indicates that more results might be available.
      *   `:pageToken` (*type:* `String.t`) - Optional. If present, then retrieve the next batch of results from the preceding call to this method. pageToken must be the value of nextPageToken from the previous response. The values of other method parameters should be identical to those in the previous call.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Logging.V2.Model.ListLogsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec logging_logs_list(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Logging.V2.Model.ListLogsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def logging_logs_list(connection, v2_id, v2_id1, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v2/{v2Id}/{v2Id1}/logs", %{
        "v2Id" => URI.encode(v2_id, &URI.char_unreserved?/1),
        "v2Id1" => URI.encode(v2_id1, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Logging.V2.Model.ListLogsResponse{}])
  end
end
