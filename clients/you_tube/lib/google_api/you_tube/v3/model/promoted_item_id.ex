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

defmodule GoogleApi.YouTube.V3.Model.PromotedItemId do
  @moduledoc """
  Describes a single promoted item id. It is a union of various possible types.

  ## Attributes

  - recentlyUploadedBy (String.t): If type is recentUpload, this field identifies the channel from which to take the recent upload. If missing, the channel is assumed to be the same channel for which the invideoPromotion is set. Defaults to: `null`.
  - type (String.t): Describes the type of the promoted item. Defaults to: `null`.
    - Enum - one of [recentUpload, video, website]
  - videoId (String.t): If the promoted item represents a video, this field represents the unique YouTube ID identifying it. This field will be present only if type has the value video. Defaults to: `null`.
  - websiteUrl (String.t): If the promoted item represents a website, this field represents the url pointing to the website. This field will be present only if type has the value website. Defaults to: `null`.
  """

  defstruct [
    :recentlyUploadedBy,
    :type,
    :videoId,
    :websiteUrl
  ]
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.PromotedItemId do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.PromotedItemId do
  def encode(value, options) do
    GoogleApi.YouTube.V3.Deserializer.serialize_non_nil(value, options)
  end
end
