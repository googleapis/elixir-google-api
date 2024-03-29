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

defmodule GoogleApi.Dataproc.V1.Model.GkeClusterConfig do
  @moduledoc """
  The cluster's GKE config.

  ## Attributes

  *   `gkeClusterTarget` (*type:* `String.t`, *default:* `nil`) - Optional. A target GKE cluster to deploy to. It must be in the same project and region as the Dataproc cluster (the GKE cluster can be zonal or regional). Format: 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  *   `namespacedGkeDeploymentTarget` (*type:* `GoogleApi.Dataproc.V1.Model.NamespacedGkeDeploymentTarget.t`, *default:* `nil`) - Optional. Deprecated. Use gkeClusterTarget. Used only for the deprecated beta. A target for the deployment.
  *   `nodePoolTarget` (*type:* `list(GoogleApi.Dataproc.V1.Model.GkeNodePoolTarget.t)`, *default:* `nil`) - Optional. GKE node pools where workloads will be scheduled. At least one node pool must be assigned the DEFAULT GkeNodePoolTarget.Role. If a GkeNodePoolTarget is not specified, Dataproc constructs a DEFAULT GkeNodePoolTarget. Each role can be given to only one GkeNodePoolTarget. All node pools must have the same location settings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :gkeClusterTarget => String.t() | nil,
          :namespacedGkeDeploymentTarget =>
            GoogleApi.Dataproc.V1.Model.NamespacedGkeDeploymentTarget.t() | nil,
          :nodePoolTarget => list(GoogleApi.Dataproc.V1.Model.GkeNodePoolTarget.t()) | nil
        }

  field(:gkeClusterTarget)

  field(:namespacedGkeDeploymentTarget,
    as: GoogleApi.Dataproc.V1.Model.NamespacedGkeDeploymentTarget
  )

  field(:nodePoolTarget, as: GoogleApi.Dataproc.V1.Model.GkeNodePoolTarget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.GkeClusterConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.GkeClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.GkeClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
