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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PriceByResource do
  @moduledoc """
  Represents price by resource type.

  ## Attributes

  *   `price` (*type:* `GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Price.t`, *default:* `nil`) - Price of the Offer. Present if there are no price phases.
  *   `pricePhases` (*type:* `list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PricePhase.t)`, *default:* `nil`) - Specifies the price by time range.
  *   `resourceType` (*type:* `String.t`, *default:* `nil`) - Resource Type. Example: SEAT
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :price => GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Price.t() | nil,
          :pricePhases =>
            list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PricePhase.t()) | nil,
          :resourceType => String.t() | nil
        }

  field(:price, as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1Price)

  field(:pricePhases,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PricePhase,
    type: :list
  )

  field(:resourceType)
end

defimpl Poison.Decoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PriceByResource do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PriceByResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PriceByResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
