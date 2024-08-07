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

defmodule GoogleApi.ContainerAnalysis.V1alpha1.Api.Providers do
  @moduledoc """
  API calls for all endpoints tagged `Providers`.
  """

  alias GoogleApi.ContainerAnalysis.V1alpha1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Creates a new `Note`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the project. Should be of the form "providers/{provider_id}". @Deprecated
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
      *   `:noteId` (*type:* `String.t`) - The ID to use for this note.
      *   `:parent` (*type:* `String.t`) - This field contains the project Id for example: "projects/{project_id}
      *   `:body` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Note.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.Note{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_create(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.Note.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_create(
        connection,
        name,
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
      :noteId => :query,
      :parent => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha1/{+name}/notes", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.Note{}])
  end

  @doc """
  Deletes the given `Note` from the system.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the note in the form of "providers/{provider_id}/notes/{NOTE_ID}"
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

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.Empty{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_delete(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.Empty.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_delete(
        connection,
        name,
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
      |> Request.method(:delete)
      |> Request.url("/v1alpha1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.Empty{}])
  end

  @doc """
  Returns the requested `Note`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the note in the form of "providers/{provider_id}/notes/{NOTE_ID}"
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

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.Note{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_get(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.Note.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_get(connection, name, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/v1alpha1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.Note{}])
  end

  @doc """
  Gets the access control policy for a note or an `Occurrence` resource. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a note or occurrence, respectively. Attempting to call this method on a resource without the required permission will result in a `PERMISSION_DENIED` error. Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has list permission on the project, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for occurrences and projects/{PROJECT_ID}/notes/{NOTE_ID} for notes

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
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
      *   `:body` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.GetIamPolicyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_get_iam_policy(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_get_iam_policy(
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
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha1/{+resource}:getIamPolicy", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy{}])
  end

  @doc """
  Lists all `Notes` for a given project.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name field will contain the project Id for example: "providers/{provider_id} @Deprecated
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
      *   `:filter` (*type:* `String.t`) - The filter expression.
      *   `:pageSize` (*type:* `integer()`) - Number of notes to return in the list.
      *   `:pageToken` (*type:* `String.t`) - Token to provide to skip to a particular spot in the list.
      *   `:parent` (*type:* `String.t`) - This field contains the project Id for example: "projects/{PROJECT_ID}".
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.ListNotesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.ListNotesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_list(connection, name, optional_params \\ [], opts \\ []) do
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
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query,
      :parent => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha1/{+name}/notes", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.ListNotesResponse{}]
    )
  end

  @doc """
  Updates an existing `Note`.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name of the note. Should be of the form "projects/{provider_id}/notes/{note_id}".
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
      *   `:updateMask` (*type:* `String.t`) - The fields to update.
      *   `:body` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.Note.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.Note{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_patch(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.Note.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_patch(connection, name, optional_params \\ [], opts \\ []) do
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
      :updateMask => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1alpha1/{+name}", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.Note{}])
  end

  @doc """
  Sets the access control policy on the specified `Note` or `Occurrence`. Requires `containeranalysis.notes.setIamPolicy` or `containeranalysis.occurrences.setIamPolicy` permission if the resource is a `Note` or an `Occurrence`, respectively. Attempting to call this method without these permissions will result in a ` `PERMISSION_DENIED` error. Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has `containeranalysis.notes.list` permission on a `Note` or `containeranalysis.occurrences.list` on an `Occurrence`, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{projectid}/occurrences/{occurrenceid}` for occurrences and projects/{projectid}/notes/{noteid} for notes

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
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
      *   `:body` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.SetIamPolicyRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_set_iam_policy(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_set_iam_policy(
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
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha1/{+resource}:setIamPolicy", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.Policy{}])
  end

  @doc """
  Returns the permissions that a caller has on the specified note or occurrence resource. Requires list permission on the project (for example, "storage.objects.list" on the containing bucket for testing permission of an object). Attempting to call this method on a non-existent resource will result in a `NOT_FOUND` error if the user has list permission on the project, or a `PERMISSION_DENIED` error otherwise. The resource takes the following formats: `projects/{PROJECT_ID}/occurrences/{OCCURRENCE_ID}` for `Occurrences` and `projects/{PROJECT_ID}/notes/{NOTE_ID}` for `Notes`

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `resource` (*type:* `String.t`) - REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.
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
      *   `:body` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Model.TestIamPermissionsRequest.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.TestIamPermissionsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_test_iam_permissions(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.TestIamPermissionsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_test_iam_permissions(
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
      :uploadType => :query,
      :upload_protocol => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1alpha1/{+resource}:testIamPermissions", %{
        "resource" => URI.encode(resource, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.TestIamPermissionsResponse{}]
    )
  end

  @doc """
  Lists `Occurrences` referencing the specified `Note`. Use this method to get all occurrences referencing your `Note` across all your customer projects.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ContainerAnalysis.V1alpha1.Connection.t`) - Connection to server
  *   `name` (*type:* `String.t`) - The name field will contain the note name for example: "provider/{provider_id}/notes/{note_id}"
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
      *   `:filter` (*type:* `String.t`) - The filter expression.
      *   `:pageSize` (*type:* `integer()`) - Number of notes to return in the list.
      *   `:pageToken` (*type:* `String.t`) - Token to provide to skip to a particular spot in the list.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ContainerAnalysis.V1alpha1.Model.ListNoteOccurrencesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec containeranalysis_providers_notes_occurrences_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ContainerAnalysis.V1alpha1.Model.ListNoteOccurrencesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def containeranalysis_providers_notes_occurrences_list(
        connection,
        name,
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
      :filter => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1alpha1/{+name}/occurrences", %{
        "name" => URI.encode(name, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ContainerAnalysis.V1alpha1.Model.ListNoteOccurrencesResponse{}]
    )
  end
end
