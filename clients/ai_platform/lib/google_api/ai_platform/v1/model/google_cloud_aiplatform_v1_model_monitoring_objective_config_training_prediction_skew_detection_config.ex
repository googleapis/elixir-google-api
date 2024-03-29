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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig do
  @moduledoc """
  The config for Training & Prediction data skew detection. It specifies the training dataset sources and the skew detection parameters.

  ## Attributes

  *   `attributionScoreSkewThresholds` (*type:* `%{optional(String.t) => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig.t}`, *default:* `nil`) - Key is the feature name and value is the threshold. The threshold here is against attribution score distance between the training and prediction feature.
  *   `defaultSkewThreshold` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig.t`, *default:* `nil`) - Skew anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  *   `skewThresholds` (*type:* `%{optional(String.t) => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig.t}`, *default:* `nil`) - Key is the feature name and value is the threshold. If a feature needs to be monitored for skew, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between the training and prediction feature.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributionScoreSkewThresholds =>
            %{
              optional(String.t()) =>
                GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig.t()
            }
            | nil,
          :defaultSkewThreshold =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig.t() | nil,
          :skewThresholds =>
            %{
              optional(String.t()) =>
                GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig.t()
            }
            | nil
        }

  field(:attributionScoreSkewThresholds,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig,
    type: :map
  )

  field(:defaultSkewThreshold,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig
  )

  field(:skewThresholds,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ThresholdConfig,
    type: :map
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
