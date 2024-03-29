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

defmodule GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo do
  @moduledoc """
  For display only. Metadata associated with the load balancer backend.

  ## Attributes

  *   `backendBucketUri` (*type:* `String.t`, *default:* `nil`) - URI of the backend bucket this backend targets (if applicable).
  *   `backendServiceUri` (*type:* `String.t`, *default:* `nil`) - URI of the backend service this backend belongs to (if applicable).
  *   `healthCheckFirewallsConfigState` (*type:* `String.t`, *default:* `nil`) - Output only. Health check firewalls configuration state for the backend. This is a result of the static firewall analysis (verifying that health check traffic from required IP ranges to the backend is allowed or not). The backend might still be unhealthy even if these firewalls are configured. Please refer to the documentation for more information: https://cloud.google.com/load-balancing/docs/firewall-rules
  *   `healthCheckUri` (*type:* `String.t`, *default:* `nil`) - URI of the health check attached to this backend (if applicable).
  *   `instanceGroupUri` (*type:* `String.t`, *default:* `nil`) - URI of the instance group this backend belongs to (if applicable).
  *   `instanceUri` (*type:* `String.t`, *default:* `nil`) - URI of the backend instance (if applicable). Populated for instance group backends, and zonal NEG backends.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Display name of the backend. For example, it might be an instance name for the instance group backends, or an IP address and port for zonal network endpoint group backends.
  *   `networkEndpointGroupUri` (*type:* `String.t`, *default:* `nil`) - URI of the network endpoint group this backend belongs to (if applicable).
  *   `pscGoogleApiTarget` (*type:* `String.t`, *default:* `nil`) - PSC Google API target this PSC NEG backend targets (if applicable).
  *   `pscServiceAttachmentUri` (*type:* `String.t`, *default:* `nil`) - URI of the PSC service attachment this PSC NEG backend targets (if applicable).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backendBucketUri => String.t() | nil,
          :backendServiceUri => String.t() | nil,
          :healthCheckFirewallsConfigState => String.t() | nil,
          :healthCheckUri => String.t() | nil,
          :instanceGroupUri => String.t() | nil,
          :instanceUri => String.t() | nil,
          :name => String.t() | nil,
          :networkEndpointGroupUri => String.t() | nil,
          :pscGoogleApiTarget => String.t() | nil,
          :pscServiceAttachmentUri => String.t() | nil
        }

  field(:backendBucketUri)
  field(:backendServiceUri)
  field(:healthCheckFirewallsConfigState)
  field(:healthCheckUri)
  field(:instanceGroupUri)
  field(:instanceUri)
  field(:name)
  field(:networkEndpointGroupUri)
  field(:pscGoogleApiTarget)
  field(:pscServiceAttachmentUri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1.Model.LoadBalancerBackendInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
