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

defmodule GoogleApi.Compute.V1.Model.PreservedStatePreservedDisk do
  @moduledoc """


  ## Attributes

  *   `autoDelete` (*type:* `String.t`, *default:* `nil`) - These stateful disks will never be deleted during autohealing, update, instance recreate operations. This flag is used to configure if the disk should be deleted after it is no longer used by the group, e.g. when the given instance or the whole MIG is deleted. Note: disks attached in READ_ONLY mode cannot be auto-deleted.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The URL of the disk resource that is stateful and should be attached to the VM instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDelete => String.t(),
          :mode => String.t(),
          :source => String.t()
        }

  field(:autoDelete)
  field(:mode)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PreservedStatePreservedDisk do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PreservedStatePreservedDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PreservedStatePreservedDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
