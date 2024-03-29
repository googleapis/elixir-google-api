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

defmodule GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials do
  @moduledoc """
  Parameters to support Oauth 2.0 Client Credentials Grant Authentication. See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.

  ## Attributes

  *   `clientId` (*type:* `String.t`, *default:* `nil`) - The client identifier.
  *   `clientSecret` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Secret version reference containing the client secret.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientId => String.t() | nil,
          :clientSecret => GoogleApi.Connectors.V1.Model.Secret.t() | nil
        }

  field(:clientId)
  field(:clientSecret, as: GoogleApi.Connectors.V1.Model.Secret)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.Oauth2ClientCredentials do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
