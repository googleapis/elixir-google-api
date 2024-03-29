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

defmodule GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegment do
  @moduledoc """


  ## Attributes

  *   `formatting` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonFormatting.t`, *default:* `nil`) - Formatting to be applied when rendering the Segment. For all segment types, this is the standard way of representing that the Segment should be rendered in bold, italics, etc.
  *   `hashtagData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonHashtagData.t`, *default:* `nil`) - For HASHTAG type:
  *   `linkData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonLinkData.t`, *default:* `nil`) - Type-specific metadata. At most one of these should be populated, and the one that is populated should correspond to the type of the Segment. For LINK type:
  *   `searchLinkData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonSearchLinkData.t`, *default:* `nil`) - For SEARCH_LINK type:
  *   `text` (*type:* `String.t`, *default:* `nil`) - Text content of the Segment. As a general rule, this field should contain the actual text that should be rendered in the UI. Thus, for a hashtag, it should be "#Foo", and for a link, it should be the display text. Clients that do not understand a particular segment type may use this text, along with the Formatting info below, as a fallback for display. The field is not required -- if all relevant information is carried in other metadata fields and there is no need for a fallback, or it is not practical for a fallback to be provided for any other reason, the field may be left blank. A standard example would be a user reference being transmitted between server layers, where a gaia-ID representation may be sufficient and there is no need for a textual fallback. In such a case, it would be valid and useful - though not required - for servers to compute and populate a fallback on the serving path.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of Segment.
  *   `userMentionData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SocialCommonUserMentionData.t`, *default:* `nil`) - For USER_MENTION type:
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formatting => GoogleApi.ContentWarehouse.V1.Model.SocialCommonFormatting.t() | nil,
          :hashtagData => GoogleApi.ContentWarehouse.V1.Model.SocialCommonHashtagData.t() | nil,
          :linkData => GoogleApi.ContentWarehouse.V1.Model.SocialCommonLinkData.t() | nil,
          :searchLinkData =>
            GoogleApi.ContentWarehouse.V1.Model.SocialCommonSearchLinkData.t() | nil,
          :text => String.t() | nil,
          :type => String.t() | nil,
          :userMentionData =>
            GoogleApi.ContentWarehouse.V1.Model.SocialCommonUserMentionData.t() | nil
        }

  field(:formatting, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonFormatting)
  field(:hashtagData, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonHashtagData)
  field(:linkData, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonLinkData)
  field(:searchLinkData, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonSearchLinkData)
  field(:text)
  field(:type)
  field(:userMentionData, as: GoogleApi.ContentWarehouse.V1.Model.SocialCommonUserMentionData)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegment do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.SocialCommonSegment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
