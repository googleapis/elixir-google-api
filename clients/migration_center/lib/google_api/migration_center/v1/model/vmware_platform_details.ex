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

defmodule GoogleApi.MigrationCenter.V1.Model.VmwarePlatformDetails do
  @moduledoc """
  VMware specific details.

  ## Attributes

  *   `esxHyperthreading` (*type:* `String.t`, *default:* `nil`) - Whether the ESX is hyperthreaded.
  *   `esxVersion` (*type:* `String.t`, *default:* `nil`) - ESX version.
  *   `osid` (*type:* `String.t`, *default:* `nil`) - VMware os enum - https://vdc-repo.vmware.com/vmwb-repository/dcr-public/da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/vim.vm.GuestOsDescriptor.GuestOsIdentifier.html.
  *   `vcenterFolder` (*type:* `String.t`, *default:* `nil`) - Folder name in vCenter where asset resides.
  *   `vcenterUri` (*type:* `String.t`, *default:* `nil`) - vCenter URI used in collection.
  *   `vcenterVersion` (*type:* `String.t`, *default:* `nil`) - vCenter version.
  *   `vcenterVmId` (*type:* `String.t`, *default:* `nil`) - vCenter VM ID.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :esxHyperthreading => String.t() | nil,
          :esxVersion => String.t() | nil,
          :osid => String.t() | nil,
          :vcenterFolder => String.t() | nil,
          :vcenterUri => String.t() | nil,
          :vcenterVersion => String.t() | nil,
          :vcenterVmId => String.t() | nil
        }

  field(:esxHyperthreading)
  field(:esxVersion)
  field(:osid)
  field(:vcenterFolder)
  field(:vcenterUri)
  field(:vcenterVersion)
  field(:vcenterVmId)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.VmwarePlatformDetails do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.VmwarePlatformDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.VmwarePlatformDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
