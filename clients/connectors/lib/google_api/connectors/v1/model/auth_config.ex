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

defmodule GoogleApi.Connectors.V1.Model.AuthConfig do
  @moduledoc """
  AuthConfig defines details of a authentication type.

  ## Attributes

  *   `additionalVariables` (*type:* `list(GoogleApi.Connectors.V1.Model.ConfigVariable.t)`, *default:* `nil`) - List containing additional auth configs.
  *   `authKey` (*type:* `String.t`, *default:* `nil`) - Identifier key for auth config
  *   `authType` (*type:* `String.t`, *default:* `nil`) - The type of authentication configured.
  *   `oauth2AuthCodeFlow` (*type:* `GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlow.t`, *default:* `nil`) - Oauth2AuthCodeFlow.
  *   `oauth2AuthCodeFlowGoogleManaged` (*type:* `GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged.t`, *default:* `nil`) - Oauth2AuthCodeFlowGoogleManaged.
  *   `oauth2ClientCredentials` (*type:* `GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials.t`, *default:* `nil`) - Oauth2ClientCredentials.
  *   `oauth2JwtBearer` (*type:* `GoogleApi.Connectors.V1.Model.Oauth2JwtBearer.t`, *default:* `nil`) - Oauth2JwtBearer.
  *   `sshPublicKey` (*type:* `GoogleApi.Connectors.V1.Model.SshPublicKey.t`, *default:* `nil`) - SSH Public Key.
  *   `userPassword` (*type:* `GoogleApi.Connectors.V1.Model.UserPassword.t`, *default:* `nil`) - UserPassword.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :additionalVariables => list(GoogleApi.Connectors.V1.Model.ConfigVariable.t()) | nil,
          :authKey => String.t() | nil,
          :authType => String.t() | nil,
          :oauth2AuthCodeFlow => GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlow.t() | nil,
          :oauth2AuthCodeFlowGoogleManaged =>
            GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged.t() | nil,
          :oauth2ClientCredentials =>
            GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials.t() | nil,
          :oauth2JwtBearer => GoogleApi.Connectors.V1.Model.Oauth2JwtBearer.t() | nil,
          :sshPublicKey => GoogleApi.Connectors.V1.Model.SshPublicKey.t() | nil,
          :userPassword => GoogleApi.Connectors.V1.Model.UserPassword.t() | nil
        }

  field(:additionalVariables, as: GoogleApi.Connectors.V1.Model.ConfigVariable, type: :list)
  field(:authKey)
  field(:authType)
  field(:oauth2AuthCodeFlow, as: GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlow)

  field(:oauth2AuthCodeFlowGoogleManaged,
    as: GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged
  )

  field(:oauth2ClientCredentials, as: GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials)
  field(:oauth2JwtBearer, as: GoogleApi.Connectors.V1.Model.Oauth2JwtBearer)
  field(:sshPublicKey, as: GoogleApi.Connectors.V1.Model.SshPublicKey)
  field(:userPassword, as: GoogleApi.Connectors.V1.Model.UserPassword)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.AuthConfig do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.AuthConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.AuthConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
