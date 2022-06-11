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

defmodule GoogleApi.Dataproc.V1.Model.NodePool do
  @moduledoc """
  indicating a list of workers of same type

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. A unique id of the node pool. Primary and Secondary workers can be specified using special reserved ids PRIMARY_WORKER_POOL and SECONDARY_WORKER_POOL respectively. Aux node pools can be referenced using corresponding pool id.
  *   `instanceNames` (*type:* `list(String.t)`, *default:* `nil`) - Name of instances to be repaired. These instances must belong to specified node pool.
  *   `repairAction` (*type:* `String.t`, *default:* `nil`) - Required. Repair action to take on specified resources of the node pool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t() | nil,
          :instanceNames => list(String.t()) | nil,
          :repairAction => String.t() | nil
        }

  field(:id)
  field(:instanceNames, type: :list)
  field(:repairAction)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.NodePool do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.NodePool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.NodePool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
