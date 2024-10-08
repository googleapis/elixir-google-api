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

defmodule GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged do
  @moduledoc """
  Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google Provided OAuth Client. See https://tools.ietf.org/html/rfc6749#section-1.3.1 for more details.

  ## Attributes

  *   `authCode` (*type:* `String.t`, *default:* `nil`) - Optional. Authorization code to be exchanged for access and refresh tokens.
  *   `redirectUri` (*type:* `String.t`, *default:* `nil`) - Optional. Redirect URI to be provided during the auth code exchange.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - Required. Scopes the connection will request when the user performs the auth code flow.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authCode => String.t() | nil,
          :redirectUri => String.t() | nil,
          :scopes => list(String.t()) | nil
        }

  field(:authCode)
  field(:redirectUri)
  field(:scopes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.Oauth2AuthCodeFlowGoogleManaged do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
