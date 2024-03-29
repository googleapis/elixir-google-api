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

defmodule GoogleApi.VMMigration.V1.Model.BootDiskDefaults do
  @moduledoc """
  BootDiskDefaults hold information about the boot disk of a VM.

  ## Attributes

  *   `deviceName` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  *   `diskName` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the disk.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of disk provisioning to use for the VM.
  *   `encryption` (*type:* `GoogleApi.VMMigration.V1.Model.Encryption.t`, *default:* `nil`) - Optional. The encryption to apply to the boot disk.
  *   `image` (*type:* `GoogleApi.VMMigration.V1.Model.DiskImageDefaults.t`, *default:* `nil`) - The image to use when creating the disk.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceName => String.t() | nil,
          :diskName => String.t() | nil,
          :diskType => String.t() | nil,
          :encryption => GoogleApi.VMMigration.V1.Model.Encryption.t() | nil,
          :image => GoogleApi.VMMigration.V1.Model.DiskImageDefaults.t() | nil
        }

  field(:deviceName)
  field(:diskName)
  field(:diskType)
  field(:encryption, as: GoogleApi.VMMigration.V1.Model.Encryption)
  field(:image, as: GoogleApi.VMMigration.V1.Model.DiskImageDefaults)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.BootDiskDefaults do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.BootDiskDefaults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.BootDiskDefaults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
