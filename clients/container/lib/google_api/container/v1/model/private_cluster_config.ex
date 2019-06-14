# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Container.V1.Model.PrivateClusterConfig do
  @moduledoc """
  Configuration options for private clusters.

  ## Attributes

  - enablePrivateEndpoint (boolean()): Whether the master's internal IP address is used as the cluster endpoint. Defaults to `nil`.
  - enablePrivateNodes (boolean()): Whether nodes have internal IP addresses only. If enabled, all nodes are
  given only RFC 1918 private addresses and communicate with the master via
  private networking. Defaults to `nil`.
  - masterIpv4CidrBlock (String.t): The IP range in CIDR notation to use for the hosted master network. This
  range will be used for assigning internal IP addresses to the master or
  set of masters, as well as the ILB VIP. This range must not overlap with
  any other ranges in use within the cluster's network. Defaults to `nil`.
  - privateEndpoint (String.t): Output only. The internal IP address of this cluster's master endpoint. Defaults to `nil`.
  - publicEndpoint (String.t): Output only. The external IP address of this cluster's master endpoint. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enablePrivateEndpoint => boolean(),
          :enablePrivateNodes => boolean(),
          :masterIpv4CidrBlock => String.t(),
          :privateEndpoint => String.t(),
          :publicEndpoint => String.t()
        }

  field(:enablePrivateEndpoint)
  field(:enablePrivateNodes)
  field(:masterIpv4CidrBlock)
  field(:privateEndpoint)
  field(:publicEndpoint)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.PrivateClusterConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.PrivateClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.PrivateClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
