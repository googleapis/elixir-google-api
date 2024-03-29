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

defmodule GoogleApi.AndroidPublisher.V3.Model.OfferDetails do
  @moduledoc """
  Offer details information related to a purchase line item.

  ## Attributes

  *   `basePlanId` (*type:* `String.t`, *default:* `nil`) - The base plan ID. Present for all base plan and offers.
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - The offer ID. Only present for discounted offers.
  *   `offerTags` (*type:* `list(String.t)`, *default:* `nil`) - The latest offer tags associated with the offer. It includes tags inherited from the base plan.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basePlanId => String.t() | nil,
          :offerId => String.t() | nil,
          :offerTags => list(String.t()) | nil
        }

  field(:basePlanId)
  field(:offerId)
  field(:offerTags, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.OfferDetails do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.OfferDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.OfferDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
