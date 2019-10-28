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

defmodule GoogleApi.Container.V1.Model.ClusterAutoscaling do
  @moduledoc """
  ClusterAutoscaling contains global, per-cluster information
  required by Cluster Autoscaler to automatically adjust
  the size of the cluster and create/delete
  node pools based on the current needs.

  ## Attributes

  *   `autoprovisioningLocations` (*type:* `list(String.t)`, *default:* `nil`) - The list of Google Compute Engine [zones](/compute/docs/zones#available)
      in which the NodePool's nodes can be created by NAP.
  *   `autoprovisioningNodePoolDefaults` (*type:* `GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults.t`, *default:* `nil`) - AutoprovisioningNodePoolDefaults contains defaults for a node pool
      created by NAP.
  *   `enableNodeAutoprovisioning` (*type:* `boolean()`, *default:* `nil`) - Enables automatic node pool creation and deletion.
  *   `resourceLimits` (*type:* `list(GoogleApi.Container.V1.Model.ResourceLimit.t)`, *default:* `nil`) - Contains global constraints regarding minimum and maximum
      amount of resources in the cluster.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoprovisioningLocations => list(String.t()),
          :autoprovisioningNodePoolDefaults =>
            GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults.t(),
          :enableNodeAutoprovisioning => boolean(),
          :resourceLimits => list(GoogleApi.Container.V1.Model.ResourceLimit.t())
        }

  field(:autoprovisioningLocations, type: :list)

  field(
    :autoprovisioningNodePoolDefaults,
    as: GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults
  )

  field(:enableNodeAutoprovisioning)
  field(:resourceLimits, as: GoogleApi.Container.V1.Model.ResourceLimit, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ClusterAutoscaling do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ClusterAutoscaling.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ClusterAutoscaling do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
