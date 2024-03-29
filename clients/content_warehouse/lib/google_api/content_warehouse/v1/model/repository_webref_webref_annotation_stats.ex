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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats do
  @moduledoc """
  Detailed statistics about the annotations in the document. Contains, for example, the number of ranges with name matches, the number of entities matched, and the number of entities with mentions. This information can be used to tune some WebRef-internal scoring functions based on existing annotations (e.g., document-length normalization in global link support). Next available tag: 10.

  ## Attributes

  *   `docWeight` (*type:* `number()`, *default:* `nil`) - The relative weight of the document, used when aggregating information from multiple documents.
  *   `ngramContext` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNgramContext.t)`, *default:* `nil`) - Extracted n-grams context scores (in cdoc language, weighted by doc_weight) output if webref_populate_annotation_ngrams is enabled.
  *   `numCandidates` (*type:* `String.t`, *default:* `nil`) - The total number of candidates.
  *   `numConceptsWithCandidates` (*type:* `String.t`, *default:* `nil`) - The total number of concepts with at least 1 candidate.
  *   `numConceptsWithMentions` (*type:* `String.t`, *default:* `nil`) - The total number of concepts with at least 1 mention.
  *   `numRangesWithCandidates` (*type:* `String.t`, *default:* `nil`) - The total number of RangeData objects with at least one candidate.
  *   `statsPerType` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType.t)`, *default:* `nil`) - Statistics for each token type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :docWeight => number() | nil,
          :ngramContext =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNgramContext.t()) | nil,
          :numCandidates => String.t() | nil,
          :numConceptsWithCandidates => String.t() | nil,
          :numConceptsWithMentions => String.t() | nil,
          :numRangesWithCandidates => String.t() | nil,
          :statsPerType =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType.t())
            | nil
        }

  field(:docWeight)

  field(:ngramContext,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefNgramContext,
    type: :list
  )

  field(:numCandidates)
  field(:numConceptsWithCandidates)
  field(:numConceptsWithMentions)
  field(:numRangesWithCandidates)

  field(:statsPerType,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotationStatsPerType,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
