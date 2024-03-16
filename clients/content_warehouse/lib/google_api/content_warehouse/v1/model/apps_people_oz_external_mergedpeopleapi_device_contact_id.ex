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

defmodule GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactId do
  @moduledoc """
  Unique id for an aggregated device contact.

  ## Attributes

  *   `contactId` (*type:* `String.t`, *default:* `nil`) - Aggregated device contact id on the source device.
  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Source device id (go/client-instance-id) of this device contact.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contactId => String.t() | nil,
          :deviceId => String.t() | nil
        }

  field(:contactId)
  field(:deviceId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactId do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactId.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AppsPeopleOzExternalMergedpeopleapiDeviceContactId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end