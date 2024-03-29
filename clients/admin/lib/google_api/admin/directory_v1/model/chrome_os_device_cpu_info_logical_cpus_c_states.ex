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

defmodule GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceCpuInfoLogicalCpusCStates do
  @moduledoc """
  Status of a single C-state. C-states are various modes the CPU can transition to in order to use more or less power.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of the state.
  *   `sessionDuration` (*type:* `String.t`, *default:* `nil`) - Time spent in the state since the last reboot.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :sessionDuration => String.t() | nil
        }

  field(:displayName)
  field(:sessionDuration)
end

defimpl Poison.Decoder,
  for: GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceCpuInfoLogicalCpusCStates do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceCpuInfoLogicalCpusCStates.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Admin.Directory_v1.Model.ChromeOsDeviceCpuInfoLogicalCpusCStates do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
