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

defmodule GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig do
  @moduledoc """
  BareMetalAdminLoadBalancerConfig specifies the load balancer configuration.

  ## Attributes

  *   `manualLbConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminManualLbConfig.t`, *default:* `nil`) - Manually configured load balancers.
  *   `portConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminPortConfig.t`, *default:* `nil`) - Configures the ports that the load balancer will listen on.
  *   `vipConfig` (*type:* `GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminVipConfig.t`, *default:* `nil`) - The VIPs used by the load balancer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :manualLbConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminManualLbConfig.t() | nil,
          :portConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminPortConfig.t() | nil,
          :vipConfig => GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminVipConfig.t() | nil
        }

  field(:manualLbConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminManualLbConfig)
  field(:portConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminPortConfig)
  field(:vipConfig, as: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminVipConfig)
end

defimpl Poison.Decoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig do
  def decode(value, options) do
    GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEOnPrem.V1.Model.BareMetalAdminLoadBalancerConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
