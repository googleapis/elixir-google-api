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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameInfo do
  @moduledoc """
  Represents all information we have about a specific/localized name. Next available tag: 13. NOTE: If you add a field to the NameInfo proto and wish to retain it *after* the GlobalNameInfo merging steps in //r/w/enricher/pipeline:topic-enricher-flume-main then the appropriate combining logic for turning a flume stream of NameInfo protos into a single NameInfo must be updated with the new field in mind, in either or both of CombineContextNameInfosFn/CombineNameInfosFn. If not, the newly added field will be ignored during the merging steps (presumably because it is a transient field or a debug field that is not necessary to be retained).

  ## Attributes

  *   `aggregatedScores` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAggregatedEntityNameScores.t`, *default:* `nil`) - The score aggregated from all sources.
  *   `annotatedCategory` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotatedCategoryInfo.t)`, *default:* `nil`) - Information on categories annotated on the range.
  *   `debugDetails` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo.t)`, *default:* `nil`) - DEBUG ONLY: stores a list of queries with per-candidate scores about signals used for prior learning.
  *   `includeInModel` (*type:* `boolean()`, *default:* `nil`) - Field which decides if this NameInfo should be included in model creation.
  *   `name` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLocalizedString.t`, *default:* `nil`) - The specific name to which this information applies.
  *   `ngramData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData.t`, *default:* `nil`) - N-gram data (e.g. n-gram IDF).
  *   `perNameLightweightToken` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLightweightTokensPerNameLightweightToken.t`, *default:* `nil`) - Lightweight token semantic metadata for inflected name.
  *   `scores` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameScores.t`, *default:* `nil`) - The name-specific scores. These scores only depend on the name and are independent of the entity.
  *   `source` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameSource.t)`, *default:* `nil`) - The per-source scores.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregatedScores =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAggregatedEntityNameScores.t()
            | nil,
          :annotatedCategory =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotatedCategoryInfo.t())
            | nil,
          :debugDetails =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo.t()) | nil,
          :includeInModel => boolean() | nil,
          :name => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLocalizedString.t() | nil,
          :ngramData =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData.t() | nil,
          :perNameLightweightToken =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLightweightTokensPerNameLightweightToken.t()
            | nil,
          :scores => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameScores.t() | nil,
          :source =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameSource.t()) | nil
        }

  field(:aggregatedScores,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAggregatedEntityNameScores
  )

  field(:annotatedCategory,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotatedCategoryInfo,
    type: :list
  )

  field(:debugDetails,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameDebugInfo,
    type: :list
  )

  field(:includeInModel)
  field(:name, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLocalizedString)
  field(:ngramData, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefUniversalNgramData)

  field(:perNameLightweightToken,
    as:
      GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefLightweightTokensPerNameLightweightToken
  )

  field(:scores, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameScores)

  field(:source,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefEntityNameSource,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNameInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end