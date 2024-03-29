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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec do
  @moduledoc """
  Represent spec for train trials.

  ## Attributes

  *   `frequency` (*type:* `integer()`, *default:* `nil`) - Required. Frequency of search trials to start train stage. Top N [TrainTrialSpec.max_parallel_trial_count] search trials will be trained for every M [TrainTrialSpec.frequency] trials searched.
  *   `maxParallelTrialCount` (*type:* `integer()`, *default:* `nil`) - Required. The maximum number of trials to run in parallel.
  *   `trainTrialJobSpec` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t`, *default:* `nil`) - Required. The spec of a train trial job. The same spec applies to all train trials.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :frequency => integer() | nil,
          :maxParallelTrialCount => integer() | nil,
          :trainTrialJobSpec =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec.t() | nil
        }

  field(:frequency)
  field(:maxParallelTrialCount)

  field(:trainTrialJobSpec, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CustomJobSpec)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1NasJobSpecMultiTrialAlgorithmSpecTrainTrialSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
