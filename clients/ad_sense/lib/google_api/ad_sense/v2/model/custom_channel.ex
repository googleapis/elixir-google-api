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

defmodule GoogleApi.AdSense.V2.Model.CustomChannel do
  @moduledoc """
  Representation of a custom channel.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Display name of the custom channel.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the custom channel. Format: accounts/{account}/adclients/{adclient}/customchannels/{customchannel}
  *   `reportingDimensionId` (*type:* `String.t`, *default:* `nil`) - Output only. Unique ID of the custom channel as used in the `CUSTOM_CHANNEL_ID` reporting dimension.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :reportingDimensionId => String.t() | nil
        }

  field(:displayName)
  field(:name)
  field(:reportingDimensionId)
end

defimpl Poison.Decoder, for: GoogleApi.AdSense.V2.Model.CustomChannel do
  def decode(value, options) do
    GoogleApi.AdSense.V2.Model.CustomChannel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdSense.V2.Model.CustomChannel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
