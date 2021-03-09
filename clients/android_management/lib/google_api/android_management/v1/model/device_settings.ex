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

defmodule GoogleApi.AndroidManagement.V1.Model.DeviceSettings do
  @moduledoc """
  Information about security related device settings on device.

  ## Attributes

  *   `adbEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether ADB (https://developer.android.com/studio/command-line/adb.html) is enabled on the device.
  *   `developmentSettingsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether developer mode is enabled on the device.
  *   `encryptionStatus` (*type:* `String.t`, *default:* `nil`) - Encryption status from DevicePolicyManager.
  *   `isDeviceSecure` (*type:* `boolean()`, *default:* `nil`) - Whether the device is secured with PIN/password.
  *   `isEncrypted` (*type:* `boolean()`, *default:* `nil`) - Whether the storage encryption is enabled.
  *   `unknownSourcesEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether installing apps from unknown sources is enabled.
  *   `verifyAppsEnabled` (*type:* `boolean()`, *default:* `nil`) - Whether Verify Apps (Google Play Protect (https://support.google.com/googleplay/answer/2812853)) is enabled on the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adbEnabled => boolean() | nil,
          :developmentSettingsEnabled => boolean() | nil,
          :encryptionStatus => String.t() | nil,
          :isDeviceSecure => boolean() | nil,
          :isEncrypted => boolean() | nil,
          :unknownSourcesEnabled => boolean() | nil,
          :verifyAppsEnabled => boolean() | nil
        }

  field(:adbEnabled)
  field(:developmentSettingsEnabled)
  field(:encryptionStatus)
  field(:isDeviceSecure)
  field(:isEncrypted)
  field(:unknownSourcesEnabled)
  field(:verifyAppsEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.DeviceSettings do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.DeviceSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.DeviceSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
