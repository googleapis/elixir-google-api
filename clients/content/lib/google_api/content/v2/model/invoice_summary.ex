# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Content.V2.Model.InvoiceSummary do
  @moduledoc """


  ## Attributes

  *   `additionalChargeSummaries` (*type:* `list(GoogleApi.Content.V2.Model.InvoiceSummaryAdditionalChargeSummary.t)`, *default:* `nil`) - Summary of the total amounts of the additional charges.
  *   `customerBalance` (*type:* `GoogleApi.Content.V2.Model.Amount.t`, *default:* `nil`) - Deprecated.
  *   `googleBalance` (*type:* `GoogleApi.Content.V2.Model.Amount.t`, *default:* `nil`) - Deprecated.
  *   `merchantBalance` (*type:* `GoogleApi.Content.V2.Model.Amount.t`, *default:* `nil`) - Deprecated.
  *   `productTotal` (*type:* `GoogleApi.Content.V2.Model.Amount.t`, *default:* `nil`) - [required] Total price for the product.
  *   `promotionSummaries` (*type:* `list(GoogleApi.Content.V2.Model.Promotion.t)`, *default:* `nil`) - Deprecated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalChargeSummaries =>
            list(GoogleApi.Content.V2.Model.InvoiceSummaryAdditionalChargeSummary.t()),
          :customerBalance => GoogleApi.Content.V2.Model.Amount.t(),
          :googleBalance => GoogleApi.Content.V2.Model.Amount.t(),
          :merchantBalance => GoogleApi.Content.V2.Model.Amount.t(),
          :productTotal => GoogleApi.Content.V2.Model.Amount.t(),
          :promotionSummaries => list(GoogleApi.Content.V2.Model.Promotion.t())
        }

  field(
    :additionalChargeSummaries,
    as: GoogleApi.Content.V2.Model.InvoiceSummaryAdditionalChargeSummary,
    type: :list
  )

  field(:customerBalance, as: GoogleApi.Content.V2.Model.Amount)
  field(:googleBalance, as: GoogleApi.Content.V2.Model.Amount)
  field(:merchantBalance, as: GoogleApi.Content.V2.Model.Amount)
  field(:productTotal, as: GoogleApi.Content.V2.Model.Amount)
  field(:promotionSummaries, as: GoogleApi.Content.V2.Model.Promotion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.InvoiceSummary do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.InvoiceSummary.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.InvoiceSummary do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
