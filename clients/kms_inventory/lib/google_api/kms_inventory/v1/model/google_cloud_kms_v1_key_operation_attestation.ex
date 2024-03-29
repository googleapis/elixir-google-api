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

defmodule GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestation do
  @moduledoc """
  Contains an HSM-generated attestation about a key operation. For more information, see [Verifying attestations] (https://cloud.google.com/kms/docs/attest-key).

  ## Attributes

  *   `certChains` (*type:* `GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestationCertificateChains.t`, *default:* `nil`) - Output only. The certificate chains needed to validate the attestation
  *   `content` (*type:* `String.t`, *default:* `nil`) - Output only. The attestation data provided by the HSM when the key operation was performed.
  *   `format` (*type:* `String.t`, *default:* `nil`) - Output only. The format of the attestation data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certChains =>
            GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestationCertificateChains.t()
            | nil,
          :content => String.t() | nil,
          :format => String.t() | nil
        }

  field(:certChains,
    as: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestationCertificateChains
  )

  field(:content)
  field(:format)
end

defimpl Poison.Decoder,
  for: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestation do
  def decode(value, options) do
    GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestation.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.KMSInventory.V1.Model.GoogleCloudKmsV1KeyOperationAttestation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
