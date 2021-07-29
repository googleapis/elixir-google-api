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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey do
  @moduledoc """
  This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.

  ## Attributes

  *   `kmsWrapped` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KmsWrappedCryptoKey.t`, *default:* `nil`) - Key wrapped using Cloud KMS
  *   `transient` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransientCryptoKey.t`, *default:* `nil`) - Transient crypto key
  *   `unwrapped` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UnwrappedCryptoKey.t`, *default:* `nil`) - Unwrapped crypto key
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsWrapped => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KmsWrappedCryptoKey.t() | nil,
          :transient => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransientCryptoKey.t() | nil,
          :unwrapped => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UnwrappedCryptoKey.t() | nil
        }

  field(:kmsWrapped, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2KmsWrappedCryptoKey)
  field(:transient, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2TransientCryptoKey)
  field(:unwrapped, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2UnwrappedCryptoKey)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2CryptoKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
