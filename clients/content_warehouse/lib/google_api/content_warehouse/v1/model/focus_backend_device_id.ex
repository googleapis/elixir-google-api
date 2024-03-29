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

defmodule GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId do
  @moduledoc """
  //////////////////// DeviceId ////////////////////// Used by Device Contacts only. For more details see go/fbs-support-for-device-contacts.

  ## Attributes

  *   `AndroidDeviceId` (*type:* `String.t`, *default:* `nil`) - The GServices id on Android. See go/android-id.
  *   `Hash` (*type:* `String.t`, *default:* `nil`) - DeviceId.Hash is a SHA256 of some attribute of the user and device. For Android devices: Hash = SHA256(gaia_account_name + “:” + “1” + “:” + (android id - LSB)); For iOS devices: Hash = TOLOWER(HEX(GMCSComputeUserDeviceToken(userId, iOsDeviceId)) For more details see go/client-instance-id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :AndroidDeviceId => String.t() | nil,
          :Hash => String.t() | nil
        }

  field(:AndroidDeviceId)
  field(:Hash)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
