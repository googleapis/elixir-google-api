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

defmodule GoogleApi.DNS.V1.Model.Quota do
  @moduledoc """
  Limits associated with a Project.

  ## Attributes

  *   `dnsKeysPerManagedZone` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of DnsKeys per ManagedZone.
  *   `kind` (*type:* `String.t`, *default:* `dns#quota`) - 
  *   `managedZones` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of managed zones in the project.
  *   `managedZonesPerNetwork` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of managed zones which can be attached to a network.
  *   `networksPerManagedZone` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of networks to which a privately scoped zone can be attached.
  *   `networksPerPolicy` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of networks per policy.
  *   `policies` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of policies per project.
  *   `resourceRecordsPerRrset` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of ResourceRecords per ResourceRecordSet.
  *   `rrsetAdditionsPerChange` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest.
  *   `rrsetDeletionsPerChange` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of ResourceRecordSets to delete per ChangesCreateRequest.
  *   `rrsetsPerManagedZone` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of ResourceRecordSets per zone in the project.
  *   `targetNameServersPerManagedZone` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of target name servers per managed forwarding zone.
  *   `targetNameServersPerPolicy` (*type:* `integer()`, *default:* `nil`) - Maximum allowed number of alternative target name servers per policy.
  *   `totalRrdataSizePerChange` (*type:* `integer()`, *default:* `nil`) - Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes.
  *   `whitelistedKeySpecs` (*type:* `list(GoogleApi.DNS.V1.Model.DnsKeySpec.t)`, *default:* `nil`) - DNSSEC algorithm and key length types that can be used for DnsKeys.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dnsKeysPerManagedZone => integer() | nil,
          :kind => String.t() | nil,
          :managedZones => integer() | nil,
          :managedZonesPerNetwork => integer() | nil,
          :networksPerManagedZone => integer() | nil,
          :networksPerPolicy => integer() | nil,
          :policies => integer() | nil,
          :resourceRecordsPerRrset => integer() | nil,
          :rrsetAdditionsPerChange => integer() | nil,
          :rrsetDeletionsPerChange => integer() | nil,
          :rrsetsPerManagedZone => integer() | nil,
          :targetNameServersPerManagedZone => integer() | nil,
          :targetNameServersPerPolicy => integer() | nil,
          :totalRrdataSizePerChange => integer() | nil,
          :whitelistedKeySpecs => list(GoogleApi.DNS.V1.Model.DnsKeySpec.t()) | nil
        }

  field(:dnsKeysPerManagedZone)
  field(:kind)
  field(:managedZones)
  field(:managedZonesPerNetwork)
  field(:networksPerManagedZone)
  field(:networksPerPolicy)
  field(:policies)
  field(:resourceRecordsPerRrset)
  field(:rrsetAdditionsPerChange)
  field(:rrsetDeletionsPerChange)
  field(:rrsetsPerManagedZone)
  field(:targetNameServersPerManagedZone)
  field(:targetNameServersPerPolicy)
  field(:totalRrdataSizePerChange)
  field(:whitelistedKeySpecs, as: GoogleApi.DNS.V1.Model.DnsKeySpec, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.Quota do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.Quota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.Quota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
