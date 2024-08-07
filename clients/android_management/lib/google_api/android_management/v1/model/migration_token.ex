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

defmodule GoogleApi.AndroidManagement.V1.Model.MigrationToken do
  @moduledoc """
  A token to initiate the migration of a device from being managed by a third-party DPC to being managed by Android Management API. A migration token is valid only for a single device. See the guide (https://developers.google.com/android/management/dpc-migration) for more details.

  ## Attributes

  *   `additionalData` (*type:* `String.t`, *default:* `nil`) - Immutable. Optional EMM-specified additional data. Once the device is migrated this will be populated in the migrationAdditionalData field of the Device resource. This must be at most 1024 characters.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when this migration token was created.
  *   `device` (*type:* `String.t`, *default:* `nil`) - Output only. Once this migration token is used to migrate a device, the name of the resulting Device resource will be populated here, in the form enterprises/{enterprise}/devices/{device}.
  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The id of the device, as in the Play EMM API. This corresponds to the deviceId parameter in Play EMM API's Devices.get (https://developers.google.com/android/work/play/emm-api/v1/devices/get#parameters) call.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Immutable. The time when this migration token expires. This can be at most seven days from the time of creation. The migration token is deleted seven days after it expires.
  *   `managementMode` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The management mode of the device or profile being migrated.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the migration token, which is generated by the server during creation, in the form enterprises/{enterprise}/migrationTokens/{migration_token}.
  *   `policy` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The name of the policy initially applied to the enrolled device, in the form enterprises/{enterprise}/policies/{policy}.
  *   `ttl` (*type:* `String.t`, *default:* `nil`) - Input only. The time that this migration token is valid for. This is input-only, and for returning a migration token the server will populate the expireTime field. This can be at most seven days. The default is seven days.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The user id of the Managed Google Play account on the device, as in the Play EMM API. This corresponds to the userId parameter in Play EMM API's Devices.get (https://developers.google.com/android/work/play/emm-api/v1/devices/get#parameters) call.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Output only. The value of the migration token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalData => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :device => String.t() | nil,
          :deviceId => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :managementMode => String.t() | nil,
          :name => String.t() | nil,
          :policy => String.t() | nil,
          :ttl => String.t() | nil,
          :userId => String.t() | nil,
          :value => String.t() | nil
        }

  field(:additionalData)
  field(:createTime, as: DateTime)
  field(:device)
  field(:deviceId)
  field(:expireTime, as: DateTime)
  field(:managementMode)
  field(:name)
  field(:policy)
  field(:ttl)
  field(:userId)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.MigrationToken do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.MigrationToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.MigrationToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
