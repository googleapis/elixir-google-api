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

defmodule GoogleApi.Pollen.V1.Api.MapTypes do
  @moduledoc """
  API calls for all endpoints tagged `MapTypes`.
  """

  alias GoogleApi.Pollen.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Returns a byte array containing the data of the tile PNG image.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Pollen.V1.Connection.t`) - Connection to server
  *   `map_type` (*type:* `String.t`) - Required. The type of the pollen heatmap. Defines the combination of pollen type and index that the map will graphically represent.
  *   `zoom` (*type:* `integer()`) - Required. The map's zoom level. Defines how large or small the contents of a map appear in a map view. * Zoom level 0 is the entire world in a single tile. * Zoom level 1 is the entire world in 4 tiles. * Zoom level 2 is the entire world in 16 tiles. * Zoom level 16 is the entire world in 65,536 tiles. Allowed values: 0-16
  *   `x` (*type:* `integer()`) - Required. Defines the east-west point in the requested tile.
  *   `y` (*type:* `integer()`) - Required. Defines the north-south point in the requested tile.
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

  *   `{:ok, %GoogleApi.Pollen.V1.Model.HttpBody{}}` on success
  *   `{:error, info}` on failure
  """
  @spec pollen_map_types_heatmap_tiles_lookup_heatmap_tile(
          Tesla.Env.client(),
          String.t(),
          integer(),
          integer(),
          integer(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.Pollen.V1.Model.HttpBody.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def pollen_map_types_heatmap_tiles_lookup_heatmap_tile(
        connection,
        map_type,
        zoom,
        x,
        y,
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
      |> Request.url("/v1/mapTypes/{mapType}/heatmapTiles/{zoom}/{x}/{y}", %{
        "mapType" => URI.encode(map_type, &URI.char_unreserved?/1),
        "zoom" => zoom,
        "x" => x,
        "y" => y
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Pollen.V1.Model.HttpBody{}])
  end
end
