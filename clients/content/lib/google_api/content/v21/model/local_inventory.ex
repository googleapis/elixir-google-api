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

defmodule GoogleApi.Content.V21.Model.LocalInventory do
  @moduledoc """
  Local inventory resource. For accepted attribute values, see the local product inventory feed specification.

  ## Attributes

  *   `availability` (*type:* `String.t`, *default:* `nil`) - Availability of the product. For accepted attribute values, see the local product inventory feed specification.
  *   `instoreProductLocation` (*type:* `String.t`, *default:* `nil`) - In-store product location.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#localInventory`"
  *   `pickupMethod` (*type:* `String.t`, *default:* `nil`) - Supported pickup method for this offer. Unless the value is "not supported", this field must be submitted together with `pickupSla`. For accepted attribute values, see the local product inventory feed // specification.
  *   `pickupSla` (*type:* `String.t`, *default:* `nil`) - Expected date that an order will be ready for pickup relative to the order date. Must be submitted together with `pickupMethod`. For accepted attribute values, see the local product inventory feed specification.
  *   `price` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Price of the product.
  *   `quantity` (*type:* `integer()`, *default:* `nil`) - Quantity of the product. Must be nonnegative.
  *   `salePrice` (*type:* `GoogleApi.Content.V21.Model.Price.t`, *default:* `nil`) - Sale price of the product. Mandatory if `sale_price_effective_date` is defined.
  *   `salePriceEffectiveDate` (*type:* `String.t`, *default:* `nil`) - A date range represented by a pair of ISO 8601 dates separated by a space, comma, or slash. Both dates may be specified as 'null' if undecided.
  *   `storeCode` (*type:* `String.t`, *default:* `nil`) - Required. Store code of this local inventory resource.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availability => String.t() | nil,
          :instoreProductLocation => String.t() | nil,
          :kind => String.t() | nil,
          :pickupMethod => String.t() | nil,
          :pickupSla => String.t() | nil,
          :price => GoogleApi.Content.V21.Model.Price.t() | nil,
          :quantity => integer() | nil,
          :salePrice => GoogleApi.Content.V21.Model.Price.t() | nil,
          :salePriceEffectiveDate => String.t() | nil,
          :storeCode => String.t() | nil
        }

  field(:availability)
  field(:instoreProductLocation)
  field(:kind)
  field(:pickupMethod)
  field(:pickupSla)
  field(:price, as: GoogleApi.Content.V21.Model.Price)
  field(:quantity)
  field(:salePrice, as: GoogleApi.Content.V21.Model.Price)
  field(:salePriceEffectiveDate)
  field(:storeCode)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.LocalInventory do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.LocalInventory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.LocalInventory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
