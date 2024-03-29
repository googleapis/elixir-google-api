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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformation do
  @moduledoc """
  Information about a single product. For ProductNet models, each product has one label with a detection score. The label is mapped to one or multiple category ids. For PRIMI generic feature models, each product can have multiple entities, and each entity has a score. The category_id and detection_score fields are not populated for PRIMI generic feature models.

  ## Attributes

  *   `categoryId` (*type:* `list(integer())`, *default:* `nil`) - The possible Merlot ids for the item. There may be more than one if the product detector result corresponds to a collection of merlot ids, which can't be easily grouped up to a common ancestor, for which the detector would still make sense for all the children. E.g. a detected "chair" can be either an indoor chair or an outdoor one, however in Merlot the common ancestor of the two is furniture.
  *   `clusterIds` (*type:* `list(integer())`, *default:* `nil`) - The k-d tree clusters for retrieval. Will be deprecated, use the token_groups instead. To add tokens/cluster_ids from new tokenization model in the future, add it to the token_groups.
  *   `detectionScore` (*type:* `number()`, *default:* `nil`) - The localization detection score.
  *   `embedding` (*type:* `String.t`, *default:* `nil`) - The serialized embedding values.
  *   `entities` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationEntity.t)`, *default:* `nil`) - The recognized entities and scores.
  *   `featureType` (*type:* `String.t`, *default:* `nil`) - Feature type (different detectors and embedders) requested.
  *   `productLocation` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationBoundingBox.t`, *default:* `nil`) - The bounding box.
  *   `tokenGroups` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformationTokenGroup.t)`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :categoryId => list(integer()) | nil,
          :clusterIds => list(integer()) | nil,
          :detectionScore => number() | nil,
          :embedding => String.t() | nil,
          :entities =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationEntity.t()
            )
            | nil,
          :featureType => String.t() | nil,
          :productLocation =>
            GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationBoundingBox.t()
            | nil,
          :tokenGroups =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformationTokenGroup.t()
            )
            | nil
        }

  field(:categoryId, type: :list)
  field(:clusterIds, type: :list)
  field(:detectionScore)
  field(:embedding)

  field(:entities,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationEntity,
    type: :list
  )

  field(:featureType)

  field(:productLocation,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationBoundingBox
  )

  field(:tokenGroups,
    as:
      GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformationTokenGroup,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.ImageRepositoryShoppingProductInformationProductInformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
