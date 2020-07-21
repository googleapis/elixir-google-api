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

defmodule GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails do
  @moduledoc """
  Details for assigned channel targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_CHANNEL`.

  ## Attributes

  *   `channelId` (*type:* `String.t`, *default:* `nil`) - Required. ID of the channel. Should refer to the channel ID field on a [Partner-owned channel](partners.channels#Channel.FIELDS.channel_id) or [advertiser-owned channel](advertisers.channels#Channel.FIELDS.channel_id) resource.
  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Indicates if this option is being negatively targeted. For advertiser level assigned targeting option, this field must be true.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channelId => String.t(),
          :negative => boolean()
        }

  field(:channelId)
  field(:negative)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
