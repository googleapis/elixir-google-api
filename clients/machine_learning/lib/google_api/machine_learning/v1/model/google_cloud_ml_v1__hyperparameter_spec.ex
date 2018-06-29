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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterSpec do
  @moduledoc """
  Represents a set of hyperparameters to optimize.

  ## Attributes

  - algorithm (String.t): Optional. The search algorithm specified for the hyperparameter tuning job. Uses the default CloudML Engine hyperparameter tuning algorithm if unspecified. Defaults to: `null`.
    - Enum - one of [ALGORITHM_UNSPECIFIED, GRID_SEARCH, RANDOM_SEARCH]
  - enableTrialEarlyStopping (boolean()): Optional. Indicates if the hyperparameter tuning job enables auto trial early stopping. Defaults to: `null`.
  - goal (String.t): Required. The type of goal to use for tuning. Available types are &#x60;MAXIMIZE&#x60; and &#x60;MINIMIZE&#x60;.  Defaults to &#x60;MAXIMIZE&#x60;. Defaults to: `null`.
    - Enum - one of [GOAL_TYPE_UNSPECIFIED, MAXIMIZE, MINIMIZE]
  - hyperparameterMetricTag (String.t): Optional. The Tensorflow summary tag name to use for optimizing trials. For current versions of Tensorflow, this tag name should exactly match what is shown in Tensorboard, including all scopes.  For versions of Tensorflow prior to 0.12, this should be only the tag passed to tf.Summary. By default, \&quot;training/hptuning/metric\&quot; will be used. Defaults to: `null`.
  - maxParallelTrials (integer()): Optional. The number of training trials to run concurrently. You can reduce the time it takes to perform hyperparameter tuning by adding trials in parallel. However, each trail only benefits from the information gained in completed trials. That means that a trial does not get access to the results of trials running at the same time, which could reduce the quality of the overall optimization.  Each trial will use the same scale tier and machine types.  Defaults to one. Defaults to: `null`.
  - maxTrials (integer()): Optional. How many training trials should be attempted to optimize the specified hyperparameters.  Defaults to one. Defaults to: `null`.
  - params ([GoogleCloudMlV1ParameterSpec]): Required. The set of parameters to tune. Defaults to: `null`.
  - resumePreviousJobId (String.t): Optional. The prior hyperparameter tuning job id that users hope to continue with. The job id will be used to find the corresponding vizier study guid and resume the study. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => any(),
          :enableTrialEarlyStopping => any(),
          :goal => any(),
          :hyperparameterMetricTag => any(),
          :maxParallelTrials => any(),
          :maxTrials => any(),
          :params => list(GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1ParameterSpec.t()),
          :resumePreviousJobId => any()
        }

  field(:algorithm)
  field(:enableTrialEarlyStopping)
  field(:goal)
  field(:hyperparameterMetricTag)
  field(:maxParallelTrials)
  field(:maxTrials)
  field(:params, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1ParameterSpec, type: :list)
  field(:resumePreviousJobId)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterSpec do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
