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

defmodule GoogleApi.AndroidManagement.V1.Model.SigninDetail do
  @moduledoc """
  A resource containing sign in details for an enterprise. Use enterprises to manage SigninDetails for a given enterprise.For an enterprise, we can have any number of SigninDetails that is uniquely identified by combination of the following three fields (signin_url, allow_personal_usage, token_tag). One cannot create two SigninDetails with the same (signin_url, allow_personal_usage, token_tag). (token_tag is an optional field).Patch: The operation updates the current list of SigninDetails with the new list of SigninDetails. If the stored SigninDetail configuration is passed, it returns the same signin_enrollment_token and qr_code. If we pass multiple identical SigninDetail configurations that are not stored, it will store the first one amongst those SigninDetail configurations. if the configuration already exists we cannot request it more than once in a particular patch API call, otherwise it will give a duplicate key error and the whole operation will fail. If we remove certain SigninDetail configuration from the request then it will get removed from the storage. We can then request another signin_enrollment_token and qr_code for the same SigninDetail configuration.

  ## Attributes

  *   `allowPersonalUsage` (*type:* `String.t`, *default:* `nil`) - Controls whether personal usage is allowed on a device provisioned with this enrollment token.For company-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage requires the user provision the device as a fully managed device.For personally-owned devices: Enabling personal usage allows the user to set up a work profile on the device. Disabling personal usage will prevent the device from provisioning. Personal usage cannot be disabled on personally-owned device.
  *   `defaultStatus` (*type:* `String.t`, *default:* `nil`) - Optional. Whether the sign-in URL should be used by default for the enterprise. The SigninDetail with defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT is used for Google account enrollment method. Only one of an enterprise's signinDetails can have defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT. If an Enterprise has at least one signinDetails and none of them have defaultStatus set to SIGNIN_DETAIL_IS_DEFAULT then the first one from the list is selected and has set defaultStatus to SIGNIN_DETAIL_IS_DEFAULT. If no signinDetails specified for the Enterprise then the Google Account device enrollment will fail.
  *   `qrCode` (*type:* `String.t`, *default:* `nil`) - A JSON string whose UTF-8 representation can be used to generate a QR code to enroll a device with this enrollment token. To enroll a device using NFC, the NFC record must contain a serialized java.util.Properties representation of the properties in the JSON. This is a read-only field generated by the server.
  *   `signinEnrollmentToken` (*type:* `String.t`, *default:* `nil`) - An enterprise wide enrollment token used to trigger custom sign-in flow. This is a read-only field generated by the server.
  *   `signinUrl` (*type:* `String.t`, *default:* `nil`) - Sign-in URL for authentication when device is provisioned with a sign-in enrollment token. The sign-in endpoint should finish authentication flow with a URL in the form of https://enterprise.google.com/android/enroll?et= for a successful login, or https://enterprise.google.com/android/enroll/invalid for a failed login.
  *   `tokenTag` (*type:* `String.t`, *default:* `nil`) - An EMM-specified metadata to distinguish between instances of SigninDetail.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowPersonalUsage => String.t() | nil,
          :defaultStatus => String.t() | nil,
          :qrCode => String.t() | nil,
          :signinEnrollmentToken => String.t() | nil,
          :signinUrl => String.t() | nil,
          :tokenTag => String.t() | nil
        }

  field(:allowPersonalUsage)
  field(:defaultStatus)
  field(:qrCode)
  field(:signinEnrollmentToken)
  field(:signinUrl)
  field(:tokenTag)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.SigninDetail do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.SigninDetail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.SigninDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
