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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1DiskInfo do
  @moduledoc """
  Status of the single storage device.

  ## Attributes

  *   `bytesReadThisSession` (*type:* `String.t`, *default:* `nil`) - Output only. Number of bytes read since last boot.
  *   `bytesWrittenThisSession` (*type:* `String.t`, *default:* `nil`) - Output only. Number of bytes written since last boot.
  *   `discardTimeThisSession` (*type:* `String.t`, *default:* `nil`) - Output only. Time spent discarding since last boot. Discarding is writing to clear blocks which are no longer in use. Supported on kernels 4.18+.
  *   `health` (*type:* `String.t`, *default:* `nil`) - Output only. Disk health.
  *   `ioTimeThisSession` (*type:* `String.t`, *default:* `nil`) - Output only. Counts the time the disk and queue were busy, so unlike the fields above, parallel requests are not counted multiple times.
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Output only. Disk manufacturer.
  *   `model` (*type:* `String.t`, *default:* `nil`) - Output only. Disk model.
  *   `readTimeThisSession` (*type:* `String.t`, *default:* `nil`) - Output only. Time spent reading from disk since last boot.
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - Output only. Disk serial number.
  *   `sizeBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Disk size.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. Disk type: eMMC / NVMe / ATA / SCSI.
  *   `volumeIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Disk volumes.
  *   `writeTimeThisSession` (*type:* `String.t`, *default:* `nil`) - Output only. Time spent writing to disk since last boot.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bytesReadThisSession => String.t() | nil,
          :bytesWrittenThisSession => String.t() | nil,
          :discardTimeThisSession => String.t() | nil,
          :health => String.t() | nil,
          :ioTimeThisSession => String.t() | nil,
          :manufacturer => String.t() | nil,
          :model => String.t() | nil,
          :readTimeThisSession => String.t() | nil,
          :serialNumber => String.t() | nil,
          :sizeBytes => String.t() | nil,
          :type => String.t() | nil,
          :volumeIds => list(String.t()) | nil,
          :writeTimeThisSession => String.t() | nil
        }

  field(:bytesReadThisSession)
  field(:bytesWrittenThisSession)
  field(:discardTimeThisSession)
  field(:health)
  field(:ioTimeThisSession)
  field(:manufacturer)
  field(:model)
  field(:readTimeThisSession)
  field(:serialNumber)
  field(:sizeBytes)
  field(:type)
  field(:volumeIds, type: :list)
  field(:writeTimeThisSession)
end

defimpl Poison.Decoder, for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1DiskInfo do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1DiskInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1DiskInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
