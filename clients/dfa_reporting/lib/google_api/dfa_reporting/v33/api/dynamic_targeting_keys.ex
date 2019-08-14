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

defmodule GoogleApi.DFAReporting.V33.Api.DynamicTargetingKeys do
  @moduledoc """
  API calls for all endpoints tagged `DynamicTargetingKeys`.
  """

  alias GoogleApi.DFAReporting.V33.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes an existing dynamic targeting key.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V33.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `object_id` (*type:* `String.t`) - ID of the object of this dynamic targeting key. This is a required field.
  *   `name` (*type:* `String.t`) - Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase.
  *   `object_type` (*type:* `String.t`) - Type of the object of this dynamic targeting key. This is a required field.
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

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_dynamic_targeting_keys_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def dfareporting_dynamic_targeting_keys_delete(
        connection,
        profile_id,
        object_id,
        name,
        object_type,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url(
        "/dfareporting/v3.3/userprofiles/{profileId}/dynamicTargetingKeys/{objectId}",
        %{
          "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
          "objectId" => URI.encode(object_id, &URI.char_unreserved?/1)
        }
      )
      |> Request.add_param(:query, :name, name)
      |> Request.add_param(:query, :objectType, object_type)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Inserts a new dynamic targeting key. Keys must be created at the advertiser level before being assigned to the advertiser's ads, creatives, or placements. There is a maximum of 1000 keys per advertiser, out of which a maximum of 20 keys can be assigned per ad, creative, or placement.

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
      *   `:body` (*type:* `GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_dynamic_targeting_keys_insert(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_dynamic_targeting_keys_insert(
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
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/dynamicTargetingKeys", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey{}])
  end

  @doc """
  Retrieves a list of dynamic targeting keys.

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
      *   `:advertiserId` (*type:* `String.t`) - Select only dynamic targeting keys whose object has this advertiser ID.
      *   `:names` (*type:* `list(String.t)`) - Select only dynamic targeting keys exactly matching these names.
      *   `:objectId` (*type:* `String.t`) - Select only dynamic targeting keys with this object ID.
      *   `:objectType` (*type:* `String.t`) - Select only dynamic targeting keys with this object type.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V33.Model.DynamicTargetingKeysListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_dynamic_targeting_keys_list(
          Tesla.Env.client(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V33.Model.DynamicTargetingKeysListResponse.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_dynamic_targeting_keys_list(
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
      :advertiserId => :query,
      :names => :query,
      :objectId => :query,
      :objectType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.3/userprofiles/{profileId}/dynamicTargetingKeys", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V33.Model.DynamicTargetingKeysListResponse{}]
    )
  end
end
