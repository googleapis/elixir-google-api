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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageObjectDetectionEvaluationMetrics do
  @moduledoc """
  Metrics for image object detection evaluation results.

  ## Attributes

  *   `boundingBoxMeanAveragePrecision` (*type:* `number()`, *default:* `nil`) - The single metric for bounding boxes evaluation: the `meanAveragePrecision` averaged over all `boundingBoxMetricsEntries`.
  *   `boundingBoxMetrics` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics.t)`, *default:* `nil`) - The bounding boxes match metrics for each intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 and each label confidence threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 pair.
  *   `evaluatedBoundingBoxCount` (*type:* `integer()`, *default:* `nil`) - The total number of bounding boxes (i.e. summed over all images) the ground truth used to create this evaluation had.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBoxMeanAveragePrecision => number() | nil,
          :boundingBoxMetrics =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics.t()
            )
            | nil,
          :evaluatedBoundingBoxCount => integer() | nil
        }

  field(:boundingBoxMeanAveragePrecision)

  field(:boundingBoxMetrics,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics,
    type: :list
  )

  field(:evaluatedBoundingBoxCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageObjectDetectionEvaluationMetrics do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageObjectDetectionEvaluationMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsImageObjectDetectionEvaluationMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
