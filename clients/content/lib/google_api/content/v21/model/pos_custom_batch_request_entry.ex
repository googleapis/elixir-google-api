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

defmodule GoogleApi.Content.V21.Model.PosCustomBatchRequestEntry do
  @moduledoc """


  ## Attributes

  *   `batchId` (*type:* `integer()`, *default:* `nil`) - An entry ID, unique within the batch request.
  *   `inventory` (*type:* `GoogleApi.Content.V21.Model.PosInventory.t`, *default:* `nil`) - The inventory to submit. Set this only if the method is `inventory`.
  *   `merchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the POS data provider.
  *   `method` (*type:* `String.t`, *default:* `nil`) - The method of the batch entry. Acceptable values are: - "`delete`" - "`get`" - "`insert`" - "`inventory`" - "`sale`" 
  *   `sale` (*type:* `GoogleApi.Content.V21.Model.PosSale.t`, *default:* `nil`) - The sale information to submit. Set this only if the method is `sale`.
  *   `store` (*type:* `GoogleApi.Content.V21.Model.PosStore.t`, *default:* `nil`) - The store information to submit. Set this only if the method is `insert`.
  *   `storeCode` (*type:* `String.t`, *default:* `nil`) - The store code. Set this only if the method is `delete` or `get`.
  *   `targetMerchantId` (*type:* `String.t`, *default:* `nil`) - The ID of the account for which to get/submit data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchId => integer(),
          :inventory => GoogleApi.Content.V21.Model.PosInventory.t(),
          :merchantId => String.t(),
          :method => String.t(),
          :sale => GoogleApi.Content.V21.Model.PosSale.t(),
          :store => GoogleApi.Content.V21.Model.PosStore.t(),
          :storeCode => String.t(),
          :targetMerchantId => String.t()
        }

  field(:batchId)
  field(:inventory, as: GoogleApi.Content.V21.Model.PosInventory)
  field(:merchantId)
  field(:method)
  field(:sale, as: GoogleApi.Content.V21.Model.PosSale)
  field(:store, as: GoogleApi.Content.V21.Model.PosStore)
  field(:storeCode)
  field(:targetMerchantId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.PosCustomBatchRequestEntry do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.PosCustomBatchRequestEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.PosCustomBatchRequestEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
