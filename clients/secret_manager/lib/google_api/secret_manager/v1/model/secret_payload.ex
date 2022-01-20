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

defmodule GoogleApi.SecretManager.V1.Model.SecretPayload do
  @moduledoc """
  A secret payload resource in the Secret Manager API. This contains the sensitive secret payload that is associated with a SecretVersion.

  ## Attributes

  *   `data` (*type:* `String.t`, *default:* `nil`) - The secret data. Must be no larger than 64KiB.
  *   `dataCrc32c` (*type:* `String.t`, *default:* `nil`) - Optional. If specified, SecretManagerService will verify the integrity of the received data on SecretManagerService.AddSecretVersion calls using the crc32c checksum and store it to include in future SecretManagerService.AccessSecretVersion responses. If a checksum is not provided in the SecretManagerService.AddSecretVersion request, the SecretManagerService will generate and store one for you. The CRC32C value is encoded as a Int64 for compatibility, and can be safely downconverted to uint32 in languages that support this type. https://cloud.google.com/apis/design/design_patterns#integer_types
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :data => String.t() | nil,
          :dataCrc32c => String.t() | nil
        }

  field(:data)
  field(:dataCrc32c)
end

defimpl Poison.Decoder, for: GoogleApi.SecretManager.V1.Model.SecretPayload do
  def decode(value, options) do
    GoogleApi.SecretManager.V1.Model.SecretPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecretManager.V1.Model.SecretPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
