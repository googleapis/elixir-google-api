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

defmodule GoogleApi.Gmail.V1.Model.CseKeyPair do
  @moduledoc """
  A client-side encryption S/MIME key pair, which is comprised of a public key, its certificate chain, and metadata for its paired private key. Gmail uses the key pair to complete the following tasks: - Sign outgoing client-side encrypted messages. - Save and reopen drafts of client-side encrypted messages. - Save and reopen sent messages. - Decrypt incoming or archived S/MIME messages.

  ## Attributes

  *   `disableTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. If a key pair is set to `DISABLED`, the time that the key pair's state changed from `ENABLED` to `DISABLED`. This field is present only when the key pair is in state `DISABLED`.
  *   `enablementState` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the key pair.
  *   `keyPairId` (*type:* `String.t`, *default:* `nil`) - Output only. The immutable ID for the client-side encryption S/MIME key pair.
  *   `pem` (*type:* `String.t`, *default:* `nil`) - Output only. The public key and its certificate chain, in [PEM](https://en.wikipedia.org/wiki/Privacy-Enhanced_Mail) format.
  *   `pkcs7` (*type:* `String.t`, *default:* `nil`) - Input only. The public key and its certificate chain. The chain must be in [PKCS#7](https://en.wikipedia.org/wiki/PKCS_7) format and use PEM encoding and ASCII armor.
  *   `privateKeyMetadata` (*type:* `list(GoogleApi.Gmail.V1.Model.CsePrivateKeyMetadata.t)`, *default:* `nil`) - Metadata for instances of this key pair's private key.
  *   `subjectEmailAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The email address identities that are specified on the leaf certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableTime => DateTime.t() | nil,
          :enablementState => String.t() | nil,
          :keyPairId => String.t() | nil,
          :pem => String.t() | nil,
          :pkcs7 => String.t() | nil,
          :privateKeyMetadata => list(GoogleApi.Gmail.V1.Model.CsePrivateKeyMetadata.t()) | nil,
          :subjectEmailAddresses => list(String.t()) | nil
        }

  field(:disableTime, as: DateTime)
  field(:enablementState)
  field(:keyPairId)
  field(:pem)
  field(:pkcs7)
  field(:privateKeyMetadata, as: GoogleApi.Gmail.V1.Model.CsePrivateKeyMetadata, type: :list)
  field(:subjectEmailAddresses, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Gmail.V1.Model.CseKeyPair do
  def decode(value, options) do
    GoogleApi.Gmail.V1.Model.CseKeyPair.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Gmail.V1.Model.CseKeyPair do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
