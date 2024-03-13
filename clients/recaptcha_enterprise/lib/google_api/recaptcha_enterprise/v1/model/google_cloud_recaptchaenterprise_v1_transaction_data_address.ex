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

defmodule GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress do
  @moduledoc """
  Structured address format for billing and shipping addresses.

  ## Attributes

  *   `address` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The first lines of the address. The first line generally contains the street name and number, and further lines may include information such as an apartment number.
  *   `administrativeArea` (*type:* `String.t`, *default:* `nil`) - Optional. The state, province, or otherwise administrative area of the address.
  *   `locality` (*type:* `String.t`, *default:* `nil`) - Optional. The town/city of the address.
  *   `postalCode` (*type:* `String.t`, *default:* `nil`) - Optional. The postal or ZIP code of the address.
  *   `recipient` (*type:* `String.t`, *default:* `nil`) - Optional. The recipient name, potentially including information such as "care of".
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Optional. The CLDR country/region of the address.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address => list(String.t()) | nil,
          :administrativeArea => String.t() | nil,
          :locality => String.t() | nil,
          :postalCode => String.t() | nil,
          :recipient => String.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:address, type: :list)
  field(:administrativeArea)
  field(:locality)
  field(:postalCode)
  field(:recipient)
  field(:regionCode)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress do
  def decode(value, options) do
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecaptchaEnterprise.V1.Model.GoogleCloudRecaptchaenterpriseV1TransactionDataAddress do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end