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

defmodule GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest do
  @moduledoc """
  Request message for BigtableInstanceAdmin.CreateCluster.

  ## Attributes

  *   `cluster` (*type:* `GoogleApi.BigtableAdmin.V2.Model.Cluster.t`, *default:* `nil`) - The cluster to be created.
      Fields marked `OutputOnly` must be left blank.
  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - The ID to be used when referring to the new cluster within its instance,
      e.g., just `mycluster` rather than
      `projects/myproject/instances/myinstance/clusters/mycluster`.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The unique name of the instance in which to create the new cluster.
      Values are of the form
      `projects/<project>/instances/<instance>`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cluster => GoogleApi.BigtableAdmin.V2.Model.Cluster.t(),
          :clusterId => String.t(),
          :parent => String.t()
        }

  field(:cluster, as: GoogleApi.BigtableAdmin.V2.Model.Cluster)
  field(:clusterId)
  field(:parent)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateClusterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
