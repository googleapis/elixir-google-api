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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotation do
  @moduledoc """
  Annotation packs various recognition, detection, embedding, and parsing results. One Annotation per bounding box detection.

  ## Attributes

  *   `feature` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingFeature.t)`, *default:* `nil`) - Multiple feature embeddings for this bounding box.
  *   `labelGroup` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabelGroup.t)`, *default:* `nil`) - Multiple label annotations for this bounding box.
  *   `roi` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingImageRegion.t`, *default:* `nil`) - Detected bounding box. Leave it not set for whole image annotation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :feature =>
            list(GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingFeature.t()) | nil,
          :labelGroup =>
            list(GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabelGroup.t())
            | nil,
          :roi =>
            GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingImageRegion.t() | nil
        }

  field(:feature,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingFeature,
    type: :list
  )

  field(:labelGroup,
    as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingLabelGroup,
    type: :list
  )

  field(:roi, as: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingImageRegion)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageUnderstandingIndexingAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
