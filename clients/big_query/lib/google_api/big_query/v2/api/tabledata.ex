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

defmodule GoogleApi.BigQuery.V2.Api.Tabledata do
  @moduledoc """
  API calls for all endpoints tagged `Tabledata`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Streams data into BigQuery one record at a time without needing to run a load job. Requires the WRITER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the destination table.
  - dataset_id (String.t): Dataset ID of the destination table.
  - table_id (String.t): Table ID of the destination table.
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequest.t): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tabledata_insert_all(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse.t()}
          | {:error, Tesla.Env.t()}
  def bigquery_tabledata_insert_all(
        connection,
        project_id,
        dataset_id,
        table_id,
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
        "/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}/insertAll",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
          "tableId" => URI.encode(table_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.BigQuery.V2.Model.TableDataInsertAllResponse{}]
    )
  end

  @doc """
  Retrieves table data from a specified set of rows. Requires the READER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the table to read
  - dataset_id (String.t): Dataset ID of the table to read
  - table_id (String.t): Table ID of the table to read
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :maxResults (integer()): Maximum number of results to return
    - :pageToken (String.t): Page token, returned by a previous call, identifying the result set
    - :selectedFields (String.t): List of fields to return (comma-separated). If unspecified, all fields are returned
    - :startIndex (String.t): Zero-based index of the starting row to read

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.TableDataList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_tabledata_list(Tesla.Env.client(), String.t(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.TableDataList.t()} | {:error, Tesla.Env.t()}
  def bigquery_tabledata_list(
        connection,
        project_id,
        dataset_id,
        table_id,
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
      :selectedFields => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/bigquery/v2/projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data",
        %{
          "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
          "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1),
          "tableId" => URI.encode(table_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.TableDataList{}])
  end
end
