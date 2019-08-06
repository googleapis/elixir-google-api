# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CloudKMS.V1.Model.EncryptResponse do
  @moduledoc """
  Response message for KeyManagementService.Encrypt.

  ## Attributes

  *   `ciphertext` (*type:* `String.t`, *default:* `nil`) - The encrypted data.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the CryptoKeyVersion used in encryption. Check
      this field to verify that the intended resource was used for encryption.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ciphertext => String.t(),
          :name => String.t()
        }

  field(:ciphertext)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.EncryptResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.EncryptResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.EncryptResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
