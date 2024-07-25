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

defmodule GoogleApi.CloudControlsPartner.V1.Model.CustomerOnboardingStep do
  @moduledoc """
  Container for customer onboarding information

  ## Attributes

  *   `completionState` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the step
  *   `completionTime` (*type:* `DateTime.t`, *default:* `nil`) - The completion time of the onboarding step
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The starting time of the onboarding step
  *   `step` (*type:* `String.t`, *default:* `nil`) - The onboarding step
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completionState => String.t() | nil,
          :completionTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil,
          :step => String.t() | nil
        }

  field(:completionState)
  field(:completionTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:step)
end

defimpl Poison.Decoder, for: GoogleApi.CloudControlsPartner.V1.Model.CustomerOnboardingStep do
  def decode(value, options) do
    GoogleApi.CloudControlsPartner.V1.Model.CustomerOnboardingStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudControlsPartner.V1.Model.CustomerOnboardingStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
