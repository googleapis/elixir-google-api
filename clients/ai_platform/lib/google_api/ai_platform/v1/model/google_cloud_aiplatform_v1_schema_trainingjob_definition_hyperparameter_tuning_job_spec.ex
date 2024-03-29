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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec do
  @moduledoc """


  ## Attributes

  *   `maxFailedTrialCount` (*type:* `integer()`, *default:* `nil`) - The number of failed Trials that need to be seen before failing the HyperparameterTuningJob. If set to 0, Vertex AI decides how many Trials must fail before the whole job fails.
  *   `maxTrialCount` (*type:* `integer()`, *default:* `nil`) - The desired total number of Trials.
  *   `parallelTrialCount` (*type:* `integer()`, *default:* `nil`) - The desired number of Trials to run in parallel.
  *   `studySpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpec.t`, *default:* `nil`) - Study configuration of the HyperparameterTuningJob.
  *   `trialJobSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t`, *default:* `nil`) - The spec of a trial job. The same spec applies to the CustomJobs created in all the trials.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxFailedTrialCount => integer() | nil,
          :maxTrialCount => integer() | nil,
          :parallelTrialCount => integer() | nil,
          :studySpec => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpec.t() | nil,
          :trialJobSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t() | nil
        }

  field(:maxFailedTrialCount)
  field(:maxTrialCount)
  field(:parallelTrialCount)
  field(:studySpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StudySpec)
  field(:trialJobSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SchemaTrainingjobDefinitionHyperparameterTuningJobSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
