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

defmodule GoogleApi.DFAReporting.V33.Api.Reports do
  @moduledoc """
  API calls for all endpoints tagged `Reports`.
  """

  alias GoogleApi.DFAReporting.V33.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes a report by its ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the report.
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

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dfareporting_reports_delete(
        connection,
        profile_id,
        report_id,
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Retrieves a report by its ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the report.
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

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Report{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Report.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_get(
        connection,
        profile_id,
        report_id,
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
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Report{}])
  end

  @doc """
  Creates a report.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Report.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Report{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Report.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_insert(connection, profile_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Report{}])
  end

  @doc """
  Retrieves list of reports.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:pageToken` (*type:* `String.t`) - The value of the nextToken from the previous result page.
      *   `:scope` (*type:* `String.t`) - The scope that defines which results are returned.
      *   `:sortField` (*type:* `String.t`) - The field by which to sort the list.
      *   `:sortOrder` (*type:* `String.t`) - Order of sorted results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.ReportList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.ReportList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_list(connection, profile_id, optional_params \\ [], opts \\ []) do
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
      :scope => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.ReportList{}])
  end

  @doc """
  Updates a report. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the report.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Report.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Report{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Report.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_patch(
        connection,
        profile_id,
        report_id,
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
      |> Request.method(:patch)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Report{}])
  end

  @doc """
  Runs a report.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the report.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:synchronous` (*type:* `boolean()`) - If set and true, tries to run the report synchronously.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.File{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_run(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.File.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_run(
        connection,
        profile_id,
        report_id,
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
      :synchronous => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}/run", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.File{}])
  end

  @doc """
  Updates a report.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the report.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Report.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Report{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Report.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_update(
        connection,
        profile_id,
        report_id,
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Report{}])
  end

  @doc """
  Returns the fields that are compatible to be selected in the respective sections of a report criteria, given the fields already selected in the input report and user permissions.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Report.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.CompatibleFields{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_compatible_fields_query(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.CompatibleFields.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_compatible_fields_query(
        connection,
        profile_id,
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
      |> Request.method(:post)
      |> Request.url(
        "/dfareporting/v3.3/userprofiles/{profileId}/reports/compatiblefields/query",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.CompatibleFields{}])
  end

  @doc """
  Retrieves a report file by its report ID and file ID. This method supports media download.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA user profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the report.
  *   `file_id` (*type:* `String.t`) - The ID of the report file.
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

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.File{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_files_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.File.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_files_get(
        connection,
        profile_id,
        report_id,
        file_id,
        optional_params \\ [],
        opts \\ []
      ) do
    opts =
      if Keyword.get(optional_params, :alt) == "media",
        do: Keyword.put_new(opts, :decode, false),
        else: opts

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
      |> Request.url(
        "/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}/files/{fileId}",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
          "reportId" => URI.encode(report_id, &URI.char_unreserved?/1),
          "fileId" => URI.encode(file_id, &(URI.char_unreserved?(&1) || &1 == ?/))
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.File{}])
  end

  @doc """
  Lists files for a report.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - The DFA profile ID.
  *   `report_id` (*type:* `String.t`) - The ID of the parent report.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:pageToken` (*type:* `String.t`) - The value of the nextToken from the previous result page.
      *   `:sortField` (*type:* `String.t`) - The field by which to sort the list.
      *   `:sortOrder` (*type:* `String.t`) - Order of sorted results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.FileList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_reports_files_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.FileList.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_reports_files_list(
        connection,
        profile_id,
        report_id,
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
      :maxResults => :query,
      :pageToken => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/reports/{reportId}/files", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "reportId" => URI.encode(report_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.FileList{}])
  end
end
