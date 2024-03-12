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

defmodule GoogleApi.Compute.V1.Model.InterconnectRemoteLocation do
  @moduledoc """
  Represents a Cross-Cloud Interconnect Remote Location resource. You can use this resource to find remote location details about an Interconnect attachment (VLAN).

  ## Attributes

  *   `address` (*type:* `String.t`, *default:* `nil`) - [Output Only] The postal address of the Point of Presence, each line in the address is separated by a newline character.
  *   `attachmentConfigurationConstraints` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachmentConfigurationConstraints.t`, *default:* `nil`) - [Output Only] Subset of fields from InterconnectAttachment's |configurationConstraints| field that apply to all attachments for this remote location.
  *   `city` (*type:* `String.t`, *default:* `nil`) - [Output Only] Metropolitan area designator that indicates which city an interconnect is located. For example: "Chicago, IL", "Amsterdam, Netherlands".
  *   `constraints` (*type:* `GoogleApi.Compute.V1.Model.InterconnectRemoteLocationConstraints.t`, *default:* `nil`) - [Output Only] Constraints on the parameters for creating Cross-Cloud Interconnect and associated InterconnectAttachments.
  *   `continent` (*type:* `String.t`, *default:* `nil`) - [Output Only] Continent for this location, which can take one of the following values: - AFRICA - ASIA_PAC - EUROPE - NORTH_AMERICA - SOUTH_AMERICA 
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - [Output Only] An optional description of the resource.
  *   `facilityProvider` (*type:* `String.t`, *default:* `nil`) - [Output Only] The name of the provider for this facility (e.g., EQUINIX).
  *   `facilityProviderFacilityId` (*type:* `String.t`, *default:* `nil`) - [Output Only] A provider-assigned Identifier for this facility (e.g., Ashburn-DC1).
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#interconnectRemoteLocation`) - [Output Only] Type of the resource. Always compute#interconnectRemoteLocation for interconnect remote locations.
  *   `lacp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Link Aggregation Control Protocol (LACP) constraints, which can take one of the following values: LACP_SUPPORTED, LACP_UNSUPPORTED
  *   `maxLagSize100Gbps` (*type:* `integer()`, *default:* `nil`) - [Output Only] The maximum number of 100 Gbps ports supported in a link aggregation group (LAG). When linkType is 100 Gbps, requestedLinkCount cannot exceed max_lag_size_100_gbps.
  *   `maxLagSize10Gbps` (*type:* `integer()`, *default:* `nil`) - [Output Only] The maximum number of 10 Gbps ports supported in a link aggregation group (LAG). When linkType is 10 Gbps, requestedLinkCount cannot exceed max_lag_size_10_gbps.
  *   `name` (*type:* `String.t`, *default:* `nil`) - [Output Only] Name of the resource.
  *   `peeringdbFacilityId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The peeringdb identifier for this facility (corresponding with a netfac type in peeringdb).
  *   `permittedConnections` (*type:* `list(GoogleApi.Compute.V1.Model.InterconnectRemoteLocationPermittedConnections.t)`, *default:* `nil`) - [Output Only] Permitted connections.
  *   `remoteService` (*type:* `String.t`, *default:* `nil`) - [Output Only] Indicates the service provider present at the remote location. Example values: "Amazon Web Services", "Microsoft Azure".
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of this InterconnectRemoteLocation, which can take one of the following values: - CLOSED: The InterconnectRemoteLocation is closed and is unavailable for provisioning new Cross-Cloud Interconnects. - AVAILABLE: The InterconnectRemoteLocation is available for provisioning new Cross-Cloud Interconnects. 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => String.t() | nil,
          :attachmentConfigurationConstraints =>
            GoogleApi.Compute.V1.Model.InterconnectAttachmentConfigurationConstraints.t() | nil,
          :city => String.t() | nil,
          :constraints =>
            GoogleApi.Compute.V1.Model.InterconnectRemoteLocationConstraints.t() | nil,
          :continent => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :facilityProvider => String.t() | nil,
          :facilityProviderFacilityId => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :lacp => String.t() | nil,
          :maxLagSize100Gbps => integer() | nil,
          :maxLagSize10Gbps => integer() | nil,
          :name => String.t() | nil,
          :peeringdbFacilityId => String.t() | nil,
          :permittedConnections =>
            list(GoogleApi.Compute.V1.Model.InterconnectRemoteLocationPermittedConnections.t())
            | nil,
          :remoteService => String.t() | nil,
          :selfLink => String.t() | nil,
          :status => String.t() | nil
        }

  field(:address)

  field(:attachmentConfigurationConstraints,
    as: GoogleApi.Compute.V1.Model.InterconnectAttachmentConfigurationConstraints
  )

  field(:city)
  field(:constraints, as: GoogleApi.Compute.V1.Model.InterconnectRemoteLocationConstraints)
  field(:continent)
  field(:creationTimestamp)
  field(:description)
  field(:facilityProvider)
  field(:facilityProviderFacilityId)
  field(:id)
  field(:kind)
  field(:lacp)
  field(:maxLagSize100Gbps)
  field(:maxLagSize10Gbps)
  field(:name)
  field(:peeringdbFacilityId)

  field(:permittedConnections,
    as: GoogleApi.Compute.V1.Model.InterconnectRemoteLocationPermittedConnections,
    type: :list
  )

  field(:remoteService)
  field(:selfLink)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectRemoteLocation do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectRemoteLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectRemoteLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
