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

defmodule GoogleApi.Compute.V1.Model.RouterStatusNatStatus do
  @moduledoc """
  Status of a NAT contained in this router.

  ## Attributes

  *   `autoAllocatedNatIps` (*type:* `list(String.t)`, *default:* `nil`) - A list of IPs auto-allocated for NAT. Example: ["1.1.1.1", "129.2.16.89"]
  *   `drainAutoAllocatedNatIps` (*type:* `list(String.t)`, *default:* `nil`) - A list of IPs auto-allocated for NAT that are in drain mode. Example: ["1.1.1.1", "179.12.26.133"].
  *   `drainUserAllocatedNatIps` (*type:* `list(String.t)`, *default:* `nil`) - A list of IPs user-allocated for NAT that are in drain mode. Example: ["1.1.1.1", "179.12.26.133"].
  *   `minExtraNatIpsNeeded` (*type:* `integer()`, *default:* `nil`) - The number of extra IPs to allocate. This will be greater than 0 only if user-specified IPs are NOT enough to allow all configured VMs to use NAT. This value is meaningful only when auto-allocation of NAT IPs is *not* used.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique name of this NAT.
  *   `numVmEndpointsWithNatMappings` (*type:* `integer()`, *default:* `nil`) - Number of VM endpoints (i.e., Nics) that can use NAT.
  *   `ruleStatus` (*type:* `list(GoogleApi.Compute.V1.Model.RouterStatusNatStatusNatRuleStatus.t)`, *default:* `nil`) - Status of rules in this NAT.
  *   `userAllocatedNatIpResources` (*type:* `list(String.t)`, *default:* `nil`) - A list of fully qualified URLs of reserved IP address resources.
  *   `userAllocatedNatIps` (*type:* `list(String.t)`, *default:* `nil`) - A list of IPs user-allocated for NAT. They will be raw IP strings like "179.12.26.133".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoAllocatedNatIps => list(String.t()) | nil,
          :drainAutoAllocatedNatIps => list(String.t()) | nil,
          :drainUserAllocatedNatIps => list(String.t()) | nil,
          :minExtraNatIpsNeeded => integer() | nil,
          :name => String.t() | nil,
          :numVmEndpointsWithNatMappings => integer() | nil,
          :ruleStatus =>
            list(GoogleApi.Compute.V1.Model.RouterStatusNatStatusNatRuleStatus.t()) | nil,
          :userAllocatedNatIpResources => list(String.t()) | nil,
          :userAllocatedNatIps => list(String.t()) | nil
        }

  field(:autoAllocatedNatIps, type: :list)
  field(:drainAutoAllocatedNatIps, type: :list)
  field(:drainUserAllocatedNatIps, type: :list)
  field(:minExtraNatIpsNeeded)
  field(:name)
  field(:numVmEndpointsWithNatMappings)

  field(:ruleStatus,
    as: GoogleApi.Compute.V1.Model.RouterStatusNatStatusNatRuleStatus,
    type: :list
  )

  field(:userAllocatedNatIpResources, type: :list)
  field(:userAllocatedNatIps, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.RouterStatusNatStatus do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RouterStatusNatStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.RouterStatusNatStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
