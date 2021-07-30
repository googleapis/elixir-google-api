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

defmodule GoogleApi.CloudKMS.V1.Model.MacSignRequest do
  @moduledoc """
  Request message for KeyManagementService.MacSign.

  ## Attributes

  *   `data` (*type:* `String.t`, *default:* `nil`) - Required. The data to sign. The MAC tag is computed over this data field based on the specific algorithm.
  *   `dataCrc32c` (*type:* `String.t`, *default:* `nil`) - Optional. An optional CRC32C checksum of the MacSignRequest.data. If specified, KeyManagementService will verify the integrity of the received MacSignRequest.data using this checksum. KeyManagementService will report an error if the checksum verification fails. If you receive a checksum error, your client should verify that CRC32C(MacSignRequest.data) is equal to MacSignRequest.data_crc32c, and if so, perform a limited number of retries. A persistent mismatch may indicate an issue in your computation of the CRC32C checksum. Note: This field is defined as int64 for reasons of compatibility across different languages. However, it is a non-negative integer, which will never exceed 2^32-1, and can be safely downconverted to uint32 in languages that support this type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => String.t() | nil,
          :dataCrc32c => String.t() | nil
        }

  field(:data)
  field(:dataCrc32c)
end

defimpl Poison.Decoder, for: GoogleApi.CloudKMS.V1.Model.MacSignRequest do
  def decode(value, options) do
    GoogleApi.CloudKMS.V1.Model.MacSignRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudKMS.V1.Model.MacSignRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
