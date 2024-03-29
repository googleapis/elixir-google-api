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

defmodule GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntities do
  @moduledoc """
  Represents a collection of entities returned by the WebRef service. Next available tag: 14.

  ## Attributes

  *   `annotationStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats.t`, *default:* `nil`) - Detailed annotation statistics that can, e.g., be used to tune the WebRef scoring logic based on existing (Model-0) annotations.
  *   `annotatorCheckpointFingerprints` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotatorCheckpointFprint.t)`, *default:* `nil`) - Fingerprints checkpointing annotator stages, can be used to track the source of diffs.
  *   `category` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryAnnotation.t)`, *default:* `nil`) - Categories of the document or query. This replaces the category_score found under EntityAnnotations.
  *   `dateRange` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange.t)`, *default:* `nil`) - Dates ranges that are most relevant to the document. E.g. on a document about Dune the 2021 movie, this might hold the release date of that movie.
  *   `documentInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo.t`, *default:* `nil`) - Information that applies globally to the document. The exclude_field option is for Goldmine AnnotationsFinder to exclude document_info from retrieving annotation entities
  *   `entity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity.t)`, *default:* `nil`) - The annotated entities, with associated confidence scores and metadata. This is the primary output of WebRef/QRef. In case of Webref output, entities are sorted by decreasing topicality score.
  *   `rangeAnnotations` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefRangeAnnotations.t)`, *default:* `nil`) - These messages contain non-entity annotations of ranges in the document. This might be used to hold part-of-speech annotations, stopword annotations, and other range based information. The exclude_field option is for Goldmine AnnotationsFinder to exclude ranged_annotations from retrieving annotation entities
  *   `status` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus.t`, *default:* `nil`) - The status message returned by the annotator. Might not be populated on success.
  *   `stuff` (*type:* `GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t`, *default:* `nil`) - A generic container to hold extra result data.
  *   `tripleAnnotations` (*type:* `GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTripleAnnotations.t`, *default:* `nil`) - Triples inferred from the document When the annotator recognizes phrases, lists or tables associated with a property or relationship for an entity it generates triples that encode that information. This generated data is only substantiated by the document vs KG data which has been verified from multiple sources and/or human curators.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationStats =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats.t() | nil,
          :annotatorCheckpointFingerprints =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotatorCheckpointFprint.t()
            )
            | nil,
          :category =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryAnnotation.t()) | nil,
          :dateRange =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange.t()) | nil,
          :documentInfo =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo.t() | nil,
          :entity =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity.t()) | nil,
          :rangeAnnotations =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefRangeAnnotations.t()) | nil,
          :status => GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus.t() | nil,
          :stuff => GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet.t() | nil,
          :tripleAnnotations =>
            GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTripleAnnotations.t() | nil
        }

  field(:annotationStats,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefAnnotationStats
  )

  field(:annotatorCheckpointFingerprints,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefAnnotatorCheckpointFprint,
    type: :list
  )

  field(:category,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefCategoryAnnotation,
    type: :list
  )

  field(:dateRange,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefSemanticDateRange,
    type: :list
  )

  field(:documentInfo, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefDocumentInfo)

  field(:entity, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity, type: :list)

  field(:rangeAnnotations,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefRangeAnnotations,
    type: :list
  )

  field(:status, as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefStatus)
  field(:stuff, as: GoogleApi.ContentWarehouse.V1.Model.Proto2BridgeMessageSet)

  field(:tripleAnnotations,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefTripleAnnotations
  )
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntities do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntities.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
