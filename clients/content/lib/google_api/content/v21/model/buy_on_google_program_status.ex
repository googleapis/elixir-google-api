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

defmodule GoogleApi.Content.V21.Model.BuyOnGoogleProgramStatus do
  @moduledoc """
  Response message for the GetProgramStatus method.

  ## Attributes

  *   `businessModel` (*type:* `list(String.t)`, *default:* `nil`) - The business models in which merchant participates.
  *   `customerServicePendingEmail` (*type:* `String.t`, *default:* `nil`) - The customer service pending email. After verification this field becomes empty.
  *   `customerServicePendingPhoneNumber` (*type:* `String.t`, *default:* `nil`) - The pending phone number specified for BuyOnGoogle program. It might be different than account level phone number. In order to update this field the customer_service_pending_phone_region_code must also be set. After verification this field becomes empty.
  *   `customerServicePendingPhoneRegionCode` (*type:* `String.t`, *default:* `nil`) - Two letter country code for the pending phone number, for example `CA` for Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned codes. In order to update this field the customer_service_pending_phone_number must also be set. After verification this field becomes empty.
  *   `customerServiceVerifiedEmail` (*type:* `String.t`, *default:* `nil`) - Output only. The customer service verified email.
  *   `customerServiceVerifiedPhoneNumber` (*type:* `String.t`, *default:* `nil`) - Output only. The verified phone number specified for BuyOnGoogle program. It might be different than account level phone number.
  *   `customerServiceVerifiedPhoneRegionCode` (*type:* `String.t`, *default:* `nil`) - Output only. Two letter country code for the verified phone number, for example `CA` for Canadian numbers. See the [ISO 3166-1 alpha-2](https://wikipedia.org/wiki/ISO_3166-1_alpha-2#Officially_assigned_code_elements) officially assigned codes.
  *   `onlineSalesChannel` (*type:* `String.t`, *default:* `nil`) - The channels through which the merchant is selling.
  *   `participationStage` (*type:* `String.t`, *default:* `nil`) - Output only. The current participation stage for the program.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :businessModel => list(String.t()) | nil,
          :customerServicePendingEmail => String.t() | nil,
          :customerServicePendingPhoneNumber => String.t() | nil,
          :customerServicePendingPhoneRegionCode => String.t() | nil,
          :customerServiceVerifiedEmail => String.t() | nil,
          :customerServiceVerifiedPhoneNumber => String.t() | nil,
          :customerServiceVerifiedPhoneRegionCode => String.t() | nil,
          :onlineSalesChannel => String.t() | nil,
          :participationStage => String.t() | nil
        }

  field(:businessModel, type: :list)
  field(:customerServicePendingEmail)
  field(:customerServicePendingPhoneNumber)
  field(:customerServicePendingPhoneRegionCode)
  field(:customerServiceVerifiedEmail)
  field(:customerServiceVerifiedPhoneNumber)
  field(:customerServiceVerifiedPhoneRegionCode)
  field(:onlineSalesChannel)
  field(:participationStage)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.BuyOnGoogleProgramStatus do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.BuyOnGoogleProgramStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.BuyOnGoogleProgramStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
