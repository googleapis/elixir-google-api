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

defmodule GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry do
  @moduledoc """
  A batch entry encoding a single non-batch inventory request.

  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `inventory` (*type:* `GoogleApi.Content.V2.Model.Inventory.t`, *default:* `nil`) - Price and availability of the product.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the managing account.
  *   `productId` (*type:* `String.t`, *default:* `nil`) - The ID of the product for which to update price and availability.
  *   `storeCode` (*type:* `String.t`, *default:* `nil`) - The code of the store for which to update price and availability. Use online to update price and availability of an online product.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :inventory => GoogleApi.Content.V2.Model.Inventory.t(),
          :merchantId => String.t(),
          :productId => String.t(),
          :storeCode => String.t()
        }

  field(:batchId)
  field(:inventory, as: GoogleApi.Content.V2.Model.Inventory)
  field(:merchantId)
  field(:productId)
  field(:storeCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.InventoryCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
