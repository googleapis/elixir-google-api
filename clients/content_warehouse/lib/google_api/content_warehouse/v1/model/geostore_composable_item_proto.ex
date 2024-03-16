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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreComposableItemProto do
  @moduledoc """
  Generic item proto. This is intended to have only certain aspects filled (e.g. photo only, name + price). Valid combinations of properties are enforced by linters.

  ## Attributes

  *   `callToAction` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreCallToActionProto.t`, *default:* `nil`) - Call to action for the individual product.
  *   `jobMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreJobMetadata.t`, *default:* `nil`) - 
  *   `media` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreMediaItemProto.t)`, *default:* `nil`) - Any photos describing this item.
  *   `nameInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostorePriceListNameInfoProto.t)`, *default:* `nil`) - The repeated name_info field is for price list sections listed in multiple languages. At least one name_info containing id must be specified. There should be at most one name_info for any given language. When representing a job item, there should be exactly one name_info specified.
  *   `offered` (*type:* `String.t`, *default:* `nil`) - Represents if an item is offered at a business. For TYPE_JOB, this represents if this job is offered by the corresponding business
  *   `price` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceRangeProto.t`, *default:* `nil`) - Price of the item. There should be at most one price for any given currency.
  *   `priceFormat` (*type:* `String.t`, *default:* `nil`) - Represents which price format is being used by this item, which determines the usage/meaning of the “price” field above. Optional – the default value is legal and safe (represents no price if the “price” field is unset).
  *   `rankingHint` (*type:* `number()`, *default:* `nil`) - Numerical score which can be provided by data sources to indicate preferred item ordering. This is purely a hint – we are not required to followed it if we have a different order we think is better. Higher scores represent items that should be shown more prominently/earlier. Optional.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :callToAction =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreCallToActionProto.t() | nil,
          :jobMetadata => GoogleApi.ContentWarehouse.V1.Model.GeostoreJobMetadata.t() | nil,
          :media => list(GoogleApi.ContentWarehouse.V1.Model.GeostoreMediaItemProto.t()) | nil,
          :nameInfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostorePriceListNameInfoProto.t()) | nil,
          :offered => String.t() | nil,
          :price => GoogleApi.ContentWarehouse.V1.Model.GeostorePriceRangeProto.t() | nil,
          :priceFormat => String.t() | nil,
          :rankingHint => number() | nil
        }

  field(:callToAction, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreCallToActionProto)
  field(:jobMetadata, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreJobMetadata)
  field(:media, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreMediaItemProto, type: :list)

  field(:nameInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceListNameInfoProto,
    type: :list
  )

  field(:offered)
  field(:price, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceRangeProto)
  field(:priceFormat)
  field(:rankingHint)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreComposableItemProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreComposableItemProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreComposableItemProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end