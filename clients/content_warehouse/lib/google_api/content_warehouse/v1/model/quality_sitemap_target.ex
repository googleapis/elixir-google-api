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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualitySitemapTarget do
  @moduledoc """
  Represents a single sitelink target, contains basic information used to display the target (such as url and title) and to, maybe, dynamically change the way targets are selected and/or ranked (such as score and is_mobile). Please update the TargetInternal message if you make a change to this proto. See "Note on adding new fields".

  ## Attributes

  *   `DEPRECATEDSnippet` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `isGoodForMobile` (*type:* `boolean()`, *default:* `nil`) - 
  *   `isMobileN1dup` (*type:* `boolean()`, *default:* `nil`) - 
  *   `languages` (*type:* `list(integer())`, *default:* `nil`) - The languages of the document, taken from its cdoc.properties().languages()
  *   `salientImage` (*type:* `GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo.t`, *default:* `nil`) - The image data will be copied from the DocInfo response, and will be retrieved online, so this field should not be populated during indexing. This is a temporary field for experimentation.
  *   `score` (*type:* `number()`, *default:* `nil`) - 
  *   `scoringSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualitySitemapScoringSignals.t`, *default:* `nil`) - 
  *   `sectionTexts` (*type:* `list(String.t)`, *default:* `nil`) - Section texts used for Page Anchors Preview (go/page-anchor-preview-dd).
  *   `snippetResponse` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GenericSnippetResponse.t`, *default:* `nil`) - The snippet response for the target document for an empty query.
  *   `sourceAnchor` (*type:* `boolean()`, *default:* `nil`) - 
  *   `sporcSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals.t`, *default:* `nil`) - FIELD SHOULD ONLY BE POPULATED DURING ONLINE/SERVING TIME. Thus it should have no impact on cdoc/mdu.
  *   `title` (*type:* `String.t`, *default:* `nil`) - 
  *   `twoLevelScore` (*type:* `number()`, *default:* `nil`) - 
  *   `url` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :DEPRECATEDSnippet => list(String.t()) | nil,
          :isGoodForMobile => boolean() | nil,
          :isMobileN1dup => boolean() | nil,
          :languages => list(integer()) | nil,
          :salientImage =>
            GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo.t() | nil,
          :score => number() | nil,
          :scoringSignals =>
            GoogleApi.ContentWarehouse.V1.Model.QualitySitemapScoringSignals.t() | nil,
          :sectionTexts => list(String.t()) | nil,
          :snippetResponse =>
            GoogleApi.ContentWarehouse.V1.Model.GenericSnippetResponse.t() | nil,
          :sourceAnchor => boolean() | nil,
          :sporcSignals =>
            GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals.t() | nil,
          :title => String.t() | nil,
          :twoLevelScore => number() | nil,
          :url => String.t() | nil
        }

  field(:DEPRECATEDSnippet, type: :list)
  field(:isGoodForMobile)
  field(:isMobileN1dup)
  field(:languages, type: :list)
  field(:salientImage, as: GoogleApi.ContentWarehouse.V1.Model.WWWResultInfoSubImageDocInfo)
  field(:score)
  field(:scoringSignals, as: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapScoringSignals)
  field(:sectionTexts, type: :list)
  field(:snippetResponse, as: GoogleApi.ContentWarehouse.V1.Model.GenericSnippetResponse)
  field(:sourceAnchor)
  field(:sporcSignals, as: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapSporcSignals)
  field(:title)
  field(:twoLevelScore)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapTarget do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualitySitemapTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualitySitemapTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
