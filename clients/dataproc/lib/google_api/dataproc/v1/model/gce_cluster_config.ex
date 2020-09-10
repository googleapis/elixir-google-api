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

defmodule GoogleApi.Dataproc.V1.Model.GceClusterConfig do
  @moduledoc """
  Common config settings for resources of Compute Engine cluster instances, applicable to all instances in the cluster. NEXT ID: 13

  ## Attributes

  *   `internalIpOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, all instances in the cluster will only have internal IP addresses. By default, clusters are not restricted to internal IP addresses, and will have ephemeral external IP addresses assigned to each instance. This internal_ip_only restriction can only be enabled for subnetwork enabled networks, and all off-cluster dependencies must be configured to be accessible without external IP addresses.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - The Compute Engine metadata entries to add to all instances (see Project and instance metadata (https://cloud.google.com/compute/docs/storing-retrieving-metadata#project_and_instance_metadata)).
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - Optional. The Compute Engine network to be used for machine communications. Cannot be specified with subnetwork_uri. If neither network_uri nor subnetwork_uri is specified, the "default" network of the project is used, if it exists. Cannot be a "Custom Subnet Network" (see Using Subnetworks (https://cloud.google.com/compute/docs/subnetworks) for more information).A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/global/default projects/[project_id]/regions/global/default default
  *   `privateIpv6GoogleAccess` (*type:* `String.t`, *default:* `nil`) - Optional. The type of IPv6 access for a cluster.
  *   `reservationAffinity` (*type:* `GoogleApi.Dataproc.V1.Model.ReservationAffinity.t`, *default:* `nil`) - Optional. Reservation Affinity for consuming Zonal reservation.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The Dataproc service account (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/service-accounts#service_accounts_in_dataproc) (also see VM Data Plane identity (https://cloud.google.com/dataproc/docs/concepts/iam/dataproc-principals#vm_service_account_data_plane_identity)) used by Dataproc cluster VM instances to access Google Cloud Platform services.If not specified, the Compute Engine default service account (https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  *   `serviceAccountScopes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The URIs of service account scopes to be included in Compute Engine instances. The following base set of scopes is always included: https://www.googleapis.com/auth/cloud.useraccounts.readonly https://www.googleapis.com/auth/devstorage.read_write https://www.googleapis.com/auth/logging.writeIf no scopes are specified, the following defaults are also provided: https://www.googleapis.com/auth/bigquery https://www.googleapis.com/auth/bigtable.admin.table https://www.googleapis.com/auth/bigtable.data https://www.googleapis.com/auth/devstorage.full_control
  *   `subnetworkUri` (*type:* `String.t`, *default:* `nil`) - Optional. The Compute Engine subnetwork to be used for machine communications. Cannot be specified with network_uri.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/regions/us-east1/subnetworks/sub0 projects/[project_id]/regions/us-east1/subnetworks/sub0 sub0
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - The Compute Engine tags to add to all instances (see Tagging instances (https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
  *   `zoneUri` (*type:* `String.t`, *default:* `nil`) - Optional. The zone where the Compute Engine cluster will be located. On a create request, it is required in the "global" region. If omitted in a non-global Dataproc region, the service will pick a zone in the corresponding Compute Engine region. On a get request, zone will always be present.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone] projects/[project_id]/zones/[zone] us-central1-f
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :internalIpOnly => boolean(),
          :metadata => map(),
          :networkUri => String.t(),
          :privateIpv6GoogleAccess => String.t(),
          :reservationAffinity => GoogleApi.Dataproc.V1.Model.ReservationAffinity.t(),
          :serviceAccount => String.t(),
          :serviceAccountScopes => list(String.t()),
          :subnetworkUri => String.t(),
          :tags => list(String.t()),
          :zoneUri => String.t()
        }

  field(:internalIpOnly)
  field(:metadata, type: :map)
  field(:networkUri)
  field(:privateIpv6GoogleAccess)
  field(:reservationAffinity, as: GoogleApi.Dataproc.V1.Model.ReservationAffinity)
  field(:serviceAccount)
  field(:serviceAccountScopes, type: :list)
  field(:subnetworkUri)
  field(:tags, type: :list)
  field(:zoneUri)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.GceClusterConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.GceClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.GceClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
