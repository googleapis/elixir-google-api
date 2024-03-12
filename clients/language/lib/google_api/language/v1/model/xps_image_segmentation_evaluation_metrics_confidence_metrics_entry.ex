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

defmodule GoogleApi.Language.V1.Model.XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry do
  @moduledoc """
  Metrics for a single confidence threshold.

  ## Attributes

  *   `confidenceThreshold` (*type:* `number()`, *default:* `nil`) - The confidence threshold value used to compute the metrics.
  *   `confusionMatrix` (*type:* `GoogleApi.Language.V1.Model.XPSConfusionMatrix.t`, *default:* `nil`) - Confusion matrix of the per confidence_threshold evaluation. Pixel counts are set here. Only set for model level evaluation, not for evaluation per label.
  *   `diceScoreCoefficient` (*type:* `number()`, *default:* `nil`) - DSC or the F1 score: The harmonic mean of recall and precision.
  *   `iouScore` (*type:* `number()`, *default:* `nil`) - IOU score.
  *   `precision` (*type:* `number()`, *default:* `nil`) - Precision for the given confidence threshold.
  *   `recall` (*type:* `number()`, *default:* `nil`) - Recall for the given confidence threshold.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidenceThreshold => number() | nil,
          :confusionMatrix => GoogleApi.Language.V1.Model.XPSConfusionMatrix.t() | nil,
          :diceScoreCoefficient => number() | nil,
          :iouScore => number() | nil,
          :precision => number() | nil,
          :recall => number() | nil
        }

  field(:confidenceThreshold)
  field(:confusionMatrix, as: GoogleApi.Language.V1.Model.XPSConfusionMatrix)
  field(:diceScoreCoefficient)
  field(:iouScore)
  field(:precision)
  field(:recall)
end

defimpl Poison.Decoder,
  for: GoogleApi.Language.V1.Model.XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Language.V1.Model.XPSImageSegmentationEvaluationMetricsConfidenceMetricsEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
