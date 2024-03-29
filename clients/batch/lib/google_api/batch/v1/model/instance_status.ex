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

defmodule GoogleApi.Batch.V1.Model.InstanceStatus do
  @moduledoc """
  VM instance status.

  ## Attributes

  *   `bootDisk` (*type:* `GoogleApi.Batch.V1.Model.Disk.t`, *default:* `nil`) - The VM boot disk.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The Compute Engine machine type.
  *   `provisioningModel` (*type:* `String.t`, *default:* `nil`) - The VM instance provisioning model.
  *   `taskPack` (*type:* `String.t`, *default:* `nil`) - The max number of tasks can be assigned to this instance type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bootDisk => GoogleApi.Batch.V1.Model.Disk.t() | nil,
          :machineType => String.t() | nil,
          :provisioningModel => String.t() | nil,
          :taskPack => String.t() | nil
        }

  field(:bootDisk, as: GoogleApi.Batch.V1.Model.Disk)
  field(:machineType)
  field(:provisioningModel)
  field(:taskPack)
end

defimpl Poison.Decoder, for: GoogleApi.Batch.V1.Model.InstanceStatus do
  def decode(value, options) do
    GoogleApi.Batch.V1.Model.InstanceStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Batch.V1.Model.InstanceStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
