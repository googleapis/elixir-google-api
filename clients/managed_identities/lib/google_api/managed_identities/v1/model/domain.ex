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

defmodule GoogleApi.ManagedIdentities.V1.Model.Domain do
  @moduledoc """
  Represents a managed Microsoft Active Directory domain.

  ## Attributes

  *   `admin` (*type:* `String.t`, *default:* `nil`) - Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.
  *   `authorizedNetworks` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the instance was created.
  *   `fqdn` (*type:* `String.t`, *default:* `nil`) - Output only. The fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory set up on an internal network.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. Resource labels that can contain user-provided metadata.
  *   `locations` (*type:* `list(String.t)`, *default:* `nil`) - Required. Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.
  *   `reservedIpRange` (*type:* `String.t`, *default:* `nil`) - Required. The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of this domain.
  *   `statusMessage` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current status of this domain, if available.
  *   `trusts` (*type:* `list(GoogleApi.ManagedIdentities.V1.Model.Trust.t)`, *default:* `nil`) - Output only. The current trusts associated with the domain.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last update time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :admin => String.t(),
          :authorizedNetworks => list(String.t()),
          :createTime => DateTime.t(),
          :fqdn => String.t(),
          :labels => map(),
          :locations => list(String.t()),
          :name => String.t(),
          :reservedIpRange => String.t(),
          :state => String.t(),
          :statusMessage => String.t(),
          :trusts => list(GoogleApi.ManagedIdentities.V1.Model.Trust.t()),
          :updateTime => DateTime.t()
        }

  field(:admin)
  field(:authorizedNetworks, type: :list)
  field(:createTime, as: DateTime)
  field(:fqdn)
  field(:labels, type: :map)
  field(:locations, type: :list)
  field(:name)
  field(:reservedIpRange)
  field(:state)
  field(:statusMessage)
  field(:trusts, as: GoogleApi.ManagedIdentities.V1.Model.Trust, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.ManagedIdentities.V1.Model.Domain do
  def decode(value, options) do
    GoogleApi.ManagedIdentities.V1.Model.Domain.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ManagedIdentities.V1.Model.Domain do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
