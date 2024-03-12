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

defmodule GoogleApi.Notebooks.V1.Model.LocalDisk do
  @moduledoc """
  A Local attached disk resource.

  ## Attributes

  *   `autoDelete` (*type:* `boolean()`, *default:* `nil`) - Optional. Output only. Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  *   `boot` (*type:* `boolean()`, *default:* `nil`) - Optional. Output only. Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  *   `deviceName` (*type:* `String.t`, *default:* `nil`) - Optional. Output only. Specifies a unique device name of your choice that is reflected into the `/dev/disk/by-id/google-*` tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disk-x, where x is a number assigned by Google Compute Engine. This field is only applicable for persistent disks.
  *   `guestOsFeatures` (*type:* `list(GoogleApi.Notebooks.V1.Model.RuntimeGuestOsFeature.t)`, *default:* `nil`) - Output only. Indicates a list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  *   `index` (*type:* `integer()`, *default:* `nil`) - Output only. A zero-based index to this disk, where 0 is reserved for the boot disk. If you have many disks attached to an instance, each disk would have a unique index number.
  *   `initializeParams` (*type:* `GoogleApi.Notebooks.V1.Model.LocalDiskInitializeParams.t`, *default:* `nil`) - Input only. Specifies the parameters for a new disk that will be created alongside the new instance. Use initialization parameters to create boot disks or local SSDs attached to the new instance. This property is mutually exclusive with the source property; you can only define one or the other, but not both.
  *   `interface` (*type:* `String.t`, *default:* `nil`) - Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. Persistent disks must always use SCSI and the request will fail if you attempt to attach a persistent disk in any other format than SCSI. Local SSDs can use either NVME or SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance. Valid values: * `NVME` * `SCSI`
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Output only. Type of the resource. Always compute#attachedDisk for attached disks.
  *   `licenses` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Any valid publicly visible licenses.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - The mode in which to attach this disk, either `READ_WRITE` or `READ_ONLY`. If not specified, the default is to attach the disk in `READ_WRITE` mode. Valid values: * `READ_ONLY` * `READ_WRITE`
  *   `source` (*type:* `String.t`, *default:* `nil`) - Specifies a valid partial or full URL to an existing Persistent Disk resource.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Specifies the type of the disk, either `SCRATCH` or `PERSISTENT`. If not specified, the default is `PERSISTENT`. Valid values: * `PERSISTENT` * `SCRATCH`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDelete => boolean() | nil,
          :boot => boolean() | nil,
          :deviceName => String.t() | nil,
          :guestOsFeatures => list(GoogleApi.Notebooks.V1.Model.RuntimeGuestOsFeature.t()) | nil,
          :index => integer() | nil,
          :initializeParams => GoogleApi.Notebooks.V1.Model.LocalDiskInitializeParams.t() | nil,
          :interface => String.t() | nil,
          :kind => String.t() | nil,
          :licenses => list(String.t()) | nil,
          :mode => String.t() | nil,
          :source => String.t() | nil,
          :type => String.t() | nil
        }

  field(:autoDelete)
  field(:boot)
  field(:deviceName)
  field(:guestOsFeatures, as: GoogleApi.Notebooks.V1.Model.RuntimeGuestOsFeature, type: :list)
  field(:index)
  field(:initializeParams, as: GoogleApi.Notebooks.V1.Model.LocalDiskInitializeParams)
  field(:interface)
  field(:kind)
  field(:licenses, type: :list)
  field(:mode)
  field(:source)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.LocalDisk do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.LocalDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.LocalDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
