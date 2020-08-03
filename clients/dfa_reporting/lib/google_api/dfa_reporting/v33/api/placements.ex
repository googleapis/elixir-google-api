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

defmodule GoogleApi.DFAReporting.V33.Api.Placements do
  @moduledoc """
  API calls for all endpoints tagged `Placements`.
  """

  alias GoogleApi.DFAReporting.V33.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Generates tags for a placement.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:campaignId` (*type:* `String.t`) - Generate placements belonging to this campaign. This is a required field.
      *   `:placementIds` (*type:* `list(String.t)`) - Generate tags for these placements.
      *   `:tagFormats` (*type:* `list(String.t)`) - Tag formats to generate for these placements.

          Note: PLACEMENT_TAG_STANDARD can only be generated for 1x1 placements.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.PlacementsGenerateTagsResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_placements_generatetags(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.PlacementsGenerateTagsResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_placements_generatetags(
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
      :campaignId => :query,
      :placementIds => :query,
      :tagFormats => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/placements/generatetags", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.PlacementsGenerateTagsResponse{}]
    )
  end

  @doc """
  Gets one placement by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `id` (*type:* `String.t`) - Placement ID.
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

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Placement{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_placements_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Placement.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_placements_get(connection, profile_id, id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/placements/{id}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Placement{}])
  end

  @doc """
  Inserts a new placement.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Placement.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Placement{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_placements_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Placement.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_placements_insert(connection, profile_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/placements", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Placement{}])
  end

  @doc """
  Retrieves a list of placements, possibly filtered. This method supports paging.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:advertiserIds` (*type:* `list(String.t)`) - Select only placements that belong to these advertisers.
      *   `:archived` (*type:* `boolean()`) - Select only archived placements. Don't set this field to select both archived and non-archived placements.
      *   `:campaignIds` (*type:* `list(String.t)`) - Select only placements that belong to these campaigns.
      *   `:compatibilities` (*type:* `list(String.t)`) - Select only placements that are associated with these compatibilities. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard.
      *   `:contentCategoryIds` (*type:* `list(String.t)`) - Select only placements that are associated with these content categories.
      *   `:directorySiteIds` (*type:* `list(String.t)`) - Select only placements that are associated with these directory sites.
      *   `:groupIds` (*type:* `list(String.t)`) - Select only placements that belong to these placement groups.
      *   `:ids` (*type:* `list(String.t)`) - Select only placements with these IDs.
      *   `:maxEndDate` (*type:* `String.t`) - Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should be formatted as "yyyy-MM-dd".
      *   `:maxResults` (*type:* `integer()`) - Maximum number of results to return.
      *   `:maxStartDate` (*type:* `String.t`) - Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date should be formatted as "yyyy-MM-dd".
      *   `:minEndDate` (*type:* `String.t`) - Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be formatted as "yyyy-MM-dd".
      *   `:minStartDate` (*type:* `String.t`) - Select only placements or placement groups whose start date is on or after the specified minStartDate. The date should be formatted as "yyyy-MM-dd".
      *   `:pageToken` (*type:* `String.t`) - Value of the nextPageToken from the previous result page.
      *   `:paymentSource` (*type:* `String.t`) - Select only placements with this payment source.
      *   `:placementStrategyIds` (*type:* `list(String.t)`) - Select only placements that are associated with these placement strategies.
      *   `:pricingTypes` (*type:* `list(String.t)`) - Select only placements with these pricing types.
      *   `:searchString` (*type:* `String.t`) - Allows searching for placements by name or ID. Wildcards (*) are allowed. For example, "placement*2015" will return placements with names like "placement June 2015", "placement May 2015", or simply "placements 2015". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of "placement" will match placements with name "my placement", "placement 2015", or simply "placement".
      *   `:siteIds` (*type:* `list(String.t)`) - Select only placements that are associated with these sites.
      *   `:sizeIds` (*type:* `list(String.t)`) - Select only placements that are associated with these sizes.
      *   `:sortField` (*type:* `String.t`) - Field by which to sort the list.
      *   `:sortOrder` (*type:* `String.t`) - Order of sorted results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.PlacementsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_placements_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.PlacementsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_placements_list(connection, profile_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :advertiserIds => :query,
      :archived => :query,
      :campaignIds => :query,
      :compatibilities => :query,
      :contentCategoryIds => :query,
      :directorySiteIds => :query,
      :groupIds => :query,
      :ids => :query,
      :maxEndDate => :query,
      :maxResults => :query,
      :maxStartDate => :query,
      :minEndDate => :query,
      :minStartDate => :query,
      :pageToken => :query,
      :paymentSource => :query,
      :placementStrategyIds => :query,
      :pricingTypes => :query,
      :searchString => :query,
      :siteIds => :query,
      :sizeIds => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/placements", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.PlacementsListResponse{}]
    )
  end

  @doc """
  Updates an existing placement. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `id` (*type:* `String.t`) - Placement ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Placement.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Placement{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_placements_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Placement.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_placements_patch(connection, profile_id, id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/placements", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Placement{}])
  end

  @doc """
  Updates an existing placement.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.Placement.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.Placement{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_placements_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.Placement.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_placements_update(connection, profile_id, optional_params \\ [], opts \\ []) do
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
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/placements", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.Placement{}])
  end
end
