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

defmodule GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation do
  @moduledoc """
  A protocol buffer to store the OCR annotation. Next available tag id: 10.

  ## Attributes

  *   `ocrAnnotationVersion` (*type:* `String.t`, *default:* `nil`) - A string that indicates the version of SafeSearch OCR annotation.
  *   `ocrProminenceScore` (*type:* `number()`, *default:* `nil`) - The score produced by Aksara geometry and spoof score. Describes the 'visibility' or 'importance' of the text on the image [0, 1]
  *   `pornScore` (*type:* `number()`, *default:* `nil`) - Image OCR racyness/pornyness, computed by porn query classifier.
  *   `prominentOffensiveScore` (*type:* `number()`, *default:* `nil`) - Same as offensive_score, but weighted by prominence.
  *   `prominentVulgarScore` (*type:* `number()`, *default:* `nil`) - Same as vulgar_score, but weighted by prominence.
  *   `qbstOffensiveScore` (*type:* `number()`, *default:* `nil`) - The score produced by offensive salient terms model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ocrAnnotationVersion => String.t() | nil,
          :ocrProminenceScore => number() | nil,
          :pornScore => number() | nil,
          :prominentOffensiveScore => number() | nil,
          :prominentVulgarScore => number() | nil,
          :qbstOffensiveScore => number() | nil
        }

  field(:ocrAnnotationVersion)
  field(:ocrProminenceScore)
  field(:pornScore)
  field(:prominentOffensiveScore)
  field(:prominentVulgarScore)
  field(:qbstOffensiveScore)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.ImageSafesearchContentOCRAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
