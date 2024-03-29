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

defmodule GoogleApi.DataMigration.V1.Model.VpcPeeringConfig do
  @moduledoc """
  The VPC peering configuration is used to create VPC peering with the consumer's VPC.

  ## Attributes

  *   `subnet` (*type:* `String.t`, *default:* `nil`) - Required. A free subnet for peering. (CIDR of /29)
  *   `vpcName` (*type:* `String.t`, *default:* `nil`) - Required. Fully qualified name of the VPC that Database Migration Service will peer to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :subnet => String.t() | nil,
          :vpcName => String.t() | nil
        }

  field(:subnet)
  field(:vpcName)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.VpcPeeringConfig do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.VpcPeeringConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.VpcPeeringConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
