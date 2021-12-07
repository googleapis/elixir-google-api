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

defmodule GoogleApi.Compute.V1.Model.SavedAttachedDisk do
  @moduledoc """
  DEPRECATED: Please use compute#savedDisk instead. An instance-attached disk resource.

  ## Attributes

  *   `autoDelete` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  *   `boot` (*type:* `boolean()`, *default:* `nil`) - Indicates that this is a boot disk. The virtual machine will use the first partition of the disk for its root filesystem.
  *   `deviceName` (*type:* `String.t`, *default:* `nil`) - Specifies the name of the disk attached to the source instance.
  *   `diskEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - The encryption key for the disk.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - The size of the disk in base-2 GB.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the disk type resource. For example: projects/project /zones/zone/diskTypes/pd-standard or pd-ssd
  *   `guestOsFeatures` (*type:* `list(GoogleApi.Compute.V1.Model.GuestOsFeature.t)`, *default:* `nil`) - A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  *   `index` (*type:* `integer()`, *default:* `nil`) - Specifies zero-based index of the disk that is attached to the source instance.
  *   `interface` (*type:* `String.t`, *default:* `nil`) - Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME.
  *   `kind` (*type:* `String.t`, *default:* `compute#savedAttachedDisk`) - [Output Only] Type of the resource. Always compute#attachedDisk for attached disks.
  *   `licenses` (*type:* `list(String.t)`, *default:* `nil`) - [Output Only] Any valid publicly visible licenses.
  *   `mode` (*type:* `String.t`, *default:* `nil`) - The mode in which this disk is attached to the source instance, either READ_WRITE or READ_ONLY.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Specifies a URL of the disk attached to the source instance.
  *   `storageBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] A size of the storage used by the disk's snapshot by this machine image.
  *   `storageBytesStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] An indicator whether storageBytes is in a stable state or it is being adjusted as a result of shared storage reallocation. This status can either be UPDATING, meaning the size of the snapshot is being updated, or UP_TO_DATE, meaning the size of the snapshot is up-to-date.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Specifies the type of the attached disk, either SCRATCH or PERSISTENT.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoDelete => boolean() | nil,
          :boot => boolean() | nil,
          :deviceName => String.t() | nil,
          :diskEncryptionKey => GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :diskSizeGb => String.t() | nil,
          :diskType => String.t() | nil,
          :guestOsFeatures => list(GoogleApi.Compute.V1.Model.GuestOsFeature.t()) | nil,
          :index => integer() | nil,
          :interface => String.t() | nil,
          :kind => String.t() | nil,
          :licenses => list(String.t()) | nil,
          :mode => String.t() | nil,
          :source => String.t() | nil,
          :storageBytes => String.t() | nil,
          :storageBytesStatus => String.t() | nil,
          :type => String.t() | nil
        }

  field(:autoDelete)
  field(:boot)
  field(:deviceName)
  field(:diskEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:diskSizeGb)
  field(:diskType)
  field(:guestOsFeatures, as: GoogleApi.Compute.V1.Model.GuestOsFeature, type: :list)
  field(:index)
  field(:interface)
  field(:kind)
  field(:licenses, type: :list)
  field(:mode)
  field(:source)
  field(:storageBytes)
  field(:storageBytesStatus)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.SavedAttachedDisk do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.SavedAttachedDisk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.SavedAttachedDisk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
