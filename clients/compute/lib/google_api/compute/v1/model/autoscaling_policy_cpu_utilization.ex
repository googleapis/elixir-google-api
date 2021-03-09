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

defmodule GoogleApi.Compute.V1.Model.AutoscalingPolicyCpuUtilization do
  @moduledoc """
  CPU utilization policy.

  ## Attributes

  *   `utilizationTarget` (*type:* `float()`, *default:* `nil`) - The target CPU utilization that the autoscaler maintains. Must be a float value in the range (0, 1]. If not specified, the default is 0.6.

      If the CPU level is below the target utilization, the autoscaler scales in the number of instances until it reaches the minimum number of instances you specified or until the average CPU of your instances reaches the target utilization.

      If the average CPU is above the target utilization, the autoscaler scales out until it reaches the maximum number of instances you specified or until the average utilization reaches the target utilization.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :utilizationTarget => float() | nil
        }

  field(:utilizationTarget)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyCpuUtilization do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalingPolicyCpuUtilization.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicyCpuUtilization do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
