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

defmodule GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig do
  @moduledoc """
  Deployment-specific configuration.

  ## Attributes

  *   `containerResources` (*type:* `GoogleApi.GKEHub.V1.Model.PolicyControllerResourceRequirements.t`, *default:* `nil`) - Container resource requirements.
  *   `podAffinity` (*type:* `String.t`, *default:* `nil`) - Pod affinity configuration.
  *   `podAntiAffinity` (*type:* `boolean()`, *default:* `nil`) - Pod anti-affinity enablement. Deprecated: use `pod_affinity` instead.
  *   `podTolerations` (*type:* `list(GoogleApi.GKEHub.V1.Model.PolicyControllerToleration.t)`, *default:* `nil`) - Pod tolerations of node taints.
  *   `replicaCount` (*type:* `String.t`, *default:* `nil`) - Pod replica count.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerResources =>
            GoogleApi.GKEHub.V1.Model.PolicyControllerResourceRequirements.t() | nil,
          :podAffinity => String.t() | nil,
          :podAntiAffinity => boolean() | nil,
          :podTolerations => list(GoogleApi.GKEHub.V1.Model.PolicyControllerToleration.t()) | nil,
          :replicaCount => String.t() | nil
        }

  field(:containerResources, as: GoogleApi.GKEHub.V1.Model.PolicyControllerResourceRequirements)
  field(:podAffinity)
  field(:podAntiAffinity)
  field(:podTolerations, as: GoogleApi.GKEHub.V1.Model.PolicyControllerToleration, type: :list)
  field(:replicaCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.GKEHub.V1.Model.PolicyControllerPolicyControllerDeploymentConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
