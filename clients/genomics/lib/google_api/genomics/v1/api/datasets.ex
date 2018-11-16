# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Genomics.V1.Api.Datasets do
  @moduledoc """
  API calls for all endpoints tagged `Datasets`.
  """

  alias GoogleApi.Genomics.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Creates a new dataset.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Dataset): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_create(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_create(connection, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/datasets")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Dataset{}])
  end

  @doc """
  Deletes a dataset and all of its contents (all read group sets, reference sets, variant sets, call sets, annotation sets, etc.) This is reversible (up to one week after the deletion) via the datasets.undelete operation.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - dataset_id (String.t): The ID of the dataset to be deleted.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_delete(connection, dataset_id, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/datasets/{datasetId}", %{
        "datasetId" => URI.encode_www_form(dataset_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Empty{}])
  end

  @doc """
  Gets a dataset by ID.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - dataset_id (String.t): The ID of the dataset.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_get(connection, dataset_id, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/datasets/{datasetId}", %{
        "datasetId" => URI.encode_www_form(dataset_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Dataset{}])
  end

  @doc """
  Gets the access control policy for the dataset. This is empty if the policy or resource does not exist.  See &lt;a href&#x3D;\&quot;/iam/docs/managing-policies#getting_a_policy\&quot;&gt;Getting a Policy&lt;/a&gt; for more information.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - resource (String.t): REQUIRED: The resource for which policy is being specified. Format is &#x60;datasets/&lt;dataset ID&gt;&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (GetIamPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_get_iam_policy(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_get_iam_policy(connection, resource, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+resource}:getIamPolicy", %{
        "resource" => URI.encode_www_form(resource)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Policy{}])
  end

  @doc """
  Lists datasets within a project.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): The maximum number of results to return in a single page. If unspecified, defaults to 50. The maximum value is 1024.
    - :projectId (String.t): Required. The Google Cloud project ID to list datasets for.
    - :pageToken (String.t): The continuation token, which is used to page through large result sets. To get the next page of results, set this parameter to the value of &#x60;nextPageToken&#x60; from the previous response.

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.ListDatasetsResponse{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.ListDatasetsResponse.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_list(connection, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :projectId => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/datasets")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.ListDatasetsResponse{}])
  end

  @doc """
  Updates a dataset.  This method supports patch semantics.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - dataset_id (String.t): The ID of the dataset to be updated.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :updateMask (String.t): An optional mask specifying which fields to update. At this time, the only mutable field is name. The only acceptable value is \&quot;name\&quot;. If unspecified, all mutable fields will be updated.
    - :body (Dataset): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_patch(connection, dataset_id, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/datasets/{datasetId}", %{
        "datasetId" => URI.encode_www_form(dataset_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Dataset{}])
  end

  @doc """
  Sets the access control policy on the specified dataset. Replaces any existing policy.  See &lt;a href&#x3D;\&quot;/iam/docs/managing-policies#setting_a_policy\&quot;&gt;Setting a Policy&lt;/a&gt; for more information.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - resource (String.t): REQUIRED: The resource for which policy is being specified. Format is &#x60;datasets/&lt;dataset ID&gt;&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (SetIamPolicyRequest): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Policy{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_set_iam_policy(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Policy.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_set_iam_policy(connection, resource, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+resource}:setIamPolicy", %{
        "resource" => URI.encode_www_form(resource)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Policy{}])
  end

  @doc """
  Returns permissions that a caller has on the specified resource. See &lt;a href&#x3D;\&quot;/iam/docs/managing-policies#testing_permissions\&quot;&gt;Testing Permissions&lt;/a&gt; for more information.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - resource (String.t): REQUIRED: The resource for which policy is being specified. Format is &#x60;datasets/&lt;dataset ID&gt;&#x60;.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (TestIamPermissionsRequest): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.TestIamPermissionsResponse{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_test_iam_permissions(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.TestIamPermissionsResponse.t()}
          | {:error, Tesla.Env.t()}
  def genomics_datasets_test_iam_permissions(
        connection,
        resource,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+resource}:testIamPermissions", %{
        "resource" => URI.encode_www_form(resource)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Genomics.V1.Model.TestIamPermissionsResponse{}]
    )
  end

  @doc """
  Undeletes a dataset by restoring a dataset which was deleted via this API.  This operation is only possible for a week after the deletion occurred.

  ## Parameters

  - connection (GoogleApi.Genomics.V1.Connection): Connection to server
  - dataset_id (String.t): The ID of the dataset to be undeleted.
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (UndeleteDatasetRequest): 

  ## Returns

  {:ok, %GoogleApi.Genomics.V1.Model.Dataset{}} on success
  {:error, info} on failure
  """
  @spec genomics_datasets_undelete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Genomics.V1.Model.Dataset.t()} | {:error, Tesla.Env.t()}
  def genomics_datasets_undelete(connection, dataset_id, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/datasets/{datasetId}:undelete", %{
        "datasetId" => URI.encode_www_form(dataset_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Genomics.V1.Model.Dataset{}])
  end
end
