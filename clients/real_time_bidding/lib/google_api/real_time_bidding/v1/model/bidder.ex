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

defmodule GoogleApi.RealTimeBidding.V1.Model.Bidder do
  @moduledoc """
  Bidder settings.

  ## Attributes

  *   `bypassNonguaranteedDealsPretargeting` (*type:* `boolean()`, *default:* `nil`) - Output only. An option to bypass pretargeting for private auctions and preferred deals. When true, bid requests from these nonguaranteed deals will always be sent. When false, bid requests will be subject to regular pretargeting configurations. Programmatic Guaranteed deals will always be sent to the bidder, regardless of the value for this option. Auction packages are not impacted by this value and are subject to the regular pretargeting configurations.
  *   `cookieMatchingNetworkId` (*type:* `String.t`, *default:* `nil`) - Output only. The buyer's network ID used for cookie matching. This ID corresponds to the `google_nid` parameter in the URL used in cookie match requests. Refer to https://developers.google.com/authorized-buyers/rtb/cookie-guide for further information.
  *   `cookieMatchingUrl` (*type:* `String.t`, *default:* `nil`) - Output only. The base URL used in cookie match requests. Refer to https://developers.google.com/authorized-buyers/rtb/cookie-guide for further information.
  *   `dealsBillingId` (*type:* `String.t`, *default:* `nil`) - Output only. The billing ID for the deals pretargeting config. This billing ID is sent on the bid request for guaranteed and nonguaranteed deals matched in pretargeting.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the bidder resource that must follow the pattern `bidders/{bidderAccountId}`, where `{bidderAccountId}` is the account ID of the bidder whose information is to be received. One can get their account ID on the Authorized Buyers or Open Bidding UI, or by contacting their Google account manager.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bypassNonguaranteedDealsPretargeting => boolean() | nil,
          :cookieMatchingNetworkId => String.t() | nil,
          :cookieMatchingUrl => String.t() | nil,
          :dealsBillingId => String.t() | nil,
          :name => String.t() | nil
        }

  field(:bypassNonguaranteedDealsPretargeting)
  field(:cookieMatchingNetworkId)
  field(:cookieMatchingUrl)
  field(:dealsBillingId)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.Bidder do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.Bidder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.Bidder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
