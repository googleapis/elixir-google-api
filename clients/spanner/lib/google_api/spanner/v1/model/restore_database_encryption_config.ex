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

defmodule GoogleApi.Spanner.V1.Model.RestoreDatabaseEncryptionConfig do
  @moduledoc """
  Encryption configuration for the restored database.

  ## Attributes

  *   `encryptionType` (*type:* `String.t`, *default:* `nil`) - Required. The encryption type of the restored database.
  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. The Cloud KMS key that will be used to encrypt/decrypt the restored database. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  *   `kmsKeyNames` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Specifies the KMS configuration for the one or more keys used to encrypt the database. Values have the form `projects//locations//keyRings//cryptoKeys/`. The keys referenced by kms_key_names must fully cover all regions of the database instance configuration. Some examples: * For single region database instance configurations, specify a single regional location KMS key. * For multi-regional database instance configurations of type `GOOGLE_MANAGED`, either specify a multi-regional location KMS key or multiple regional location KMS keys that cover all regions in the instance configuration. * For a database instance configuration of type `USER_MANAGED`, please specify only regional location KMS keys to cover each region in the instance configuration. Multi-regional location KMS keys are not supported for USER_MANAGED instance configurations.
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

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.RestoreDatabaseEncryptionConfig do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.RestoreDatabaseEncryptionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.RestoreDatabaseEncryptionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
