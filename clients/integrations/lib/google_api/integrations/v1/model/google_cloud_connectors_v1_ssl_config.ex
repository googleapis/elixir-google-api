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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig do
  @moduledoc """
  SSL Configuration of a connection

  ## Attributes

  *   `additionalVariables` (*type:* `list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable.t)`, *default:* `nil`) - Optional. Additional SSL related field values
  *   `clientCertType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of Client Cert (PEM/JKS/.. etc.)
  *   `clientCertificate` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t`, *default:* `nil`) - Optional. Client Certificate
  *   `clientPrivateKey` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t`, *default:* `nil`) - Optional. Client Private Key
  *   `clientPrivateKeyPass` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t`, *default:* `nil`) - Optional. Secret containing the passphrase protecting the Client Private Key
  *   `privateServerCertificate` (*type:* `GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t`, *default:* `nil`) - Optional. Private Server Certificate. Needs to be specified if trust model is `PRIVATE`.
  *   `serverCertType` (*type:* `String.t`, *default:* `nil`) - Optional. Type of Server Cert (PEM/JKS/.. etc.)
  *   `trustModel` (*type:* `String.t`, *default:* `nil`) - Optional. Trust Model of the SSL connection
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. Controls the ssl type for the given connector version.
  *   `useSsl` (*type:* `boolean()`, *default:* `nil`) - Optional. Bool for enabling SSL
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalVariables =>
            list(GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable.t()) | nil,
          :clientCertType => String.t() | nil,
          :clientCertificate =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t() | nil,
          :clientPrivateKey =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t() | nil,
          :clientPrivateKeyPass =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t() | nil,
          :privateServerCertificate =>
            GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret.t() | nil,
          :serverCertType => String.t() | nil,
          :trustModel => String.t() | nil,
          :type => String.t() | nil,
          :useSsl => boolean() | nil
        }

  field(:additionalVariables,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1ConfigVariable,
    type: :list
  )

  field(:clientCertType)
  field(:clientCertificate, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret)
  field(:clientPrivateKey, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret)
  field(:clientPrivateKeyPass, as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret)

  field(:privateServerCertificate,
    as: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1Secret
  )

  field(:serverCertType)
  field(:trustModel)
  field(:type)
  field(:useSsl)
end

defimpl Poison.Decoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Integrations.V1.Model.GoogleCloudConnectorsV1SslConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
