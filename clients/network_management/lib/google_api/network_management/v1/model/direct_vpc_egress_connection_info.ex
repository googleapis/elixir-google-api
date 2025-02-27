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

defmodule GoogleApi.NetworkManagement.V1.Model.DirectVpcEgressConnectionInfo do
  @moduledoc """
  For display only. Metadata associated with a serverless direct VPC egress connection.

  ## Attributes

  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - URI of direct access network.
  *   `region` (*type:* `String.t`, *default:* `nil`) - Region in which the Direct VPC egress is deployed.
  *   `selectedIpAddress` (*type:* `String.t`, *default:* `nil`) - Selected starting IP address, from the selected IP range.
  *   `selectedIpRange` (*type:* `String.t`, *default:* `nil`) - Selected IP range.
  *   `subnetworkUri` (*type:* `String.t`, *default:* `nil`) - URI of direct access subnetwork.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :networkUri => String.t() | nil,
          :region => String.t() | nil,
          :selectedIpAddress => String.t() | nil,
          :selectedIpRange => String.t() | nil,
          :subnetworkUri => String.t() | nil
        }

  field(:networkUri)
  field(:region)
  field(:selectedIpAddress)
  field(:selectedIpRange)
  field(:subnetworkUri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.DirectVpcEgressConnectionInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.DirectVpcEgressConnectionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.DirectVpcEgressConnectionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
