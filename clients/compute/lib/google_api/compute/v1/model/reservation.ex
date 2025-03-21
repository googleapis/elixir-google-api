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

defmodule GoogleApi.Compute.V1.Model.Reservation do
  @moduledoc """
  Represents a reservation resource. A reservation ensures that capacity is held in a specific zone even if the reserved VMs are not running. For more information, read Reserving zonal resources.

  ## Attributes

  *   `aggregateReservation` (*type:* `GoogleApi.Compute.V1.Model.AllocationAggregateReservation.t`, *default:* `nil`) - Reservation for aggregated resources, providing shape flexibility.
  *   `commitment` (*type:* `String.t`, *default:* `nil`) - [Output Only] Full or partial URL to a parent commitment. This field displays for reservations that are tied to a commitment.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#reservation`) - [Output Only] Type of the resource. Always compute#reservations for reservations.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `reservationSharingPolicy` (*type:* `GoogleApi.Compute.V1.Model.AllocationReservationSharingPolicy.t`, *default:* `nil`) - Specify the reservation sharing policy. If unspecified, the reservation will not be shared with Google Cloud managed services.
  *   `resourcePolicies` (*type:* `map()`, *default:* `nil`) - Resource policies to be added to this reservation. The key is defined by user, and the value is resource policy url. This is to define placement policy with reservation.
  *   `resourceStatus` (*type:* `GoogleApi.Compute.V1.Model.AllocationResourceStatus.t`, *default:* `nil`) - [Output Only] Status information for Reservation resource.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Reserved for future use.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined fully-qualified URL for this resource.
  *   `shareSettings` (*type:* `GoogleApi.Compute.V1.Model.ShareSettings.t`, *default:* `nil`) - Specify share-settings to create a shared reservation. This property is optional. For more information about the syntax and options for this field and its subfields, see the guide for creating a shared reservation.
  *   `specificReservation` (*type:* `GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation.t`, *default:* `nil`) - Reservation for instances with specific machine shapes.
  *   `specificReservationRequired` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the reservation can be consumed by VMs with affinity for "any" reservation. If the field is set, then only VMs that target the reservation by name can consume from this reservation.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the reservation. - CREATING: Reservation resources are being allocated. - READY: Reservation resources have been allocated, and the reservation is ready for use. - DELETING: Reservation deletion is in progress. - UPDATING: Reservation update is in progress. 
  *   `zone` (*type:* `String.t`, *default:* `nil`) - Zone in which the reservation resides. A zone must be provided if the reservation is created within a commitment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateReservation =>
            GoogleApi.Compute.V1.Model.AllocationAggregateReservation.t() | nil,
          :commitment => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :name => String.t() | nil,
          :reservationSharingPolicy =>
            GoogleApi.Compute.V1.Model.AllocationReservationSharingPolicy.t() | nil,
          :resourcePolicies => map() | nil,
          :resourceStatus => GoogleApi.Compute.V1.Model.AllocationResourceStatus.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :selfLink => String.t() | nil,
          :shareSettings => GoogleApi.Compute.V1.Model.ShareSettings.t() | nil,
          :specificReservation =>
            GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation.t() | nil,
          :specificReservationRequired => boolean() | nil,
          :status => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:aggregateReservation, as: GoogleApi.Compute.V1.Model.AllocationAggregateReservation)
  field(:commitment)
  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)

  field(:reservationSharingPolicy,
    as: GoogleApi.Compute.V1.Model.AllocationReservationSharingPolicy
  )

  field(:resourcePolicies, type: :map)
  field(:resourceStatus, as: GoogleApi.Compute.V1.Model.AllocationResourceStatus)
  field(:satisfiesPzs)
  field(:selfLink)
  field(:shareSettings, as: GoogleApi.Compute.V1.Model.ShareSettings)
  field(:specificReservation, as: GoogleApi.Compute.V1.Model.AllocationSpecificSKUReservation)
  field(:specificReservationRequired)
  field(:status)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.Reservation do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.Reservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.Reservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
