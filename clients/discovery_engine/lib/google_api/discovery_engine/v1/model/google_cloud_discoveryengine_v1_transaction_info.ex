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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo do
  @moduledoc """
  A transaction represents the entire purchase transaction.

  ## Attributes

  *   `cost` (*type:* `number()`, *default:* `nil`) - All the costs associated with the products. These can be manufacturing costs, shipping expenses not borne by the end user, or any other costs, such that: * Profit = value - tax - cost
  *   `currency` (*type:* `String.t`, *default:* `nil`) - Required. Currency code. Use three-character ISO-4217 code.
  *   `discountValue` (*type:* `number()`, *default:* `nil`) - The total discount(s) value applied to this transaction. This figure should be excluded from TransactionInfo.value For example, if a user paid TransactionInfo.value amount, then nominal (pre-discount) value of the transaction is the sum of TransactionInfo.value and TransactionInfo.discount_value This means that profit is calculated the same way, regardless of the discount value, and that TransactionInfo.discount_value can be larger than TransactionInfo.value: * Profit = value - tax - cost
  *   `tax` (*type:* `number()`, *default:* `nil`) - All the taxes associated with the transaction.
  *   `transactionId` (*type:* `String.t`, *default:* `nil`) - The transaction ID with a length limit of 128 characters.
  *   `value` (*type:* `number()`, *default:* `nil`) - Required. Total non-zero value associated with the transaction. This value may include shipping, tax, or other adjustments to the total value that you want to include.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cost => number() | nil,
          :currency => String.t() | nil,
          :discountValue => number() | nil,
          :tax => number() | nil,
          :transactionId => String.t() | nil,
          :value => number() | nil
        }

  field(:cost)
  field(:currency)
  field(:discountValue)
  field(:tax)
  field(:transactionId)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1TransactionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
