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

defmodule GoogleApi.ArtifactRegistry.V1.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias GoogleApi.ArtifactRegistry.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Download a file.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.ArtifactRegistry.V1.Connection.t`) - Connection to server
  *   `projects_id` (*type:* `String.t`) - Part of `name`. Required. The name of the file to download.
  *   `locations_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `repositories_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
  *   `files_id` (*type:* `String.t`) - Part of `name`. See documentation of `projectsId`.
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

  *   `{:ok, %GoogleApi.ArtifactRegistry.V1.Model.DownloadFileResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec artifactregistry_media_download(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.ArtifactRegistry.V1.Model.DownloadFileResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def artifactregistry_media_download(
        connection,
        projects_id,
        locations_id,
        repositories_id,
        files_id,
        optional_params \\ [],
        opts \\ []
      ) do
    opts =
      if Keyword.get(optional_params, :alt) == "media",
        do: Keyword.put_new(opts, :decode, false),
        else: opts

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
        "/v1/projects/{projectsId}/locations/{locationsId}/repositories/{repositoriesId}/files/{filesId}:download",
        %{
          "projectsId" => URI.encode(projects_id, &URI.char_unreserved?/1),
          "locationsId" => URI.encode(locations_id, &URI.char_unreserved?/1),
          "repositoriesId" => URI.encode(repositories_id, &URI.char_unreserved?/1),
          "filesId" => URI.encode(files_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.ArtifactRegistry.V1.Model.DownloadFileResponse{}]
    )
  end
end
