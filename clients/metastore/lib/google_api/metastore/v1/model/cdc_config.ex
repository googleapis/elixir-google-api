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

defmodule GoogleApi.Metastore.V1.Model.CdcConfig do
  @moduledoc """
  Configuration information to start the Change Data Capture (CDC) streams from customer database to backend database of Dataproc Metastore.

  ## Attributes

  *   `bucket` (*type:* `String.t`, *default:* `nil`) - Optional. The bucket to write the intermediate stream event data in. The bucket name must be without any prefix like "gs://". See the bucket naming requirements (https://cloud.google.com/storage/docs/buckets#naming). This field is optional. If not set, the Artifacts Cloud Storage bucket will be used.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Required. Input only. The password for the user that Datastream service should use for the MySQL connection. This field is not returned on request.
  *   `reverseProxySubnet` (*type:* `String.t`, *default:* `nil`) - Required. The URL of the subnetwork resource to create the VM instance hosting the reverse proxy in. More context in https://cloud.google.com/datastream/docs/private-connectivity#reverse-csql-proxy The subnetwork should reside in the network provided in the request that Datastream will peer to and should be in the same region as Datastream, in the following format. projects/{project_id}/regions/{region_id}/subnetworks/{subnetwork_id}
  *   `rootPath` (*type:* `String.t`, *default:* `nil`) - Optional. The root path inside the Cloud Storage bucket. The stream event data will be written to this path. The default value is /migration.
  *   `subnetIpRange` (*type:* `String.t`, *default:* `nil`) - Required. A /29 CIDR IP range for peering with datastream.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. The username that the Datastream service should use for the MySQL connection.
  *   `vpcNetwork` (*type:* `String.t`, *default:* `nil`) - Required. Fully qualified name of the Cloud SQL instance's VPC network or the shared VPC network that Datastream will peer to, in the following format: projects/{project_id}/locations/global/networks/{network_id}. More context in https://cloud.google.com/datastream/docs/network-connectivity-options#privateconnectivity
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bucket => String.t() | nil,
          :password => String.t() | nil,
          :reverseProxySubnet => String.t() | nil,
          :rootPath => String.t() | nil,
          :subnetIpRange => String.t() | nil,
          :username => String.t() | nil,
          :vpcNetwork => String.t() | nil
        }

  field(:bucket)
  field(:password)
  field(:reverseProxySubnet)
  field(:rootPath)
  field(:subnetIpRange)
  field(:username)
  field(:vpcNetwork)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.CdcConfig do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.CdcConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.CdcConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
