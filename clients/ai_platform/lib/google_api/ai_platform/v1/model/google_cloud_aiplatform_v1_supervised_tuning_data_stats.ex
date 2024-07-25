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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDataStats do
  @moduledoc """
  Tuning data statistics for Supervised Tuning.

  ## Attributes

  *   `totalBillableCharacterCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of billable characters in the tuning dataset.
  *   `totalBillableTokenCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of billable tokens in the tuning dataset.
  *   `totalTuningCharacterCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of tuning characters in the tuning dataset.
  *   `tuningDatasetExampleCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of examples in the tuning dataset.
  *   `tuningStepCount` (*type:* `String.t`, *default:* `nil`) - Output only. Number of tuning steps for this Tuning Job.
  *   `userDatasetExamples` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t)`, *default:* `nil`) - Output only. Sample user messages in the training dataset uri.
  *   `userInputTokenDistribution` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution.t`, *default:* `nil`) - Output only. Dataset distributions for the user input tokens.
  *   `userMessagePerExampleDistribution` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution.t`, *default:* `nil`) - Output only. Dataset distributions for the messages per example.
  *   `userOutputTokenDistribution` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution.t`, *default:* `nil`) - Output only. Dataset distributions for the user output tokens.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :totalBillableCharacterCount => String.t() | nil,
          :totalBillableTokenCount => String.t() | nil,
          :totalTuningCharacterCount => String.t() | nil,
          :tuningDatasetExampleCount => String.t() | nil,
          :tuningStepCount => String.t() | nil,
          :userDatasetExamples =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content.t()) | nil,
          :userInputTokenDistribution =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution.t()
            | nil,
          :userMessagePerExampleDistribution =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution.t()
            | nil,
          :userOutputTokenDistribution =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution.t()
            | nil
        }

  field(:totalBillableCharacterCount)
  field(:totalBillableTokenCount)
  field(:totalTuningCharacterCount)
  field(:tuningDatasetExampleCount)
  field(:tuningStepCount)

  field(:userDatasetExamples,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Content,
    type: :list
  )

  field(:userInputTokenDistribution,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution
  )

  field(:userMessagePerExampleDistribution,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution
  )

  field(:userOutputTokenDistribution,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDatasetDistribution
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDataStats do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDataStats.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SupervisedTuningDataStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
