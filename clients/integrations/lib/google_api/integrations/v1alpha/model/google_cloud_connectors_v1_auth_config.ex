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

defmodule GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfig do
  @moduledoc """
  AuthConfig defines details of a authentication type.

  ## Attributes

  *   `additionalVariables` (*type:* `list(GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable.t)`, *default:* `nil`) - List containing additional auth configs.
  *   `authKey` (*type:* `String.t`, *default:* `nil`) - Identifier key for auth config
  *   `authType` (*type:* `String.t`, *default:* `nil`) - The type of authentication configured.
  *   `oauth2AuthCodeFlow` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow.t`, *default:* `nil`) - Oauth2AuthCodeFlow.
  *   `oauth2ClientCredentials` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials.t`, *default:* `nil`) - Oauth2ClientCredentials.
  *   `oauth2JwtBearer` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer.t`, *default:* `nil`) - Oauth2JwtBearer.
  *   `sshPublicKey` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigSshPublicKey.t`, *default:* `nil`) - SSH Public Key.
  *   `userPassword` (*type:* `GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigUserPassword.t`, *default:* `nil`) - UserPassword.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalVariables =>
            list(GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable.t())
            | nil,
          :authKey => String.t() | nil,
          :authType => String.t() | nil,
          :oauth2AuthCodeFlow =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow.t()
            | nil,
          :oauth2ClientCredentials =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials.t()
            | nil,
          :oauth2JwtBearer =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer.t()
            | nil,
          :sshPublicKey =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigSshPublicKey.t()
            | nil,
          :userPassword =>
            GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigUserPassword.t()
            | nil
        }

  field(:additionalVariables,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1ConfigVariable,
    type: :list
  )

  field(:authKey)
  field(:authType)

  field(:oauth2AuthCodeFlow,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2AuthCodeFlow
  )

  field(:oauth2ClientCredentials,
    as:
      GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2ClientCredentials
  )

  field(:oauth2JwtBearer,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigOauth2JwtBearer
  )

  field(:sshPublicKey,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigSshPublicKey
  )

  field(:userPassword,
    as: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfigUserPassword
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfig do
  def decode(value, options) do
    GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1alpha.Model.GoogleCloudConnectorsV1AuthConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end