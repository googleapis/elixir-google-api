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

defmodule GoogleApi.CloudIot.V1.Model.DeviceCredential do
  @moduledoc """
  A server-stored device credential used for authentication.

  ## Attributes

  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - [Optional] The time at which this credential becomes invalid. This
      credential will be ignored for new client authentication requests after
      this timestamp; however, it will not be automatically deleted.
  *   `publicKey` (*type:* `GoogleApi.CloudIot.V1.Model.PublicKeyCredential.t`, *default:* `nil`) - A public key used to verify the signature of JSON Web Tokens (JWTs).
      When adding a new device credential, either via device creation or via
      modifications, this public key credential may be required to be signed by
      one of the registry level certificates. More specifically, if the
      registry contains at least one certificate, any new device credential
      must be signed by one of the registry certificates. As a result,
      when the registry contains certificates, only X.509 certificates are
      accepted as device credentials. However, if the registry does
      not contain a certificate, self-signed certificates and public keys will
      be accepted. New device credentials must be different from every
      registry-level certificate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expirationTime => DateTime.t(),
          :publicKey => GoogleApi.CloudIot.V1.Model.PublicKeyCredential.t()
        }

  field(:expirationTime, as: DateTime)
  field(:publicKey, as: GoogleApi.CloudIot.V1.Model.PublicKeyCredential)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.DeviceCredential do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.DeviceCredential.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.DeviceCredential do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
