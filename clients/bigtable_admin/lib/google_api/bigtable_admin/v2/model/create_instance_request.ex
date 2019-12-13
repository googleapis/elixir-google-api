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

defmodule GoogleApi.BigtableAdmin.V2.Model.CreateInstanceRequest do
  @moduledoc """
  Request message for BigtableInstanceAdmin.CreateInstance.

  ## Attributes

  *   `clusters` (*type:* `%{optional(String.t) => GoogleApi.BigtableAdmin.V2.Model.Cluster.t}`, *default:* `nil`) - The clusters to be created within the instance, mapped by desired
      cluster ID, e.g., just `mycluster` rather than
      `projects/myproject/instances/myinstance/clusters/mycluster`.
      Fields marked `OutputOnly` must be left blank.
      Currently, at most four clusters can be specified.
  *   `instance` (*type:* `GoogleApi.BigtableAdmin.V2.Model.Instance.t`, *default:* `nil`) - The instance to create.
      Fields marked `OutputOnly` must be left blank.
  *   `instanceId` (*type:* `String.t`, *default:* `nil`) - The ID to be used when referring to the new instance within its project,
      e.g., just `myinstance` rather than
      `projects/myproject/instances/myinstance`.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The unique name of the project in which to create the new instance.
      Values are of the form `projects/<project>`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusters => %{optional(String.t()) => GoogleApi.BigtableAdmin.V2.Model.Cluster.t()},
          :instance => GoogleApi.BigtableAdmin.V2.Model.Instance.t(),
          :instanceId => String.t(),
          :parent => String.t()
        }

  field(:clusters, as: GoogleApi.BigtableAdmin.V2.Model.Cluster, type: :map)
  field(:instance, as: GoogleApi.BigtableAdmin.V2.Model.Instance)
  field(:instanceId)
  field(:parent)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateInstanceRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.CreateInstanceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.CreateInstanceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
