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

defmodule GoogleApi.ArtifactRegistry.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.ArtifactRegistry.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Gets a repository.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ArtifactRegistry.V1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. Required. The name of the repository to retrieve.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `repositories_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
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

  *   `{:ok, %GoogleApi.ArtifactRegistry.V1.Model.Repository{}}` on success
  *   `{:error, info}` on failure
  """
  @spec artifactregistry_projects_locations_repositories_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ArtifactRegistry.V1.Model.Repository.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def artifactregistry_projects_locations_repositories_get(
        connection,
        projects_id,
        locations_id,
        repositories_id,
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
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "repositoriesId" => URI.encode(repositories_id, &(URI.char_unreserved?(&1) || &1 == ?/))
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ArtifactRegistry.V1.Model.Repository{}])
  end

  @doc """
  Lists repositories.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ArtifactRegistry.V1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `parent`. Required. The name of the parent resource whose repositories will be listed.
  *   `locations_id` (*type:* `String.t`) - Part of `parent`. See documentation of `projectsId`.
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of repositories to return.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous list request, if any.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ArtifactRegistry.V1.Model.ListRepositoriesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec artifactregistry_projects_locations_repositories_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ArtifactRegistry.V1.Model.ListRepositoriesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def artifactregistry_projects_locations_repositories_list(
        connection,
        projects_id,
        locations_id,
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
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/projects/{projectsId}/locations/{locationsId}/repositories", %{
        "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
        "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ArtifactRegistry.V1.Model.ListRepositoriesResponse{}]
    )
  end

  @doc """
  Gets a docker image.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ArtifactRegistry.V1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. Required. The name of the docker images.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `repositories_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `docker_images_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
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

  *   `{:ok, %GoogleApi.ArtifactRegistry.V1.Model.DockerImage{}}` on success
  *   `{:error, info}` on failure
  """
  @spec artifactregistry_projects_locations_repositories_docker_images_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ArtifactRegistry.V1.Model.DockerImage.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def artifactregistry_projects_locations_repositories_docker_images_get(
        connection,
        projects_id,
        locations_id,
        repositories_id,
        docker_images_id,
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
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/dockerImages/{dockerImagesId}",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "repositoriesId" => URI.encode(repositories_id, &URI.char_unreserved?/1),
          "dockerImagesId" =>
            URI.encode(docker_images_id, &(URI.char_unreserved?(&1) || &1 == ?/))
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.ArtifactRegistry.V1.Model.DockerImage{}])
  end

  @doc """
  Lists docker images.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ArtifactRegistry.V1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `parent`. Required. The name of the parent resource whose docker images will be listed.
  *   `locations_id` (*type:* `String.t`) - Part of `parent`. See documentation of `projectsId`.
  *   `repositories_id` (*type:* `String.t`) - Part of `parent`. See documentation of `projectsId`.
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
      *   `:pageSize` (*type:* `integer()`) - The maximum number of artifacts to return.
      *   `:pageToken` (*type:* `String.t`) - The next_page_token value returned from a previous list request, if any.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.ArtifactRegistry.V1.Model.ListDockerImagesResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec artifactregistry_projects_locations_repositories_docker_images_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ArtifactRegistry.V1.Model.ListDockerImagesResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def artifactregistry_projects_locations_repositories_docker_images_list(
        connection,
        projects_id,
        locations_id,
        repositories_id,
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
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url(
        "/v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/dockerImages",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "repositoriesId" => URI.encode(repositories_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ArtifactRegistry.V1.Model.ListDockerImagesResponse{}]
    )
  end
end
