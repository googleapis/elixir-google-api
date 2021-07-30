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

defmodule GoogleApi.CloudKMS.V1.Model.MacSignResponse do
  @moduledoc """
  Response message for KeyManagementService.MacSign.

  ## Attributes

  *   `mac` (*type:* `String.t`, *default:* `nil`) - The created signature.
  *   `macCrc32c` (*type:* `String.t`, *default:* `nil`) - Integrity verification field. A CRC32C checksum of the returned MacSignResponse.mac. An integrity check of MacSignResponse.mac can be performed by computing the CRC32C checksum of MacSignResponse.mac and comparing your results to this field. Discard the response in case of non-matching checksum values, and perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the CryptoKeyVersion used for signing. Check this field to verify that the intended resource was used for signing.
  *   `protectionLevel` (*type:* `String.t`, *default:* `nil`) - The ProtectionLevel of the CryptoKeyVersion used for signing.
  *   `verifiedDataCrc32c` (*type:* `boolean()`, *default:* `nil`) - Integrity verification field. A flag indicating whether MacSignRequest.data_crc32c was received by KeyManagementService and used for the integrity verification of the data. A false value of this field indicates either that MacSignRequest.data_crc32c was left unset or that it was not delivered to KeyManagementService. If you've set MacSignRequest.data_crc32c but this field is still false, discard the response and perform a limited number of retries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mac => String.t() | nil,
          :macCrc32c => String.t() | nil,
          :name => String.t() | nil,
          :protectionLevel => String.t() | nil,
          :verifiedDataCrc32c => boolean() | nil
        }

  field(:mac)
  field(:macCrc32c)
  field(:name)
  field(:protectionLevel)
  field(:verifiedDataCrc32c)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.MacSignResponse do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.MacSignResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.MacSignResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
