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

defmodule GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceContactId do
  @moduledoc """
  //////////////////// DeviceContactId ////////////////////// Used by Device Contacts only. For more details see go/fbs-support-for-device-contacts.

  ## Attributes

  *   `ContactId` (*type:* `String.t`, *default:* `nil`) - DeviceContact Id.
  *   `DeviceId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId.t`, *default:* `nil`) - Device Id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ContactId => String.t() | nil,
          :DeviceId => GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId.t() | nil
        }

  field(:ContactId)
  field(:DeviceId, as: GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceId)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceContactId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceContactId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.FocusBackendDeviceContactId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end