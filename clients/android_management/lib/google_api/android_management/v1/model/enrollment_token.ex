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

defmodule GoogleApi.AndroidManagement.V1.Model.EnrollmentToken do
  @moduledoc """
  An enrollment token.

  ## Attributes

  *   `additionalData` (*type:* `String.t`, *default:* `nil`) - Optional, arbitrary data associated with the enrollment token. This could contain, for example, the ID of an org unit the device is assigned to after enrollment. After a device enrolls with the token, this data will be exposed in the enrollment_token_data field of the Device resource. The data must be 1024 characters or less; otherwise, the creation request will fail.
  *   `allowPersonalUsage` (*type:* `String.t`, *default:* `nil`) - Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
  *   `duration` (*type:* `String.t`, *default:* `nil`) - The length of time the enrollment token is valid, ranging from 1 minute to 90 days. If not specified, the default duration is 1 hour.
  *   `expirationTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - The expiration time of the token. This is a read-only field generated by the server.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the enrollment token, which is generated by the server during creation, in the form enterprises/{enterpriseId}/enrollmentTokens/{enrollmentTokenId}.
  *   `oneTimeOnly` (*type:* `boolean()`, *default:* `nil`) - Whether the enrollment token is for one time use only. If the flag is set to true, only one device can use it for registration.
  *   `policyName` (*type:* `String.t`, *default:* `nil`) - The name of the policy initially applied to the enrolled device, in the form enterprises/{enterpriseId}/policies/{policyId}. If not specified, the policy_name for the device’s user is applied. If user_name is also not specified, enterprises/{enterpriseId}/policies/default is applied by default. When updating this field, you can specify only the policyId as long as the policyId doesn’t contain any slashes. The rest of the policy name will be inferred.
  *   `qrCode` (*type:* `String.t`, *default:* `nil`) - A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON.
  *   `user` (*type:* `GoogleApi.AndroidManagement.V1.Model.User.t`, *default:* `nil`) - The user associated with this enrollment token. If it's specified when the enrollment token is created and the user does not exist, the user will be created. This field must not contain personally identifiable information. Only the account_identifier field needs to be set.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The token value that's passed to the device and authorizes the device to enroll. This is a read-only field generated by the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalData => String.t() | nil,
          :allowPersonalUsage => String.t() | nil,
          :duration => String.t() | nil,
          :expirationTimestamp => DateTime.t() | nil,
          :name => String.t() | nil,
          :oneTimeOnly => boolean() | nil,
          :policyName => String.t() | nil,
          :qrCode => String.t() | nil,
          :user => GoogleApi.AndroidManagement.V1.Model.User.t() | nil,
          :value => String.t() | nil
        }

  field(:additionalData)
  field(:allowPersonalUsage)
  field(:duration)
  field(:expirationTimestamp, as: DateTime)
  field(:name)
  field(:oneTimeOnly)
  field(:policyName)
  field(:qrCode)
  field(:user, as: GoogleApi.AndroidManagement.V1.Model.User)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.EnrollmentToken do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.EnrollmentToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.EnrollmentToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
