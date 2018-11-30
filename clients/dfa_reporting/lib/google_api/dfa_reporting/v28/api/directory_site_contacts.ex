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

defmodule GoogleApi.DFAReporting.V28.Api.DirectorySiteContacts do
  @moduledoc """
  API calls for all endpoints tagged `DirectorySiteContacts`.
  """

  alias GoogleApi.DFAReporting.V28.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets one directory site contact by ID.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - id (String.t): Directory site contact ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.DirectorySiteContact{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_directory_site_contacts_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.DirectorySiteContact.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_directory_site_contacts_get(
        connection,
        profile_id,
        id,
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
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/directorySiteContacts/{id}", %{
        "profileId" => URI.encode_www_form(profile_id),
        "id" => URI.encode_www_form(id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.DirectorySiteContact{}])
  end

  @doc """
  Retrieves a list of directory site contacts, possibly filtered. This method supports paging.

  ## Parameters

  - connection (GoogleApi.DFAReporting.V28.Connection): Connection to server
  - profile_id (String.t): User profile ID associated with this request.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :directorySiteIds ([String.t]): Select only directory site contacts with these directory site IDs. This is a required field.
    - :ids ([String.t]): Select only directory site contacts with these IDs.
    - :maxResults (integer()): Maximum number of results to return.
    - :pageToken (String.t): Value of the nextPageToken from the previous result page.
    - :searchString (String.t): Allows searching for objects by name, ID or email. Wildcards (*) are allowed. For example, \&quot;directory site contact*2015\&quot; will return objects with names like \&quot;directory site contact June 2015\&quot;, \&quot;directory site contact April 2015\&quot;, or simply \&quot;directory site contact 2015\&quot;. Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \&quot;directory site contact\&quot; will match objects with name \&quot;my directory site contact\&quot;, \&quot;directory site contact 2015\&quot;, or simply \&quot;directory site contact\&quot;.
    - :sortField (String.t): Field by which to sort the list.
    - :sortOrder (String.t): Order of sorted results.

  ## Returns

  {:ok, %GoogleApi.DFAReporting.V28.Model.DirectorySiteContactsListResponse{}} on success
  {:error, info} on failure
  """
  @spec dfareporting_directory_site_contacts_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V28.Model.DirectorySiteContactsListResponse.t()}
          | {:error, Tesla.Env.t()}
  def dfareporting_directory_site_contacts_list(
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
      :directorySiteIds => :query,
      :ids => :query,
      :maxResults => :query,
      :pageToken => :query,
      :searchString => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v2.8/userprofiles/{profileId}/directorySiteContacts", %{
        "profileId" => URI.encode_www_form(profile_id)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V28.Model.DirectorySiteContactsListResponse{}]
    )
  end
end
