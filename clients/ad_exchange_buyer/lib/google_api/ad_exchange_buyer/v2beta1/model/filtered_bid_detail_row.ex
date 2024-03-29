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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow do
  @moduledoc """
  The number of filtered bids with the specified dimension values, among those filtered due to the requested filtering reason (for example, creative status), that have the specified detail.

  ## Attributes

  *   `bidCount` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue.t`, *default:* `nil`) - The number of bids with the specified detail.
  *   `detail` (*type:* `String.t`, *default:* `nil`) - The ID of the detail, can be numeric or text. The associated value can be looked up in the dictionary file corresponding to the DetailType in the response message.
  *   `detailId` (*type:* `integer()`, *default:* `nil`) - Note: this field will be deprecated, use "detail" field instead. When "detail" field represents an integer value, this field is populated as the same integer value "detail" field represents, otherwise this field will be 0. The ID of the detail. The associated value can be looked up in the dictionary file corresponding to the DetailType in the response message.
  *   `rowDimensions` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions.t`, *default:* `nil`) - The values of all dimensions associated with metric values in this row.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bidCount => GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue.t() | nil,
          :detail => String.t() | nil,
          :detailId => integer() | nil,
          :rowDimensions => GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions.t() | nil
        }

  field(:bidCount, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.MetricValue)
  field(:detail)
  field(:detailId)
  field(:rowDimensions, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.RowDimensions)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FilteredBidDetailRow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
