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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataAnchorFeatures do
  @moduledoc """
  Metadata about the join of description anchors and OCR data which is used to build training data.

  ## Attributes

  *   `editDistance` (*type:* `integer()`, *default:* `nil`) - The string edit distance from the anchor label to the nearest OCR text.
  *   `editDistanceRatio` (*type:* `number()`, *default:* `nil`) - edit_distance over the description anchor's label length.
  *   `matchedDescriptionText` (*type:* `String.t`, *default:* `nil`) - The description anchor text used for matching to OCR text.
  *   `matchedFrameTimeMs` (*type:* `integer()`, *default:* `nil`) - The time of the selected OCR frame in ms. The best frame in a window around the target description anchor will be selected.
  *   `matchedOcrText` (*type:* `String.t`, *default:* `nil`) - The OCR text that was the best match for the nearby description anchor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :editDistance => integer() | nil,
          :editDistanceRatio => number() | nil,
          :matchedDescriptionText => String.t() | nil,
          :matchedFrameTimeMs => integer() | nil,
          :matchedOcrText => String.t() | nil
        }

  field(:editDistance)
  field(:editDistanceRatio)
  field(:matchedDescriptionText)
  field(:matchedFrameTimeMs)
  field(:matchedOcrText)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataAnchorFeatures do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataAnchorFeatures.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchOcrDescriptionTrainingDataAnchorFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
