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

defmodule GoogleApi.YouTube.V3.Model.VideoContentDetails do
  @moduledoc """
  Details about the content of a YouTube Video.

  ## Attributes

  - caption (String.t): The value of captions indicates whether the video has captions or not. Defaults to: `null`.
    - Enum - one of [false, true]
  - contentRating (ContentRating): Specifies the ratings that the video received under various rating schemes. Defaults to: `null`.
  - countryRestriction (AccessPolicy): The countryRestriction object contains information about the countries where a video is (or is not) viewable. Defaults to: `null`.
  - definition (String.t): The value of definition indicates whether the video is available in high definition or only in standard definition. Defaults to: `null`.
    - Enum - one of [hd, sd]
  - dimension (String.t): The value of dimension indicates whether the video is available in 3D or in 2D. Defaults to: `null`.
  - duration (String.t): The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long. Defaults to: `null`.
  - hasCustomThumbnail (boolean()): Indicates whether the video uploader has provided a custom thumbnail image for the video. This property is only visible to the video uploader. Defaults to: `null`.
  - licensedContent (boolean()): The value of is_license_content indicates whether the video is licensed content. Defaults to: `null`.
  - projection (String.t): Specifies the projection format of the video. Defaults to: `null`.
    - Enum - one of [360, rectangular]
  - regionRestriction (VideoContentDetailsRegionRestriction): The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property. Defaults to: `null`.
  """

  defstruct [
    :caption,
    :contentRating,
    :countryRestriction,
    :definition,
    :dimension,
    :duration,
    :hasCustomThumbnail,
    :licensedContent,
    :projection,
    :regionRestriction
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.VideoContentDetails do
  import GoogleApi.YouTube.V3.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:contentRating, :struct, GoogleApi.YouTube.V3.Model.ContentRating, options)
    |> deserialize(:countryRestriction, :struct, GoogleApi.YouTube.V3.Model.AccessPolicy, options)
    |> deserialize(
      :regionRestriction,
      :struct,
      GoogleApi.YouTube.V3.Model.VideoContentDetailsRegionRestriction,
      options
    )
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.VideoContentDetails do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
