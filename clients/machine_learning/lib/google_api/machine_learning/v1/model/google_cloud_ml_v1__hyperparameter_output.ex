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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutput do
  @moduledoc """
  Represents the result of a single hyperparameter tuning trial from a training job. The TrainingOutput object that is returned on successful completion of a training job with hyperparameter tuning includes a list of HyperparameterOutput objects, one for each successful trial.

  ## Attributes

  - allMetrics ([GoogleCloudMlV1HyperparameterOutputHyperparameterMetric]): All recorded object metrics for this trial. This field is not currently populated. Defaults to: `null`.
  - finalMetric (GoogleCloudMlV1HyperparameterOutputHyperparameterMetric): The final objective metric seen for this trial. Defaults to: `null`.
  - hyperparameters (%{optional(String.t) &#x3D;&gt; String.t}): The hyperparameters given to this trial. Defaults to: `null`.
  - isTrialStoppedEarly (boolean()): True if the trial is stopped early. Defaults to: `null`.
  - trialId (String.t): The trial id for these results. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allMetrics =>
            list(
              GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.t()
            ),
          :finalMetric =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric.t(),
          :hyperparameters => map(),
          :isTrialStoppedEarly => any(),
          :trialId => any()
        }

  field(:allMetrics,
    as:
      GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric,
    type: :list
  )

  field(:finalMetric,
    as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutputHyperparameterMetric
  )

  field(:hyperparameters, type: :map)
  field(:isTrialStoppedEarly)
  field(:trialId)
end

defimpl Poison.Decoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutput do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutput.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1HyperparameterOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
