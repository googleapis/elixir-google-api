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

defmodule GoogleApi.Container.V1.Model.Fleet do
  @moduledoc """
  Fleet is the fleet configuration for the cluster.

  ## Attributes

  *   `membership` (*type:* `String.t`, *default:* `nil`) - Output only. The full resource name of the registered fleet membership of the cluster, in the format `//gkehub.googleapis.com/projects/*/locations/*/memberships/*`.
  *   `preRegistered` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the cluster has been registered through the fleet API.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The Fleet host project(project ID or project number) where this cluster will be registered to. This field cannot be changed after the cluster has been registered.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :membership => String.t() | nil,
          :preRegistered => boolean() | nil,
          :project => String.t() | nil
        }

  field(:membership)
  field(:preRegistered)
  field(:project)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.Fleet do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.Fleet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.Fleet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
