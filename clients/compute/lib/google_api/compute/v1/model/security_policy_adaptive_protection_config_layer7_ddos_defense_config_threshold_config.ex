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

defmodule GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig do
  @moduledoc """


  ## Attributes

  *   `autoDeployConfidenceThreshold` (*type:* `number()`, *default:* `nil`) - 
  *   `autoDeployExpirationSec` (*type:* `integer()`, *default:* `nil`) - 
  *   `autoDeployImpactedBaselineThreshold` (*type:* `number()`, *default:* `nil`) - 
  *   `autoDeployLoadThreshold` (*type:* `number()`, *default:* `nil`) - 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name must be 1-63 characters long, and comply with RFC1035. The name must be unique within the security policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDeployConfidenceThreshold => number() | nil,
          :autoDeployExpirationSec => integer() | nil,
          :autoDeployImpactedBaselineThreshold => number() | nil,
          :autoDeployLoadThreshold => number() | nil,
          :name => String.t() | nil
        }

  field(:autoDeployConfidenceThreshold)
  field(:autoDeployExpirationSec)
  field(:autoDeployImpactedBaselineThreshold)
  field(:autoDeployLoadThreshold)
  field(:name)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Compute.V1.Model.SecurityPolicyAdaptiveProtectionConfigLayer7DdosDefenseConfigThresholdConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
