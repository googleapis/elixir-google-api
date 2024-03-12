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

defmodule GoogleApi.Compute.V1.Model.MachineImage do
  @moduledoc """
  Represents a machine image resource. A machine image is a Compute Engine resource that stores all the configuration, metadata, permissions, and data from one or more disks required to create a Virtual machine (VM) instance. For more information, see Machine images.

  ## Attributes

  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] The creation timestamp for this machine image in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `guestFlush` (*type:* `boolean()`, *default:* `nil`) - [Input Only] Whether to attempt an application consistent machine image by informing the OS to prepare for the snapshot process.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] A unique identifier for this machine image. The server defines this identifier.
  *   `instanceProperties` (*type:* `GoogleApi.Compute.V1.Model.InstanceProperties.t`, *default:* `nil`) - [Output Only] Properties of source instance
  *   `kind` (*type:* `String.t`, *default:* `compute#machineImage`) - [Output Only] The resource type, which is always compute#machineImage for machine image.
  *   `machineImageEncryptionKey` (*type:* `GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t`, *default:* `nil`) - Encrypts the machine image using a customer-supplied encryption key. After you encrypt a machine image using a customer-supplied key, you must provide the same key if you use the machine image later. For example, you must provide the encryption key when you create an instance from the encrypted machine image in a future request. Customer-supplied encryption keys do not protect access to metadata of the machine image. If you do not provide an encryption key when creating the machine image, then the machine image will be encrypted using an automatically generated key and you do not need to provide a key to use the machine image later.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Reserved for future use.
  *   `savedDisks` (*type:* `list(GoogleApi.Compute.V1.Model.SavedDisk.t)`, *default:* `nil`) - An array of Machine Image specific properties for disks attached to the source instance
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL for this machine image. The server defines this URL.
  *   `sourceDiskEncryptionKeys` (*type:* `list(GoogleApi.Compute.V1.Model.SourceDiskEncryptionKey.t)`, *default:* `nil`) - [Input Only] The customer-supplied encryption key of the disks attached to the source instance. Required if the source disk is protected by a customer-supplied encryption key.
  *   `sourceInstance` (*type:* `String.t`, *default:* `nil`) - The source instance used to create the machine image. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance 
  *   `sourceInstanceProperties` (*type:* `GoogleApi.Compute.V1.Model.SourceInstanceProperties.t`, *default:* `nil`) - [Output Only] DEPRECATED: Please use instance_properties instead for source instance related properties. New properties will not be added to this field.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the machine image. One of the following values: INVALID, CREATING, READY, DELETING, and UPLOADING.
  *   `storageLocations` (*type:* `list(String.t)`, *default:* `nil`) - The regional or multi-regional Cloud Storage bucket location where the machine image is stored.
  *   `totalStorageBytes` (*type:* `String.t`, *default:* `nil`) - [Output Only] Total size of the storage used by the machine image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :guestFlush => boolean() | nil,
          :id => String.t() | nil,
          :instanceProperties => GoogleApi.Compute.V1.Model.InstanceProperties.t() | nil,
          :kind => String.t() | nil,
          :machineImageEncryptionKey =>
            GoogleApi.Compute.V1.Model.CustomerEncryptionKey.t() | nil,
          :name => String.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :savedDisks => list(GoogleApi.Compute.V1.Model.SavedDisk.t()) | nil,
          :selfLink => String.t() | nil,
          :sourceDiskEncryptionKeys =>
            list(GoogleApi.Compute.V1.Model.SourceDiskEncryptionKey.t()) | nil,
          :sourceInstance => String.t() | nil,
          :sourceInstanceProperties =>
            GoogleApi.Compute.V1.Model.SourceInstanceProperties.t() | nil,
          :status => String.t() | nil,
          :storageLocations => list(String.t()) | nil,
          :totalStorageBytes => String.t() | nil
        }

  field(:creationTimestamp)
  field(:description)
  field(:guestFlush)
  field(:id)
  field(:instanceProperties, as: GoogleApi.Compute.V1.Model.InstanceProperties)
  field(:kind)
  field(:machineImageEncryptionKey, as: GoogleApi.Compute.V1.Model.CustomerEncryptionKey)
  field(:name)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:savedDisks, as: GoogleApi.Compute.V1.Model.SavedDisk, type: :list)
  field(:selfLink)

  field(:sourceDiskEncryptionKeys,
    as: GoogleApi.Compute.V1.Model.SourceDiskEncryptionKey,
    type: :list
  )

  field(:sourceInstance)
  field(:sourceInstanceProperties, as: GoogleApi.Compute.V1.Model.SourceInstanceProperties)
  field(:status)
  field(:storageLocations, type: :list)
  field(:totalStorageBytes)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.MachineImage do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.MachineImage.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.MachineImage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
