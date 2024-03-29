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

defmodule GoogleApi.BareMetalSolution.V2.Model.ProvisioningQuota do
  @moduledoc """
  A provisioning quota for a given project.

  ## Attributes

  *   `assetType` (*type:* `String.t`, *default:* `nil`) - The asset type of this provisioning quota.
  *   `availableCount` (*type:* `integer()`, *default:* `nil`) - The available count of the provisioning quota.
  *   `gcpService` (*type:* `String.t`, *default:* `nil`) - The gcp service of the provisioning quota.
  *   `instanceQuota` (*type:* `GoogleApi.BareMetalSolution.V2.Model.InstanceQuota.t`, *default:* `nil`) - Instance quota.
  *   `location` (*type:* `String.t`, *default:* `nil`) - The specific location of the provisioining quota.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the provisioning quota.
  *   `networkBandwidth` (*type:* `String.t`, *default:* `nil`) - Network bandwidth, Gbps
  *   `serverCount` (*type:* `String.t`, *default:* `nil`) - Server count.
  *   `storageGib` (*type:* `String.t`, *default:* `nil`) - Storage size (GB).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetType => String.t() | nil,
          :availableCount => integer() | nil,
          :gcpService => String.t() | nil,
          :instanceQuota => GoogleApi.BareMetalSolution.V2.Model.InstanceQuota.t() | nil,
          :location => String.t() | nil,
          :name => String.t() | nil,
          :networkBandwidth => String.t() | nil,
          :serverCount => String.t() | nil,
          :storageGib => String.t() | nil
        }

  field(:assetType)
  field(:availableCount)
  field(:gcpService)
  field(:instanceQuota, as: GoogleApi.BareMetalSolution.V2.Model.InstanceQuota)
  field(:location)
  field(:name)
  field(:networkBandwidth)
  field(:serverCount)
  field(:storageGib)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.ProvisioningQuota do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.ProvisioningQuota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.ProvisioningQuota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
