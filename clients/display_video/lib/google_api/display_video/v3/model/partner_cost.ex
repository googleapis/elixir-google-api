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

defmodule GoogleApi.DisplayVideo.V3.Model.PartnerCost do
  @moduledoc """
  Settings that control a partner cost. A partner cost is any type of expense involved in running a campaign, other than the costs of purchasing impressions (which is called the media cost) and using third-party audience segment data (data fee). Some examples of partner costs include the fees for using DV360, a third-party ad server, or a third-party ad serving verification service.

  ## Attributes

  *   `costType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the partner cost.
  *   `feeAmount` (*type:* `String.t`, *default:* `nil`) - The CPM fee amount in micros of advertiser's currency. Applicable when the fee_type is `PARTNER_FEE_TYPE_CPM_FEE`. Must be greater than or equal to 0. For example, for 1.5 standard unit of the advertiser's currency, set this field to 1500000.
  *   `feePercentageMillis` (*type:* `String.t`, *default:* `nil`) - The media fee percentage in millis (1/1000 of a percent). Applicable when the fee_type is `PARTNER_FEE_TYPE_MEDIA_FEE`. Must be greater than or equal to 0. For example: 100 represents 0.1%.
  *   `feeType` (*type:* `String.t`, *default:* `nil`) - Required. The fee type for this partner cost.
  *   `invoiceType` (*type:* `String.t`, *default:* `nil`) - The invoice type for this partner cost. * Required when cost_type is one of: - `PARTNER_COST_TYPE_ADLOOX` - `PARTNER_COST_TYPE_DOUBLE_VERIFY` - `PARTNER_COST_TYPE_INTEGRAL_AD_SCIENCE`. * Output only for other types.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :costType => String.t() | nil,
          :feeAmount => String.t() | nil,
          :feePercentageMillis => String.t() | nil,
          :feeType => String.t() | nil,
          :invoiceType => String.t() | nil
        }

  field(:costType)
  field(:feeAmount)
  field(:feePercentageMillis)
  field(:feeType)
  field(:invoiceType)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.PartnerCost do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.PartnerCost.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.PartnerCost do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
