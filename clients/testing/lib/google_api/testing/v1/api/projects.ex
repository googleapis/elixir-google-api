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

defmodule GoogleApi.Testing.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.Testing.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Cancels unfinished test executions in a test matrix.
  This call returns immediately and cancellation proceeds asychronously.
  If the matrix is already final, this operation will have no effect.

  May return any of the following canonical error codes:

  - PERMISSION_DENIED - if the user is not authorized to read project
  - INVALID_ARGUMENT - if the request is malformed
  - NOT_FOUND - if the Test Matrix does not exist

  ## Parameters

  - connection (GoogleApi.Testing.V1.Connection): Connection to server
  - project_id (String.t): Cloud project that owns the test.
  - test_matrix_id (String.t): Test matrix that will be canceled.
  - optional_params (keyword()): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. "media", "multipart").
    - :upload_protocol (String.t): Upload protocol for media (e.g. "raw", "multipart").

  ## Returns

  {:ok, %GoogleApi.Testing.V1.Model.CancelTestMatrixResponse{}} on success
  {:error, info} on failure
  """
  @spec testing_projects_test_matrices_cancel(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.Testing.V1.Model.CancelTestMatrixResponse.t()} | {:error, Tesla.Env.t()}
  def testing_projects_test_matrices_cancel(
        connection,
        project_id,
        test_matrix_id,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "testMatrixId" => URI.encode(test_matrix_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Testing.V1.Model.CancelTestMatrixResponse{}])
  end

  @doc """
  Creates and runs a matrix of tests according to the given specifications.
  Unsupported environments will be returned in the state UNSUPPORTED.
  Matrices are limited to at most 200 supported executions.

  May return any of the following canonical error codes:

  - PERMISSION_DENIED - if the user is not authorized to write to project
  - INVALID_ARGUMENT - if the request is malformed or if the matrix expands
                     to more than 200 supported executions

  ## Parameters

  - connection (GoogleApi.Testing.V1.Connection): Connection to server
  - project_id (String.t): The GCE project under which this job will run.
  - optional_params (keyword()): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. "media", "multipart").
    - :upload_protocol (String.t): Upload protocol for media (e.g. "raw", "multipart").
    - :requestId (String.t): A string id used to detect duplicated requests.
  Ids are automatically scoped to a project, so
  users should ensure the ID is unique per-project.
  A UUID is recommended.

  Optional, but strongly recommended.
    - :body (GoogleApi.Testing.V1.Model.TestMatrix.t): 

  ## Returns

  {:ok, %GoogleApi.Testing.V1.Model.TestMatrix{}} on success
  {:error, info} on failure
  """
  @spec testing_projects_test_matrices_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Testing.V1.Model.TestMatrix.t()} | {:error, Tesla.Env.t()}
  def testing_projects_test_matrices_create(
        connection,
        project_id,
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
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/projects/{projectId}/testMatrices", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Testing.V1.Model.TestMatrix{}])
  end

  @doc """
  Checks the status of a test matrix.

  May return any of the following canonical error codes:

  - PERMISSION_DENIED - if the user is not authorized to read project
  - INVALID_ARGUMENT - if the request is malformed
  - NOT_FOUND - if the Test Matrix does not exist

  ## Parameters

  - connection (GoogleApi.Testing.V1.Connection): Connection to server
  - project_id (String.t): Cloud project that owns the test matrix.
  - test_matrix_id (String.t): Unique test matrix id which was assigned by the service.
  - optional_params (keyword()): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :uploadType (String.t): Legacy upload protocol for media (e.g. "media", "multipart").
    - :upload_protocol (String.t): Upload protocol for media (e.g. "raw", "multipart").

  ## Returns

  {:ok, %GoogleApi.Testing.V1.Model.TestMatrix{}} on success
  {:error, info} on failure
  """
  @spec testing_projects_test_matrices_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Testing.V1.Model.TestMatrix.t()} | {:error, Tesla.Env.t()}
  def testing_projects_test_matrices_get(
        connection,
        project_id,
        test_matrix_id,
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
      :upload_protocol => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectId}/testMatrices/{testMatrixId}", %{
        "projectId" => URI.encode(project_id, &URI.char_unreserved?/1),
        "testMatrixId" => URI.encode(test_matrix_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Testing.V1.Model.TestMatrix{}])
  end
end
