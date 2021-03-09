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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_CompleteTrialRequest do
  @moduledoc """
  The request message for the CompleteTrial service method.

  ## Attributes

  *   `finalMeasurement` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement.t`, *default:* `nil`) - Optional. If provided, it will be used as the completed trial's final_measurement; Otherwise, the service will auto-select a previously reported measurement as the final-measurement
  *   `infeasibleReason` (*type:* `String.t`, *default:* `nil`) - Optional. A human readable reason why the trial was infeasible. This should only be provided if `trial_infeasible` is true.
  *   `trialInfeasible` (*type:* `boolean()`, *default:* `nil`) - Optional. True if the trial cannot be run with the given Parameter, and final_measurement will be ignored.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :finalMeasurement =>
            GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement.t() | nil,
          :infeasibleReason => String.t() | nil,
          :trialInfeasible => boolean() | nil
        }

  field(:finalMeasurement, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Measurement)
  field(:infeasibleReason)
  field(:trialInfeasible)
end

defimpl Poison.Decoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_CompleteTrialRequest do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_CompleteTrialRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_CompleteTrialRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
