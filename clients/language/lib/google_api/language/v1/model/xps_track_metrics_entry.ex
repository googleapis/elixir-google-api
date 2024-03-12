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

defmodule GoogleApi.Language.V1.Model.XPSTrackMetricsEntry do
  @moduledoc """
  Track matching model metrics for a single track match threshold and multiple label match confidence thresholds. Next tag: 6.

  ## Attributes

  *   `confidenceMetricsEntries` (*type:* `list(GoogleApi.Language.V1.Model.XPSTrackMetricsEntryConfidenceMetricsEntry.t)`, *default:* `nil`) - Output only. Metrics for each label-match confidence_threshold from 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99. Precision-recall curve is derived from them.
  *   `iouThreshold` (*type:* `number()`, *default:* `nil`) - Output only. The intersection-over-union threshold value between bounding boxes across frames used to compute this metric entry.
  *   `meanBoundingBoxIou` (*type:* `number()`, *default:* `nil`) - Output only. The mean bounding box iou over all confidence thresholds.
  *   `meanMismatchRate` (*type:* `number()`, *default:* `nil`) - Output only. The mean mismatch rate over all confidence thresholds.
  *   `meanTrackingAveragePrecision` (*type:* `number()`, *default:* `nil`) - Output only. The mean average precision over all confidence thresholds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceMetricsEntries =>
            list(GoogleApi.Language.V1.Model.XPSTrackMetricsEntryConfidenceMetricsEntry.t()) | nil,
          :iouThreshold => number() | nil,
          :meanBoundingBoxIou => number() | nil,
          :meanMismatchRate => number() | nil,
          :meanTrackingAveragePrecision => number() | nil
        }

  field(:confidenceMetricsEntries,
    as: GoogleApi.Language.V1.Model.XPSTrackMetricsEntryConfidenceMetricsEntry,
    type: :list
  )

  field(:iouThreshold)
  field(:meanBoundingBoxIou)
  field(:meanMismatchRate)
  field(:meanTrackingAveragePrecision)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.XPSTrackMetricsEntry do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSTrackMetricsEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.XPSTrackMetricsEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
