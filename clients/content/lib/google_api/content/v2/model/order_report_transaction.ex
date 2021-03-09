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

defmodule GoogleApi.Content.V2.Model.OrderReportTransaction do
  @moduledoc """


  ## Attributes

  *   `disbursementAmount` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - The disbursement amount.
  *   `disbursementCreationDate` (*type:* `String.t`, *default:* `nil`) - The date the disbursement was created, in ISO 8601 format.
  *   `disbursementDate` (*type:* `String.t`, *default:* `nil`) - The date the disbursement was initiated, in ISO 8601 format.
  *   `disbursementId` (*type:* `String.t`, *default:* `nil`) - The ID of the disbursement.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `merchantOrderId` (*type:* `String.t`, *default:* `nil`) - Merchant-provided ID of the order.
  *   `orderId` (*type:* `String.t`, *default:* `nil`) - The ID of the order.
  *   `productAmount` (*type:* `GoogleApi.Content.V2.Model.Amount.t`, *default:* `nil`) - Total amount for the items.
  *   `productAmountWithRemittedTax` (*type:* `GoogleApi.Content.V2.Model.ProductAmount.t`, *default:* `nil`) - Total amount with remitted tax for the items.
  *   `transactionDate` (*type:* `String.t`, *default:* `nil`) - The date of the transaction, in ISO 8601 format.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disbursementAmount => GoogleApi.Content.V2.Model.Price.t() | nil,
          :disbursementCreationDate => String.t() | nil,
          :disbursementDate => String.t() | nil,
          :disbursementId => String.t() | nil,
          :merchantId => String.t() | nil,
          :merchantOrderId => String.t() | nil,
          :orderId => String.t() | nil,
          :productAmount => GoogleApi.Content.V2.Model.Amount.t() | nil,
          :productAmountWithRemittedTax => GoogleApi.Content.V2.Model.ProductAmount.t() | nil,
          :transactionDate => String.t() | nil
        }

  field(:disbursementAmount, as: GoogleApi.Content.V2.Model.Price)
  field(:disbursementCreationDate)
  field(:disbursementDate)
  field(:disbursementId)
  field(:merchantId)
  field(:merchantOrderId)
  field(:orderId)
  field(:productAmount, as: GoogleApi.Content.V2.Model.Amount)
  field(:productAmountWithRemittedTax, as: GoogleApi.Content.V2.Model.ProductAmount)
  field(:transactionDate)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderReportTransaction do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderReportTransaction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderReportTransaction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
