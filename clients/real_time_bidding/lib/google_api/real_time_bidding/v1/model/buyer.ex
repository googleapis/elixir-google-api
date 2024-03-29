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

defmodule GoogleApi.RealTimeBidding.V1.Model.Buyer do
  @moduledoc """
  RTB Buyer account information.

  ## Attributes

  *   `activeCreativeCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of creatives that this buyer submitted through the API or bid with in the last 30 days. This is counted against the maximum number of active creatives.
  *   `bidder` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the bidder resource that is responsible for receiving bidding traffic for this account. The bidder name must follow the pattern `bidders/{bidderAccountId}`, where `{bidderAccountId}` is the account ID of the bidder receiving traffic for this buyer.
  *   `billingIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. A list of billing IDs associated with this account. These IDs appear on: 1. A bid request, to signal which buyers are eligible to bid on a given opportunity, and which pretargeting configurations were matched for each eligible buyer. 2. The bid response, to attribute a winning impression to a specific account for billing, reporting, policy and publisher block enforcement.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The diplay name associated with this buyer account, as visible to sellers.
  *   `maximumActiveCreativeCount` (*type:* `String.t`, *default:* `nil`) - Output only. The maximum number of active creatives that this buyer can have.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the buyer resource that must follow the pattern `buyers/{buyerAccountId}`, where `{buyerAccountId}` is the account ID of the buyer account whose information is to be received. One can get their account ID on the Authorized Buyers or Open Bidding UI, or by contacting their Google account manager.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeCreativeCount => String.t() | nil,
          :bidder => String.t() | nil,
          :billingIds => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :maximumActiveCreativeCount => String.t() | nil,
          :name => String.t() | nil
        }

  field(:activeCreativeCount)
  field(:bidder)
  field(:billingIds, type: :list)
  field(:displayName)
  field(:maximumActiveCreativeCount)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.Buyer do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.Buyer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.Buyer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
