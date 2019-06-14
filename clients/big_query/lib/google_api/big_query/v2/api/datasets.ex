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

defmodule GoogleApi.BigQuery.V2.Api.Datasets do
  @moduledoc """
  API calls for all endpoints tagged `Datasets`.
  """

  alias GoogleApi.BigQuery.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Deletes the dataset specified by the datasetId value. Before you can delete a dataset, you must delete all its tables, either manually or by specifying deleteContents. Immediately after deletion, you can create another dataset with the same name.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the dataset being deleted
  - dataset_id (String.t): Dataset ID of dataset being deleted
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :deleteContents (boolean()): If True, delete all the tables in the dataset. If False and the dataset contains tables, the request will fail. Default is False

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_delete(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def bigquery_datasets_delete(
        connection,
        project_id,
        dataset_id,
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
      :deleteContents => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Returns the dataset specified by datasetID.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the requested dataset
  - dataset_id (String.t): Dataset ID of the requested dataset
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def bigquery_datasets_get(connection, project_id, dataset_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Dataset{}])
  end

  @doc """
  Creates a new empty dataset.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the new dataset
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.BigQuery.V2.Model.Dataset.t): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def bigquery_datasets_insert(connection, project_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Dataset{}])
  end

  @doc """
  Lists all datasets in the specified project to which you have been granted the READER dataset role.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the datasets to be listed
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :all (boolean()): Whether to list all datasets, including hidden ones
    - :filter (String.t): An expression for filtering the results of the request by label. The syntax is "labels.<name>[:<value>]". Multiple filters can be ANDed together by connecting with a space. Example: "labels.department:receiving labels.active". See Filtering datasets using labels for details.
    - :maxResults (integer()): The maximum number of results to return
    - :pageToken (String.t): Page token, returned by a previous call, to request the next page of results

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.DatasetList{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.DatasetList.t()} | {:error, Tesla.Env.t()}
  def bigquery_datasets_list(connection, project_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :all => :query,
      :filter => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.DatasetList{}])
  end

  @doc """
  Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource. This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the dataset being updated
  - dataset_id (String.t): Dataset ID of the dataset being updated
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.BigQuery.V2.Model.Dataset.t): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_patch(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def bigquery_datasets_patch(
        connection,
        project_id,
        dataset_id,
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
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Dataset{}])
  end

  @doc """
  Updates information in an existing dataset. The update method replaces the entire dataset resource, whereas the patch method only replaces fields that are provided in the submitted dataset resource.

  ## Parameters

  - connection (GoogleApi.BigQuery.V2.Connection): Connection to server
  - project_id (String.t): Project ID of the dataset being updated
  - dataset_id (String.t): Dataset ID of the dataset being updated
  - optional_params (keyword()): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (GoogleApi.BigQuery.V2.Model.Dataset.t): 

  ## Returns

  {:ok, %GoogleApi.BigQuery.V2.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec bigquery_datasets_update(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.BigQuery.V2.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def bigquery_datasets_update(
        connection,
        project_id,
        dataset_id,
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
      |> Request.url("/bigquery/v2/projects/{projectId}/datasets/{datasetId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "datasetId" => URI.encode(dataset_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.BigQuery.V2.Model.Dataset{}])
  end
end
