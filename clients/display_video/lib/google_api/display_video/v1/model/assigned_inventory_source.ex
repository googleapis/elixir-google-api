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

defmodule GoogleApi.DisplayVideo.V1.Model.AssignedInventorySource do
  @moduledoc """
  An assignment between a targetable inventory source and an inventory source group.

  ## Attributes

  *   `assignedInventorySourceId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the assigned inventory source. The ID is only unique within a given inventory source group. It may be reused in other contexts.
  *   `inventorySourceId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the inventory source entity being targeted.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the assigned inventory source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assignedInventorySourceId => String.t(),
          :inventorySourceId => String.t(),
          :name => String.t()
        }

  field(:assignedInventorySourceId)
  field(:inventorySourceId)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.AssignedInventorySource do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.AssignedInventorySource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.AssignedInventorySource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
