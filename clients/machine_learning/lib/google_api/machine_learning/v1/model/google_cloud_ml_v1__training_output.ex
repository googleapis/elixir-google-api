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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingOutput do
  @moduledoc """
  Represents results of a training job. Output only.

  ## Attributes

  *   `builtInAlgorithmOutput` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_BuiltInAlgorithmOutput.t`, *default:* `nil`) - Details related to built-in algorithms jobs. Only set for built-in algorithms jobs.
  *   `completedTrialCount` (*type:* `String.t`, *default:* `nil`) - The number of hyperparameter tuning trials that completed successfully. Only set for hyperparameter tuning jobs.
  *   `consumedMLUnits` (*type:* `float()`, *default:* `nil`) - The amount of ML units consumed by the job.
  *   `hyperparameterMetricTag` (*type:* `String.t`, *default:* `nil`) - The TensorFlow summary tag name used for optimizing hyperparameter tuning trials. See [`HyperparameterSpec.hyperparameterMetricTag`](#HyperparameterSpec.FIELDS.hyperparameter_metric_tag) for more information. Only set for hyperparameter tuning jobs.
  *   `isBuiltInAlgorithmJob` (*type:* `boolean()`, *default:* `nil`) - Whether this job is a built-in Algorithm job.
  *   `isHyperparameterTuningJob` (*type:* `boolean()`, *default:* `nil`) - Whether this job is a hyperparameter tuning job.
  *   `trials` (*type:* `list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_HyperparameterOutput.t)`, *default:* `nil`) - Results for individual Hyperparameter trials. Only set for hyperparameter tuning jobs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :builtInAlgorithmOutput =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_BuiltInAlgorithmOutput.t() | nil,
          :completedTrialCount => String.t() | nil,
          :consumedMLUnits => float() | nil,
          :hyperparameterMetricTag => String.t() | nil,
          :isBuiltInAlgorithmJob => boolean() | nil,
          :isHyperparameterTuningJob => boolean() | nil,
          :trials =>
            list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_HyperparameterOutput.t())
            | nil
        }

  field(:builtInAlgorithmOutput,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_BuiltInAlgorithmOutput
  )

  field(:completedTrialCount)
  field(:consumedMLUnits)
  field(:hyperparameterMetricTag)
  field(:isBuiltInAlgorithmJob)
  field(:isHyperparameterTuningJob)

  field(:trials,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_HyperparameterOutput,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingOutput do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingOutput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_TrainingOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
