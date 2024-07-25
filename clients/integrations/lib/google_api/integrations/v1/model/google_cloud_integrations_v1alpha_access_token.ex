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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAccessToken do
  @moduledoc """
  The access token represents the authorization of a specific application to access specific parts of a user’s data.

  ## Attributes

  *   `accessToken` (*type:* `String.t`, *default:* `nil`) - The access token encapsulating the security identity of a process or thread.
  *   `accessTokenExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. The approximate time until the access token retrieved is valid.
  *   `refreshToken` (*type:* `String.t`, *default:* `nil`) - If the access token will expire, use the refresh token to obtain another access token.
  *   `refreshTokenExpireTime` (*type:* `DateTime.t`, *default:* `nil`) - The approximate time until the refresh token retrieved is valid.
  *   `tokenType` (*type:* `String.t`, *default:* `nil`) - Only support "bearer" token in v1 as bearer token is the predominant type used with OAuth 2.0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessToken => String.t() | nil,
          :accessTokenExpireTime => DateTime.t() | nil,
          :refreshToken => String.t() | nil,
          :refreshTokenExpireTime => DateTime.t() | nil,
          :tokenType => String.t() | nil
        }

  field(:accessToken)
  field(:accessTokenExpireTime, as: DateTime)
  field(:refreshToken)
  field(:refreshTokenExpireTime, as: DateTime)
  field(:tokenType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAccessToken do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAccessToken.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaAccessToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
