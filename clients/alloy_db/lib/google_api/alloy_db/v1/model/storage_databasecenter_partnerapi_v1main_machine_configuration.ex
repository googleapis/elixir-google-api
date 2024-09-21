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

defmodule GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainMachineConfiguration do
  @moduledoc """
  MachineConfiguration describes the configuration of a machine specific to Database Resource.

  ## Attributes

  *   `cpuCount` (*type:* `integer()`, *default:* `nil`) - The number of CPUs. TODO(b/342344482, b/342346271) add proto validations again after bug fix.
  *   `memorySizeInBytes` (*type:* `String.t`, *default:* `nil`) - Memory size in bytes. TODO(b/342344482, b/342346271) add proto validations again after bug fix.
  *   `shardCount` (*type:* `integer()`, *default:* `nil`) - Optional. Number of shards (if applicable).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpuCount => integer() | nil,
          :memorySizeInBytes => String.t() | nil,
          :shardCount => integer() | nil
        }

  field(:cpuCount)
  field(:memorySizeInBytes)
  field(:shardCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainMachineConfiguration do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainMachineConfiguration.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainMachineConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
