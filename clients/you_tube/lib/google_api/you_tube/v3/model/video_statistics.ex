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

defmodule GoogleApi.YouTube.V3.Model.VideoStatistics do
  @moduledoc """
  Statistics about the video, such as the number of times the video was viewed or liked.

  ## Attributes

  - commentCount (String.t): The number of comments for the video. Defaults to: `null`.
  - dislikeCount (String.t): The number of users who have indicated that they disliked the video by giving it a negative rating. Defaults to: `null`.
  - favoriteCount (String.t): The number of users who currently have the video marked as a favorite video. Defaults to: `null`.
  - likeCount (String.t): The number of users who have indicated that they liked the video by giving it a positive rating. Defaults to: `null`.
  - viewCount (String.t): The number of times the video has been viewed. Defaults to: `null`.
  """

  defstruct [
    :commentCount,
    :dislikeCount,
    :favoriteCount,
    :likeCount,
    :viewCount
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoStatistics do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoStatistics do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
