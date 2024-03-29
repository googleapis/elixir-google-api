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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorsScoreInfo do
  @moduledoc """
  Message to contain scoring / debugging information. If you want to add information which is not directly used in the final VideoAnchors data, it should be put here. Next ID: 14

  ## Attributes

  *   `anchorsCommonFeatureSet` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorsCommonFeatureSet.t`, *default:* `nil`) - Common set-level features for any anchor types.
  *   `captionEntityAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures.t`, *default:* `nil`) - Training features and debug info for caption entity anchors.
  *   `captionSpanAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionSpanAnchorSetFeatures.t`, *default:* `nil`) - 
  *   `commentAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCommentAnchorSetFeatures.t`, *default:* `nil`) - Set-level features for comment anchors.
  *   `descriptionAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDescriptionAnchorSetFeatures.t`, *default:* `nil`) - Description anchor features for use in training.
  *   `filtered` (*type:* `boolean()`, *default:* `nil`) - Whether or not the anchors will be removed in the final proto.
  *   `listAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchListAnchorSetFeatures.t`, *default:* `nil`) - Set-level features for list anchors.
  *   `listTrainingDataSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchListTrainingDataSetFeatures.t`, *default:* `nil`) - Set level metadata about the description anchors used to build training data for List Description anchors.
  *   `ocrAnchorClusterFeature` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOnScreenTextClusterFeature.t`, *default:* `nil`) - OCR anchor cluster features.
  *   `ocrDescriptionTrainingDataSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataSetFeatures.t`, *default:* `nil`) - Set level metadata about the join of description anchors and OCR data which is used to build training data.
  *   `qnaAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchQnaAnchorSetFeatures.t`, *default:* `nil`) - Metadata such as model versions for Q&A anchors.
  *   `ratingScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorSetRatingScore.t`, *default:* `nil`) - Human rating score, used for training.
  *   `sportsKeyMomentsAnchorSetFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSportsKeyMomentsAnchorSetFeatures.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anchorsCommonFeatureSet =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorsCommonFeatureSet.t()
            | nil,
          :captionEntityAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures.t()
            | nil,
          :captionSpanAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionSpanAnchorSetFeatures.t()
            | nil,
          :commentAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCommentAnchorSetFeatures.t()
            | nil,
          :descriptionAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDescriptionAnchorSetFeatures.t()
            | nil,
          :filtered => boolean() | nil,
          :listAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchListAnchorSetFeatures.t() | nil,
          :listTrainingDataSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchListTrainingDataSetFeatures.t()
            | nil,
          :ocrAnchorClusterFeature =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOnScreenTextClusterFeature.t()
            | nil,
          :ocrDescriptionTrainingDataSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataSetFeatures.t()
            | nil,
          :qnaAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchQnaAnchorSetFeatures.t() | nil,
          :ratingScore =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorSetRatingScore.t()
            | nil,
          :sportsKeyMomentsAnchorSetFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSportsKeyMomentsAnchorSetFeatures.t()
            | nil
        }

  field(:anchorsCommonFeatureSet,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorsCommonFeatureSet
  )

  field(:captionEntityAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures
  )

  field(:captionSpanAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionSpanAnchorSetFeatures
  )

  field(:commentAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCommentAnchorSetFeatures
  )

  field(:descriptionAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchDescriptionAnchorSetFeatures
  )

  field(:filtered)

  field(:listAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchListAnchorSetFeatures
  )

  field(:listTrainingDataSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchListTrainingDataSetFeatures
  )

  field(:ocrAnchorClusterFeature,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOnScreenTextClusterFeature
  )

  field(:ocrDescriptionTrainingDataSetFeatures,
    as:
      GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataSetFeatures
  )

  field(:qnaAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchQnaAnchorSetFeatures
  )

  field(:ratingScore,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorSetRatingScore
  )

  field(:sportsKeyMomentsAnchorSetFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSportsKeyMomentsAnchorSetFeatures
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorsScoreInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorsScoreInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchVideoAnchorsScoreInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
