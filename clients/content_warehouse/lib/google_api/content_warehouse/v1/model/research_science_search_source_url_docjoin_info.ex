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

defmodule GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo do
  @moduledoc """
  The proto containing all the information we extracted from docjoin, for the source_url of the dataset. NEXT TAG: 18

  ## Attributes

  *   `dataSource` (*type:* `String.t`, *default:* `nil`) - 
  *   `displayUrl` (*type:* `String.t`, *default:* `nil`) - The url used to display in the google search results. 
  *   `docid` (*type:* `String.t`, *default:* `nil`) - The docid of the document. 
  *   `indexTier` (*type:* `list(String.t)`, *default:* `nil`) - Index tiers (BASE, UNIFIED_ZEPPELIN, etc) that the document belongs to. NOTE: Each document may belong to multiple tiers. NOTE: The original data type is an enum CompositeDoc::SubIndexType. However we don't want to depend on segindexer/compositedoc.proto because the proto is too large. Instead, we use CompositeDoc::SubIndexType_Name( subindexid) to convert into a string representation. To convert string back to CompositeDoc::SubIndexType, use CompositeDoc::SubIndexType_Parse.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The language of the document in the string representation of LanguageCode. Converts from Language Enum to LanguageCode through i18n/identifiers/langenclanguagecodeconverter.h Please use i18n/identifiers/languagecodeconverter.h for converting between LanguageCode and string representation.
  *   `latestPageUpdateDate` (*type:* `String.t`, *default:* `nil`) - The syntactic date of a dataset document that reflects the publication date of the content.
  *   `navboostQuery` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchNavboostQueryInfo.t)`, *default:* `nil`) - A sequence of Navboost queries for the dataset source_url.
  *   `pagerank` (*type:* `integer()`, *default:* `nil`) - The page rank of the document. DEPRECATED in favour of Pagerank_NS. Do not use as it is no longer maintained in docjoins and can break at any moment.
  *   `pagerankNs` (*type:* `integer()`, *default:* `nil`) - The production pagerank value of the document. 
  *   `petacatInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification.t`, *default:* `nil`) - Petacat classifications for the web document. Normally the results from calling Petacat come in a PetacatResponse, which is very flexible and extensible. This proto takes most of the flexibility away - only rephil clusters, taxonomic classifications, and binary classifications, with discretized weights.
  *   `salientTerms` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSalientTermSet.t`, *default:* `nil`) - A set of salient terms extracted fromthe document. DEPRECATEAD. Moved to DatasetMetadata for performance reasons.
  *   `scholarInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ScienceIndexSignal.t`, *default:* `nil`) - Science per-doc data for inclusion in websearch. 
  *   `sporeGraphMid` (*type:* `list(String.t)`, *default:* `nil`) - A set of entities from WebRef annotations that are in SPORE_GRAPH.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the document. 
  *   `topEntity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity.t)`, *default:* `nil`) - A set of top entities from WebrefAnnotation, top is defined by topicality score, see go/topicality-score for detail. DEPRECATED. See label_to_mids_map instead.
  *   `url` (*type:* `String.t`, *default:* `nil`) - The url of the document. 
  *   `webrefEntity` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo.t)`, *default:* `nil`) - A set of entities copied from WebRefEntities on cDoc.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSource => String.t() | nil,
          :displayUrl => String.t() | nil,
          :docid => String.t() | nil,
          :indexTier => list(String.t()) | nil,
          :languageCode => String.t() | nil,
          :latestPageUpdateDate => String.t() | nil,
          :navboostQuery =>
            list(GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchNavboostQueryInfo.t())
            | nil,
          :pagerank => integer() | nil,
          :pagerankNs => integer() | nil,
          :petacatInfo =>
            GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification.t() | nil,
          :salientTerms =>
            GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSalientTermSet.t() | nil,
          :scholarInfo => GoogleApi.ContentWarehouse.V1.Model.ScienceIndexSignal.t() | nil,
          :sporeGraphMid => list(String.t()) | nil,
          :title => String.t() | nil,
          :topEntity =>
            list(GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity.t()) | nil,
          :url => String.t() | nil,
          :webrefEntity =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo.t()
            )
            | nil
        }

  field(:dataSource)
  field(:displayUrl)
  field(:docid)
  field(:indexTier, type: :list)
  field(:languageCode)
  field(:latestPageUpdateDate)

  field(:navboostQuery,
    as: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchNavboostQueryInfo,
    type: :list
  )

  field(:pagerank)
  field(:pagerankNs)
  field(:petacatInfo, as: GoogleApi.ContentWarehouse.V1.Model.FatcatCompactDocClassification)
  field(:salientTerms, as: GoogleApi.ContentWarehouse.V1.Model.QualitySalientTermsSalientTermSet)
  field(:scholarInfo, as: GoogleApi.ContentWarehouse.V1.Model.ScienceIndexSignal)
  field(:sporeGraphMid, type: :list)
  field(:title)

  field(:topEntity,
    as: GoogleApi.ContentWarehouse.V1.Model.RepositoryWebrefWebrefEntity,
    type: :list
  )

  field(:url)

  field(:webrefEntity,
    as:
      GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfoWebrefEntityInfo,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ResearchScienceSearchSourceUrlDocjoinInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
