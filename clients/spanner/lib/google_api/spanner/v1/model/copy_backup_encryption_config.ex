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

defmodule GoogleApi.Spanner.V1.Model.CopyBackupEncryptionConfig do
  @moduledoc """
  Encryption configuration for the copied backup.

  ## Attributes

  *   `encryptionType` (*type:* `String.t`, *default:* `nil`) - Required. The encryption type of the backup.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  *   `kmsKeyNames` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Specifies the KMS configuration for the one or more keys used to protect the backup. Values are of the form `projects//locations//keyRings//cryptoKeys/`. KMS keys specified can be in any order. The keys referenced by `kms_key_names` must fully cover all regions of the backup's instance configuration. Some examples: * For regional (single-region) instance configurations, specify a regional location KMS key. * For multi-region instance configurations of type `GOOGLE_MANAGED`, either specify a multi-region location KMS key or multiple regional location KMS keys that cover all regions in the instance configuration. * For an instance configuration of type `USER_MANAGED`, specify only regional location KMS keys to cover each region in the instance configuration. Multi-region location KMS keys aren't supported for `USER_MANAGED` type instance configurations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionType => String.t() | nil,
          :kmsKeyName => String.t() | nil,
          :kmsKeyNames => list(String.t()) | nil
        }

  field(:encryptionType)
  field(:kmsKeyName)
  field(:kmsKeyNames, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CopyBackupEncryptionConfig do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CopyBackupEncryptionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CopyBackupEncryptionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
