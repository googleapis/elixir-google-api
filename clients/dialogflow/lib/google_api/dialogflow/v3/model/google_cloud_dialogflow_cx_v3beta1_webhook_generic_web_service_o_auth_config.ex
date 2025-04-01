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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig do
  @moduledoc """
  Represents configuration of OAuth client credential flow for 3rd party API authentication.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - Required. The client ID provided by the 3rd party platform.
  *   `clientSecret` (*type:* `String.t`, *default:* `nil`) - Optional. The client secret provided by the 3rd party platform.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The OAuth scopes to grant.
  *   `secretVersionForClientSecret` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the SecretManager secret version resource storing the client secret. If this field is set, the `client_secret` field will be ignored. Format: `projects/{project}/secrets/{secret}/versions/{version}`
  *   `tokenEndpoint` (*type:* `String.t`, *default:* `nil`) - Required. The token endpoint provided by the 3rd party platform to exchange an access token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :clientSecret => String.t() | nil,
          :scopes => list(String.t()) | nil,
          :secretVersionForClientSecret => String.t() | nil,
          :tokenEndpoint => String.t() | nil
        }

  field(:clientId)
  field(:clientSecret)
  field(:scopes, type: :list)
  field(:secretVersionForClientSecret)
  field(:tokenEndpoint)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1WebhookGenericWebServiceOAuthConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
