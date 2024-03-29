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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoObjectTrackingMetrics do
  @moduledoc """
  Model evaluation metrics for video object tracking problems. Evaluates prediction quality of both labeled bounding boxes and labeled tracks (i.e. series of bounding boxes sharing same label and instance ID).

  ## Attributes

  *   `boundingBoxMeanAveragePrecision` (*type:* `number()`, *default:* `nil`) - The single metric for bounding boxes evaluation: the `meanAveragePrecision` averaged over all `boundingBoxMetrics`.
  *   `boundingBoxMetrics` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics.t)`, *default:* `nil`) - The bounding boxes match metrics for each intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 and each label confidence threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 pair.
  *   `evaluatedBoundingBoxCount` (*type:* `integer()`, *default:* `nil`) - UNIMPLEMENTED. The total number of bounding boxes (i.e. summed over all frames) the ground truth used to create this evaluation had.
  *   `evaluatedFrameCount` (*type:* `integer()`, *default:* `nil`) - UNIMPLEMENTED. The number of video frames used to create this evaluation.
  *   `evaluatedTrackCount` (*type:* `integer()`, *default:* `nil`) - UNIMPLEMENTED. The total number of tracks (i.e. as seen across all frames) the ground truth used to create this evaluation had.
  *   `trackMeanAveragePrecision` (*type:* `number()`, *default:* `nil`) - UNIMPLEMENTED. The single metric for tracks accuracy evaluation: the `meanAveragePrecision` averaged over all `trackMetrics`.
  *   `trackMeanBoundingBoxIou` (*type:* `number()`, *default:* `nil`) - UNIMPLEMENTED. The single metric for tracks bounding box iou evaluation: the `meanBoundingBoxIou` averaged over all `trackMetrics`.
  *   `trackMeanMismatchRate` (*type:* `number()`, *default:* `nil`) - UNIMPLEMENTED. The single metric for tracking consistency evaluation: the `meanMismatchRate` averaged over all `trackMetrics`.
  *   `trackMetrics` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics.t)`, *default:* `nil`) - UNIMPLEMENTED. The tracks match metrics for each intersection-over-union threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 and each label confidence threshold 0.05,0.10,...,0.95,0.96,0.97,0.98,0.99 pair.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :boundingBoxMeanAveragePrecision => number() | nil,
          :boundingBoxMetrics =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics.t()
            )
            | nil,
          :evaluatedBoundingBoxCount => integer() | nil,
          :evaluatedFrameCount => integer() | nil,
          :evaluatedTrackCount => integer() | nil,
          :trackMeanAveragePrecision => number() | nil,
          :trackMeanBoundingBoxIou => number() | nil,
          :trackMeanMismatchRate => number() | nil,
          :trackMetrics =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics.t()
            )
            | nil
        }

  field(:boundingBoxMeanAveragePrecision)

  field(:boundingBoxMetrics,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsBoundingBoxMetrics,
    type: :list
  )

  field(:evaluatedBoundingBoxCount)
  field(:evaluatedFrameCount)
  field(:evaluatedTrackCount)
  field(:trackMeanAveragePrecision)
  field(:trackMeanBoundingBoxIou)
  field(:trackMeanMismatchRate)

  field(:trackMetrics,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsTrackMetrics,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoObjectTrackingMetrics do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoObjectTrackingMetrics.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaModelevaluationMetricsVideoObjectTrackingMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
