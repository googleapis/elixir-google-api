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

defmodule GoogleApi.Batch.V1.Model.TaskGroupStatus do
  @moduledoc """
  Aggregated task status for a TaskGroup.

  ## Attributes

  *   `counts` (*type:* `map()`, *default:* `nil`) - Count of task in each state in the TaskGroup. The map key is task state name.
  *   `instances` (*type:* `list(GoogleApi.Batch.V1.Model.InstanceStatus.t)`, *default:* `nil`) - Status of instances allocated for the TaskGroup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :counts => map() | nil,
          :instances => list(GoogleApi.Batch.V1.Model.InstanceStatus.t()) | nil
        }

  field(:counts, type: :map)
  field(:instances, as: GoogleApi.Batch.V1.Model.InstanceStatus, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.TaskGroupStatus do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.TaskGroupStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.TaskGroupStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
