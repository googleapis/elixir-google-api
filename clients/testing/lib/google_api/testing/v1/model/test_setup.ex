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

defmodule GoogleApi.Testing.V1.Model.TestSetup do
  @moduledoc """
  A description of how to set up the Android device prior to running the test.

  ## Attributes

  *   `account` (*type:* `GoogleApi.Testing.V1.Model.Account.t`, *default:* `nil`) - The device will be logged in on this account for the duration of the test.
  *   `additionalApks` (*type:* `list(GoogleApi.Testing.V1.Model.Apk.t)`, *default:* `nil`) - APKs to install in addition to those being directly tested.
      Currently capped at 100.
  *   `directoriesToPull` (*type:* `list(String.t)`, *default:* `nil`) - List of directories on the device to upload to GCS at the end of the test;
      they must be absolute paths under /sdcard or /data/local/tmp.
      Path names are restricted to characters a-z A-Z 0-9 _ - . + and /

      Note: The paths /sdcard and /data will be made available and treated as
      implicit path substitutions. E.g. if /sdcard on a particular device does
      not map to external storage, the system will replace it with the external
      storage path prefix for that device.
  *   `environmentVariables` (*type:* `list(GoogleApi.Testing.V1.Model.EnvironmentVariable.t)`, *default:* `nil`) - Environment variables to set for the test (only applicable for
      instrumentation tests).
  *   `filesToPush` (*type:* `list(GoogleApi.Testing.V1.Model.DeviceFile.t)`, *default:* `nil`) - List of files to push to the device before starting the test.
  *   `networkProfile` (*type:* `String.t`, *default:* `nil`) - The network traffic profile used for running the test.
      Available network profiles can be queried by using the
      NETWORK_CONFIGURATION environment type when calling
      TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :account => GoogleApi.Testing.V1.Model.Account.t(),
          :additionalApks => list(GoogleApi.Testing.V1.Model.Apk.t()),
          :directoriesToPull => list(String.t()),
          :environmentVariables => list(GoogleApi.Testing.V1.Model.EnvironmentVariable.t()),
          :filesToPush => list(GoogleApi.Testing.V1.Model.DeviceFile.t()),
          :networkProfile => String.t()
        }

  field(:account, as: GoogleApi.Testing.V1.Model.Account)
  field(:additionalApks, as: GoogleApi.Testing.V1.Model.Apk, type: :list)
  field(:directoriesToPull, type: :list)
  field(:environmentVariables, as: GoogleApi.Testing.V1.Model.EnvironmentVariable, type: :list)
  field(:filesToPush, as: GoogleApi.Testing.V1.Model.DeviceFile, type: :list)
  field(:networkProfile)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.TestSetup do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.TestSetup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.TestSetup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
