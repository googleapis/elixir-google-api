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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryInfo do
  @moduledoc """
  All informations about category types of the entity.

  ## Attributes

  *   `allTypes` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType.t)`, *default:* `nil`) - Contains all types relevant for this entity, along with their provenances and confidences. This field basically replicates information above in a unified way, so that Refcon scroing can make better use of it. If present, Refcon scoring will use all_types, and ignore other fields like freebase_type. Note: there is some basic conflict resolution applied when all_types are computed (implemented in type-extractor.cc, IsLikelyConflictingFreebase).
  *   `freebaseType` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType.t)`, *default:* `nil`) - 
  *   `kgCollection` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefKGCollection.t)`, *default:* `nil`) - 
  *   `oysterType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefOysterType.t`, *default:* `nil`) - 
  *   `salientCategory` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFatcatCategory.t)`, *default:* `nil`) - verticals4 categories that cooccur with this entity, aggregated over D2E. See where we read from CompactDocClassification in http://google3/repository/webref/preprocessing/fatcat-categories.cc.
  *   `wikipediaCategory` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWikipediaCategory.t)`, *default:* `nil`) - 
  *   `wpCategory` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType.t)`, *default:* `nil`) - WPCat CategotyResult classification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allTypes =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType.t()) | nil,
          :freebaseType =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType.t()) | nil,
          :kgCollection =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefKGCollection.t()) | nil,
          :oysterType => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefOysterType.t() | nil,
          :salientCategory =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFatcatCategory.t()) | nil,
          :wikipediaCategory =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWikipediaCategory.t()) | nil,
          :wpCategory =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType.t()) | nil
        }

  field(:allTypes,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType,
    type: :list
  )

  field(:freebaseType,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType,
    type: :list
  )

  field(:kgCollection,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefKGCollection,
    type: :list
  )

  field(:oysterType, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefOysterType)

  field(:salientCategory,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFatcatCategory,
    type: :list
  )

  field(:wikipediaCategory,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWikipediaCategory,
    type: :list
  )

  field(:wpCategory,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefFreebaseType,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end