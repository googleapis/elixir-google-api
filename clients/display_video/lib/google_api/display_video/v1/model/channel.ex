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

defmodule GoogleApi.DisplayVideo.V1.Model.Channel do
  @moduledoc """
  A single channel. Channels are custom groups of related websites and apps.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - The ID of the advertiser that owns the channel.
  *   `channelId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the channel. Assigned by the system.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the channel. Must be UTF-8 encoded with a maximum length of 240 bytes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the channel.
  *   `partnerId` (*type:* `String.t`, *default:* `nil`) - The ID of the partner that owns the channel.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t() | nil,
          :channelId => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :partnerId => String.t() | nil
        }

  field(:advertiserId)
  field(:channelId)
  field(:displayName)
  field(:name)
  field(:partnerId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.Channel do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.Channel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.Channel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
