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

defmodule GoogleApi.Compute.V1.Api.ResourcePolicies do
  @moduledoc """
  API calls for all endpoints tagged `ResourcePolicies`.
  """

  alias GoogleApi.Compute.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves an aggregated list of resource policies.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:filter` (*type:* `String.t`) - A filter expression that filters resources listed in the response. The expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
      *   `:includeAllScopes` (*type:* `boolean()`) - Indicates whether every visible scope for each scope type (zone, region, global) should be included in the response. For new resource types added after this field, the flag has no effect as new resource types will always include every visible scope for each scope type in response. For resource types which predate this field, if this flag is omitted or false, only scopes of the scope types where the resource type is expected to be found will be included.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
      *   `:orderBy` (*type:* `String.t`) - Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy="creationTimestamp desc"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.
      *   `:pageToken` (*type:* `String.t`) - Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.
      *   `:returnPartialSuccess` (*type:* `boolean()`) - Opt-in for partial success behavior which provides partial results in case of failure. The default value is false.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_aggregated_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_aggregated_list(
        connection,
        project,
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
      :userIp => :query,
      :filter => :query,
      :includeAllScopes => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :returnPartialSuccess => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/aggregated/resourcePolicies", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Compute.V1.Model.ResourcePolicyAggregatedList{}]
    )
  end

  @doc """
  Deletes the specified resource policy.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
  *   `resource_policy` (*type:* `String.t`) - Name of the resource policy to delete.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:requestId` (*type:* `String.t`) - An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_delete(
        connection,
        project,
        region,
        resource_policy,
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
      :userIp => :query,
      :requestId => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/projects/{project}/regions/{region}/resourcePolicies/{resourcePolicy}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "resourcePolicy" => URI.encode(resource_policy, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  Retrieves all information of the specified resource policy.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
  *   `resource_policy` (*type:* `String.t`) - Name of the resource policy to retrieve.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.ResourcePolicy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.ResourcePolicy.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_get(
        connection,
        project,
        region,
        resource_policy,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/regions/{region}/resourcePolicies/{resourcePolicy}", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1),
        "resourcePolicy" => URI.encode(resource_policy, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.ResourcePolicy{}])
  end

  @doc """
  Gets the access control policy for a resource. May be empty if no such policy or resource exists.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - The name of the region for this request.
  *   `resource` (*type:* `String.t`) - Name or id of the resource for this request.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:optionsRequestedPolicyVersion` (*type:* `integer()`) - Requested IAM Policy version.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_get_iam_policy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Policy.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_get_iam_policy(
        connection,
        project,
        region,
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
      :uploadType => :query,
      :upload_protocol => :query,
      :userIp => :query,
      :optionsRequestedPolicyVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/projects/{project}/regions/{region}/resourcePolicies/{resource}/getIamPolicy",
        %{
          "project" => URI.encode(project, &URI.char_unreserved?/1),
          "region" => URI.encode(region, &URI.char_unreserved?/1),
          "resource" => URI.encode(resource, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Policy{}])
  end

  @doc """
  Creates a new resource policy.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:requestId` (*type:* `String.t`) - An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
      *   `:body` (*type:* `GoogleApi.Compute.V1.Model.ResourcePolicy.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Operation{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_insert(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Operation.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_insert(
        connection,
        project,
        region,
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
      :userIp => :query,
      :requestId => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/projects/{project}/regions/{region}/resourcePolicies", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Operation{}])
  end

  @doc """
  A list all the resource policies that have been configured for the specified project in specified region.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - Name of the region for this request.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:filter` (*type:* `String.t`) - A filter expression that filters resources listed in the response. The expression must specify the field name, an operator, and the value that you want to use for filtering. The value must be a string, a number, or a boolean. The operator must be either `=`, `!=`, `>`, `<`, `<=`, `>=` or `:`. For example, if you are filtering Compute Engine instances, you can exclude instances named `example-instance` by specifying `name != example-instance`. The `:` operator can be used with string fields to match substrings. For non-string fields it is equivalent to the `=` operator. The `:*` comparison can be used to test whether a key has been defined. For example, to find all objects with `owner` label use: ``` labels.owner:* ``` You can also filter nested fields. For example, you could specify `scheduling.automaticRestart = false` to include instances only if they are not scheduled for automatic restarts. You can use filtering on nested fields to filter based on resource labels. To filter on multiple expressions, provide each separate expression within parentheses. For example: ``` (scheduling.automaticRestart = true) (cpuPlatform = "Intel Skylake") ``` By default, each expression is an `AND` expression. However, you can include `AND` and `OR` expressions explicitly. For example: ``` (cpuPlatform = "Intel Skylake") OR (cpuPlatform = "Intel Broadwell") AND (scheduling.automaticRestart = true) ```
      *   `:maxResults` (*type:* `integer()`) - The maximum number of results per page that should be returned. If the number of available results is larger than `maxResults`, Compute Engine returns a `nextPageToken` that can be used to get the next page of results in subsequent list requests. Acceptable values are `0` to `500`, inclusive. (Default: `500`)
      *   `:orderBy` (*type:* `String.t`) - Sorts list results by a certain order. By default, results are returned in alphanumerical order based on the resource name. You can also sort results in descending order based on the creation timestamp using `orderBy="creationTimestamp desc"`. This sorts results based on the `creationTimestamp` field in reverse chronological order (newest result first). Use this to sort resources like operations so that the newest operation is returned first. Currently, only sorting by `name` or `creationTimestamp desc` is supported.
      *   `:pageToken` (*type:* `String.t`) - Specifies a page token to use. Set `pageToken` to the `nextPageToken` returned by a previous list request to get the next page of results.
      *   `:returnPartialSuccess` (*type:* `boolean()`) - Opt-in for partial success behavior which provides partial results in case of failure. The default value is false.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.ResourcePolicyList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.ResourcePolicyList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_list(
        connection,
        project,
        region,
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
      :userIp => :query,
      :filter => :query,
      :maxResults => :query,
      :orderBy => :query,
      :pageToken => :query,
      :returnPartialSuccess => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/projects/{project}/regions/{region}/resourcePolicies", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "region" => URI.encode(region, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.ResourcePolicyList{}])
  end

  @doc """
  Sets the access control policy on the specified resource. Replaces any existing policy.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - The name of the region for this request.
  *   `resource` (*type:* `String.t`) - Name or id of the resource for this request.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:body` (*type:* `GoogleApi.Compute.V1.Model.RegionSetPolicyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_set_iam_policy(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.Policy.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_set_iam_policy(
        connection,
        project,
        region,
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
      :uploadType => :query,
      :upload_protocol => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/projects/{project}/regions/{region}/resourcePolicies/{resource}/setIamPolicy",
        %{
          "project" => URI.encode(project, &URI.char_unreserved?/1),
          "region" => URI.encode(region, &URI.char_unreserved?/1),
          "resource" => URI.encode(resource, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.Policy{}])
  end

  @doc """
  Returns permissions that a caller has on the specified resource.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Compute.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Project ID for this request.
  *   `region` (*type:* `String.t`) - The name of the region for this request.
  *   `resource` (*type:* `String.t`) - Name or id of the resource for this request.
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
      *   `:userIp` (*type:* `String.t`) - Legacy name for parameter that has been superseded by `quotaUser`.
      *   `:body` (*type:* `GoogleApi.Compute.V1.Model.TestPermissionsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Compute.V1.Model.TestPermissionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec compute_resource_policies_test_iam_permissions(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Compute.V1.Model.TestPermissionsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def compute_resource_policies_test_iam_permissions(
        connection,
        project,
        region,
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
      :uploadType => :query,
      :upload_protocol => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url(
        "/projects/{project}/regions/{region}/resourcePolicies/{resource}/testIamPermissions",
        %{
          "project" => URI.encode(project, &URI.char_unreserved?/1),
          "region" => URI.encode(region, &URI.char_unreserved?/1),
          "resource" => URI.encode(resource, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Compute.V1.Model.TestPermissionsResponse{}])
  end
end
