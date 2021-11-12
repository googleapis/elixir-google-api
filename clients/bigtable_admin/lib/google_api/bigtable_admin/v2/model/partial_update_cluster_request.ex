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

defmodule GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest do
  @moduledoc """
  Request message for BigtableInstanceAdmin.PartialUpdateCluster.

  ## Attributes

  *   `cluster` (*type:* `GoogleApi.BigtableAdmin.V2.Model.Cluster.t`, *default:* `nil`) - Required. The Cluster which contains the partial updates to be applied, subject to the update_mask.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Required. The subset of Cluster fields which should be replaced. Must be explicitly set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cluster => GoogleApi.BigtableAdmin.V2.Model.Cluster.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:cluster, as: GoogleApi.BigtableAdmin.V2.Model.Cluster)
  field(:updateMask)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
