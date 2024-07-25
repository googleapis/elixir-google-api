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

defmodule GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingState do
  @moduledoc """
  Container for workload onboarding steps.

  ## Attributes

  *   `onboardingSteps` (*type:* `list(GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingStep.t)`, *default:* `nil`) - List of workload onboarding steps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :onboardingSteps =>
            list(GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingStep.t()) | nil
        }

  field(:onboardingSteps,
    as: GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingStep,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingState do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.WorkloadOnboardingState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
