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

defmodule GoogleApi.YouTube.V3.Model.ActivitySnippet do
  @moduledoc """
  Basic details about an activity, including title, description, thumbnails, activity type and group.

  ## Attributes

  - channelId (String.t): The ID that YouTube uses to uniquely identify the channel associated with the activity. Defaults to: `null`.
  - channelTitle (String.t): Channel title for the channel responsible for this activity Defaults to: `null`.
  - description (String.t): The description of the resource primarily associated with the activity. Defaults to: `null`.
  - groupId (String.t): The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user&#39;s activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value. Defaults to: `null`.
  - publishedAt (DateTime.t): The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. Defaults to: `null`.
  - thumbnails (ThumbnailDetails): A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. Defaults to: `null`.
  - title (String.t): The title of the resource primarily associated with the activity. Defaults to: `null`.
  - type (String.t): The type of activity that the resource describes. Defaults to: `null`.
    - Enum - one of [bulletin, channelItem, comment, favorite, like, playlistItem, promotedItem, recommendation, social, subscription, upload]
  """

  defstruct [
    :channelId,
    :channelTitle,
    :description,
    :groupId,
    :publishedAt,
    :thumbnails,
    :title,
    :type
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.ActivitySnippet do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:thumbnails, :struct, GoogleApi.YouTube.V3.Model.ThumbnailDetails, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.ActivitySnippet do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
