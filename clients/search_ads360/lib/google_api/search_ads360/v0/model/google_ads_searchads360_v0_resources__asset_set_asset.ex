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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AssetSetAsset do
  @moduledoc """
  AssetSetAsset is the link between an asset and an asset set. Adding an AssetSetAsset links an asset with an asset set.

  ## Attributes

  *   `asset` (*type:* `String.t`, *default:* `nil`) - Immutable. The asset which this asset set asset is linking to.
  *   `assetSet` (*type:* `String.t`, *default:* `nil`) - Immutable. The asset set which this asset set asset is linking to.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the asset set asset. Asset set asset resource names have the form: `customers/{customer_id}/assetSetAssets/{asset_set_id}~{asset_id}`
  *   `status` (*type:* `String.t`, *default:* `nil`) - Output only. The status of the asset set asset. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asset => String.t() | nil,
          :assetSet => String.t() | nil,
          :resourceName => String.t() | nil,
          :status => String.t() | nil
        }

  field(:asset)
  field(:assetSet)
  field(:resourceName)
  field(:status)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AssetSetAsset do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AssetSetAsset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_AssetSetAsset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
