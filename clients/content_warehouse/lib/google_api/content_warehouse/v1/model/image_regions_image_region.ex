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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegion do
  @moduledoc """
  A single region within an image. NEXT_ID: 11

  ## Attributes

  *   `boundingBox` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PhotosVisionGroundtruthdbNormalizedBoundingBox.t`, *default:* `nil`) - The bounding box of the region.
  *   `boundingBoxScore` (*type:* `number()`, *default:* `nil`) - The confidence score associated with the bounding box.
  *   `id` (*type:* `String.t`, *default:* `nil`) - A unique identifier for the region within the image. The id is unique only among other regions in the image.
  *   `isProduct` (*type:* `boolean()`, *default:* `nil`) - Set true if the region represents a product, i.e., if any of its labels are on a product labels whitelist. See ImageRegionsConfig for details on the product whitelist.
  *   `knnScore` (*type:* `float()`, *default:* `nil`) - The score for this region based on how visually similar its neighbors are.
  *   `labelGroup` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabelGroup.t`, *default:* `nil`) - The label group corresponding to the first LabelParams listed in ImageRegionsConfig.
  *   `labelVersion` (*type:* `String.t`, *default:* `nil`) - The version string of the labels with which the region was processed.
  *   `primaryLabel` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabel.t`, *default:* `nil`) - The primary label associated with the region. Specifically, the highest-scored whitelisted label associated with the region. See ImageRegionsConfig for details on the whitelist.
  *   `renderType` (*type:* `String.t`, *default:* `nil`) - 
  *   `starburstV4` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingFeature.t`, *default:* `nil`) - The starburst v4 features and tokens for the region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBox =>
            GoogleApi.ContentWarehouse.V1.Model.PhotosVisionGroundtruthdbNormalizedBoundingBox.t()
            | nil,
          :boundingBoxScore => number() | nil,
          :id => String.t() | nil,
          :isProduct => boolean() | nil,
          :knnScore => float() | nil,
          :labelGroup =>
            GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabelGroup.t() | nil,
          :labelVersion => String.t() | nil,
          :primaryLabel =>
            GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabel.t() | nil,
          :renderType => String.t() | nil,
          :starburstV4 =>
            GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingFeature.t() | nil
        }

  field(:boundingBox,
    as: GoogleApi.ContentWarehouse.V1.Model.PhotosVisionGroundtruthdbNormalizedBoundingBox
  )

  field(:boundingBoxScore)
  field(:id)
  field(:isProduct)
  field(:knnScore)
  field(:labelGroup, as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabelGroup)
  field(:labelVersion)
  field(:primaryLabel, as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabel)
  field(:renderType)
  field(:starburstV4, as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingFeature)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegion do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ImageRegionsImageRegion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
