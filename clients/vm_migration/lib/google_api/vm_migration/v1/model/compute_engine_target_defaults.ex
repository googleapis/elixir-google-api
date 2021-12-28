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

defmodule GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDefaults do
  @moduledoc """
  ComputeEngineTargetDefaults is a collection of details for creating a VM in a target Compute Engine project.

  ## Attributes

  *   `additionalLicenses` (*type:* `list(String.t)`, *default:* `nil`) - Additional licenses to assign to the VM.
  *   `appliedLicense` (*type:* `GoogleApi.VMMigration.V1.Model.AppliedLicense.t`, *default:* `nil`) - Output only. The OS license returned from the adaptation module report.
  *   `bootOption` (*type:* `String.t`, *default:* `nil`) - Output only. The VM Boot Option, as set in the source vm.
  *   `computeScheduling` (*type:* `GoogleApi.VMMigration.V1.Model.ComputeScheduling.t`, *default:* `nil`) - Compute instance scheduling information (if empty default is used).
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - The disk type to use in the VM.
  *   `labels` (*type:* `map()`, *default:* `nil`) - A map of labels to associate with the VM.
  *   `licenseType` (*type:* `String.t`, *default:* `nil`) - The license type to use in OS adaptation.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The machine type to create the VM with.
  *   `machineTypeSeries` (*type:* `String.t`, *default:* `nil`) - The machine type series to create the VM with.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - The metadata key/value pairs to assign to the VM.
  *   `networkInterfaces` (*type:* `list(GoogleApi.VMMigration.V1.Model.NetworkInterface.t)`, *default:* `nil`) - List of NICs connected to this VM.
  *   `networkTags` (*type:* `list(String.t)`, *default:* `nil`) - A map of network tags to associate with the VM.
  *   `secureBoot` (*type:* `boolean()`, *default:* `nil`) - Defines whether the instance has Secure Boot enabled. This can be set to true only if the vm boot option is EFI.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The service account to associate the VM with.
  *   `targetProject` (*type:* `String.t`, *default:* `nil`) - The full path of the resource of type TargetProject which represents the Compute Engine project in which to create this VM.
  *   `vmName` (*type:* `String.t`, *default:* `nil`) - The name of the VM to create.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - The zone in which to create the VM.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalLicenses => list(String.t()) | nil,
          :appliedLicense => GoogleApi.VMMigration.V1.Model.AppliedLicense.t() | nil,
          :bootOption => String.t() | nil,
          :computeScheduling => GoogleApi.VMMigration.V1.Model.ComputeScheduling.t() | nil,
          :diskType => String.t() | nil,
          :labels => map() | nil,
          :licenseType => String.t() | nil,
          :machineType => String.t() | nil,
          :machineTypeSeries => String.t() | nil,
          :metadata => map() | nil,
          :networkInterfaces => list(GoogleApi.VMMigration.V1.Model.NetworkInterface.t()) | nil,
          :networkTags => list(String.t()) | nil,
          :secureBoot => boolean() | nil,
          :serviceAccount => String.t() | nil,
          :targetProject => String.t() | nil,
          :vmName => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:additionalLicenses, type: :list)
  field(:appliedLicense, as: GoogleApi.VMMigration.V1.Model.AppliedLicense)
  field(:bootOption)
  field(:computeScheduling, as: GoogleApi.VMMigration.V1.Model.ComputeScheduling)
  field(:diskType)
  field(:labels, type: :map)
  field(:licenseType)
  field(:machineType)
  field(:machineTypeSeries)
  field(:metadata, type: :map)
  field(:networkInterfaces, as: GoogleApi.VMMigration.V1.Model.NetworkInterface, type: :list)
  field(:networkTags, type: :list)
  field(:secureBoot)
  field(:serviceAccount)
  field(:targetProject)
  field(:vmName)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDefaults do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDefaults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.ComputeEngineTargetDefaults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
