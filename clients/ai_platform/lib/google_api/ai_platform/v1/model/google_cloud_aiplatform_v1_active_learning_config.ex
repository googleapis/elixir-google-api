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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ActiveLearningConfig do
  @moduledoc """
  Parameters that configure the active learning pipeline. Active learning will label the data incrementally by several iterations. For every iteration, it will select a batch of data based on the sampling strategy.

  ## Attributes

  *   `maxDataItemCount` (*type:* `String.t`, *default:* `nil`) - Max number of human labeled DataItems.
  *   `maxDataItemPercentage` (*type:* `integer()`, *default:* `nil`) - Max percent of total DataItems for human labeling.
  *   `sampleConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SampleConfig.t`, *default:* `nil`) - Active learning data sampling config. For every active learning labeling iteration, it will select a batch of data based on the sampling strategy.
  *   `trainingConfig` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrainingConfig.t`, *default:* `nil`) - CMLE training config. For every active learning labeling iteration, system will train a machine learning model on CMLE. The trained model will be used by data sampling algorithm to select DataItems.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxDataItemCount => String.t() | nil,
          :maxDataItemPercentage => integer() | nil,
          :sampleConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SampleConfig.t() | nil,
          :trainingConfig =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrainingConfig.t() | nil
        }

  field(:maxDataItemCount)
  field(:maxDataItemPercentage)
  field(:sampleConfig, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SampleConfig)
  field(:trainingConfig, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TrainingConfig)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ActiveLearningConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ActiveLearningConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ActiveLearningConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
