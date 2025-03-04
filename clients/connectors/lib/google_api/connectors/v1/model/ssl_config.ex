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

defmodule GoogleApi.Connectors.V1.Model.SslConfig do
  @moduledoc """
  SSL Configuration of a connection

  ## Attributes

  *   `additionalVariables` (*type:* `list(GoogleApi.Connectors.V1.Model.ConfigVariable.t)`, *default:* `nil`) - Optional. Additional SSL related field values
  *   `clientCertType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of Client Cert (PEM/JKS/.. etc.)
  *   `clientCertificate` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Optional. Client Certificate
  *   `clientPrivateKey` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Optional. Client Private Key
  *   `clientPrivateKeyPass` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Optional. Secret containing the passphrase protecting the Client Private Key
  *   `privateServerCertificate` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Optional. Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  *   `serverCertType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of Server Cert (PEM/JKS/.. etc.)
  *   `trustModel` (*type:* `String.t`, *default:* `nil`) - Optional. Trust Model of the SSL connection
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. Controls the ssl type for the given connector version.
  *   `useSsl` (*type:* `boolean()`, *default:* `nil`) - Optional. Bool for enabling SSL
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalVariables => list(GoogleApi.Connectors.V1.Model.ConfigVariable.t()) | nil,
          :clientCertType => String.t() | nil,
          :clientCertificate => GoogleApi.Connectors.V1.Model.Secret.t() | nil,
          :clientPrivateKey => GoogleApi.Connectors.V1.Model.Secret.t() | nil,
          :clientPrivateKeyPass => GoogleApi.Connectors.V1.Model.Secret.t() | nil,
          :privateServerCertificate => GoogleApi.Connectors.V1.Model.Secret.t() | nil,
          :serverCertType => String.t() | nil,
          :trustModel => String.t() | nil,
          :type => String.t() | nil,
          :useSsl => boolean() | nil
        }

  field(:additionalVariables, as: GoogleApi.Connectors.V1.Model.ConfigVariable, type: :list)
  field(:clientCertType)
  field(:clientCertificate, as: GoogleApi.Connectors.V1.Model.Secret)
  field(:clientPrivateKey, as: GoogleApi.Connectors.V1.Model.Secret)
  field(:clientPrivateKeyPass, as: GoogleApi.Connectors.V1.Model.Secret)
  field(:privateServerCertificate, as: GoogleApi.Connectors.V1.Model.Secret)
  field(:serverCertType)
  field(:trustModel)
  field(:type)
  field(:useSsl)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.SslConfig do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.SslConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.SslConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
