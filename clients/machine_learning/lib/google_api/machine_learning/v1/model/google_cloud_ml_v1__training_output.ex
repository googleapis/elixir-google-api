# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingOutput do
  @moduledoc """
  Represents results of a training job. Output only.

  ## Attributes

  - completedTrialCount (String.t): The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs. Defaults to: `null`.
  - consumedMLUnits (float()): The amount of ML units consumed by the job. Defaults to: `null`.
  - isHyperparameterTuningJob (boolean()): Whether this job is a hyperparameter tuning job. Defaults to: `null`.
  - trials ([GoogleCloudMlV1HyperparameterOutput]): Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completedTrialCount => any(),
          :consumedMLUnits => any(),
          :isHyperparameterTuningJob => any(),
          :trials =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutput.t())
        }

  field(:completedTrialCount)
  field(:consumedMLUnits)
  field(:isHyperparameterTuningJob)

  field(:trials,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutput,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingOutput do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingOutput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1TrainingOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
