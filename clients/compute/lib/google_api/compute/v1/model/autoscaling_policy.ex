# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Compute.V1.Model.AutoscalingPolicy do
  @moduledoc """
  Cloud Autoscaler policy.

  ## Attributes

  - coolDownPeriodSec (integer()): The number of seconds that the autoscaler should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. The default time autoscaler waits is 60 seconds.  Virtual machine initialization times might vary because of numerous factors. We recommend that you test how long an instance may take to initialize. To do this, create an instance and time the startup process. Defaults to: `null`.
  - cpuUtilization (AutoscalingPolicyCpuUtilization): Defines the CPU utilization policy that allows the autoscaler to scale based on the average CPU utilization of a managed instance group. Defaults to: `null`.
  - customMetricUtilizations ([AutoscalingPolicyCustomMetricUtilization]): Configuration parameters of autoscaling based on a custom metric. Defaults to: `null`.
  - loadBalancingUtilization (AutoscalingPolicyLoadBalancingUtilization): Configuration parameters of autoscaling based on load balancer. Defaults to: `null`.
  - maxNumReplicas (integer()): The maximum number of instances that the autoscaler can scale up to. This is required when creating or updating an autoscaler. The maximum number of replicas should not be lower than minimal number of replicas. Defaults to: `null`.
  - minNumReplicas (integer()): The minimum number of replicas that the autoscaler can scale down to. This cannot be less than 0. If not provided, autoscaler will choose a default value depending on maximum number of instances allowed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coolDownPeriodSec => any(),
          :cpuUtilization => GoogleApi.Compute.V1.Model.AutoscalingPolicyCpuUtilization.t(),
          :customMetricUtilizations =>
            list(GoogleApi.Compute.V1.Model.AutoscalingPolicyCustomMetricUtilization.t()),
          :loadBalancingUtilization =>
            GoogleApi.Compute.V1.Model.AutoscalingPolicyLoadBalancingUtilization.t(),
          :maxNumReplicas => any(),
          :minNumReplicas => any()
        }

  field(:coolDownPeriodSec)
  field(:cpuUtilization, as: GoogleApi.Compute.V1.Model.AutoscalingPolicyCpuUtilization)

  field(
    :customMetricUtilizations,
    as: GoogleApi.Compute.V1.Model.AutoscalingPolicyCustomMetricUtilization,
    type: :list
  )

  field(
    :loadBalancingUtilization,
    as: GoogleApi.Compute.V1.Model.AutoscalingPolicyLoadBalancingUtilization
  )

  field(:maxNumReplicas)
  field(:minNumReplicas)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.AutoscalingPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.AutoscalingPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
