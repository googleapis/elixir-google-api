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

defmodule GoogleApi.Logging.V2.Model.CmekSettings do
  @moduledoc """
  Describes the customer-managed encryption key (CMEK) settings associated with a project, folder, organization, billing account, or flexible resource.Note: CMEK for the Logs Router can currently only be configured for Google Cloud organizations. Once configured, it applies to all projects and folders in the Google Cloud organization.See Enabling CMEK for Logs Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.

  ## Attributes

  *   `kmsKeyName` (*type:* `String.t`, *default:* `nil`) - The resource name for the configured Cloud KMS key.KMS key name format: "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]" For example:"projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key"To enable CMEK for the Logs Router, set this field to a valid kms_key_name for which the associated service account has the required cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.The Cloud KMS key used by the Log Router can be updated by changing the kms_key_name to a new valid key name or disabled by setting the key name to an empty string. Encryption operations that are in progress will be completed with the key that was in use when they started. Decryption operations will be completed using the key that was used at the time of encryption unless access to that key has been revoked.To disable CMEK for the Logs Router, set this field to an empty string.See Enabling CMEK for Logs Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the CMEK settings.
  *   `serviceAccountId` (*type:* `String.t`, *default:* `nil`) - Output only. The service account that will be used by the Logs Router to access your Cloud KMS key.Before enabling CMEK for Logs Router, you must first assign the cloudkms.cryptoKeyEncrypterDecrypter role to the service account that the Logs Router will use to access your Cloud KMS key. Use GetCmekSettings to obtain the service account ID.See Enabling CMEK for Logs Router (https://cloud.google.com/logging/docs/routing/managed-encryption) for more information.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kmsKeyName => String.t() | nil,
          :name => String.t() | nil,
          :serviceAccountId => String.t() | nil
        }

  field(:kmsKeyName)
  field(:name)
  field(:serviceAccountId)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.CmekSettings do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.CmekSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.CmekSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
