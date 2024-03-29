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

defmodule GoogleApi.Content.V21.Model.RequestPhoneVerificationRequest do
  @moduledoc """
  Request message for the RequestPhoneVerification method.

  ## Attributes

  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Language code [IETF BCP 47 syntax](https://tools.ietf.org/html/bcp47) (for example, en-US). Language code is used to provide localized `SMS` and `PHONE_CALL`. Default language used is en-US if not provided.
  *   `phoneNumber` (*type:* `String.t`, *default:* `nil`) - Phone number to be verified.
  *   `phoneRegionCode` (*type:* `String.t`, *default:* `nil`) - Required. Two letter country code for the phone number, for example `CA` for Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned codes.
  *   `phoneVerificationMethod` (*type:* `String.t`, *default:* `nil`) - Verification method to receive verification code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :languageCode => String.t() | nil,
          :phoneNumber => String.t() | nil,
          :phoneRegionCode => String.t() | nil,
          :phoneVerificationMethod => String.t() | nil
        }

  field(:languageCode)
  field(:phoneNumber)
  field(:phoneRegionCode)
  field(:phoneVerificationMethod)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.RequestPhoneVerificationRequest do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.RequestPhoneVerificationRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.RequestPhoneVerificationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
