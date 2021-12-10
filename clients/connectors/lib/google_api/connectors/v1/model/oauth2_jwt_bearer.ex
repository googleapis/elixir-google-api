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

defmodule GoogleApi.Connectors.V1.Model.Oauth2JwtBearer do
  @moduledoc """
  Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0 Authorization Grant based authentication. See https://tools.ietf.org/html/rfc7523 for more details.

  ## Attributes

  *   `clientKey` (*type:* `GoogleApi.Connectors.V1.Model.Secret.t`, *default:* `nil`) - Secret version reference containing a PKCS#8 PEM-encoded private key associated with the Client Certificate. This private key will be used to sign JWTs used for the jwt-bearer authorization grant. Specified in the form as: `projects/*/secrets/*/versions/*`.
  *   `jwtClaims` (*type:* `GoogleApi.Connectors.V1.Model.JwtClaims.t`, *default:* `nil`) - JwtClaims providers fields to generate the token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientKey => GoogleApi.Connectors.V1.Model.Secret.t() | nil,
          :jwtClaims => GoogleApi.Connectors.V1.Model.JwtClaims.t() | nil
        }

  field(:clientKey, as: GoogleApi.Connectors.V1.Model.Secret)
  field(:jwtClaims, as: GoogleApi.Connectors.V1.Model.JwtClaims)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.Oauth2JwtBearer do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.Oauth2JwtBearer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.Oauth2JwtBearer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
