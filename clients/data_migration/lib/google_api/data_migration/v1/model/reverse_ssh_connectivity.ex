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

defmodule GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity do
  @moduledoc """
  The details needed to configure a reverse SSH tunnel between the source and destination databases. These details will be used when calling the generateSshScript method (see https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/generateSshScript) to produce the script that will help set up the reverse SSH tunnel, and to set up the VPC peering between the Cloud SQL private network and the VPC.

  ## Attributes

  *   `vm` (*type:* `String.t`, *default:* `nil`) - The name of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  *   `vmIp` (*type:* `String.t`, *default:* `nil`) - Required. The IP of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  *   `vmPort` (*type:* `integer()`, *default:* `nil`) - Required. The forwarding port of the virtual machine (Compute Engine) used as the bastion server for the SSH tunnel.
  *   `vpc` (*type:* `String.t`, *default:* `nil`) - The name of the VPC to peer with the Cloud SQL private network.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :vm => String.t() | nil,
          :vmIp => String.t() | nil,
          :vmPort => integer() | nil,
          :vpc => String.t() | nil
        }

  field(:vm)
  field(:vmIp)
  field(:vmPort)
  field(:vpc)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.ReverseSshConnectivity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
