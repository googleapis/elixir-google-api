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

defmodule GoogleApi.DeveloperConnect.V1.Model.FetchAccessTokenResponse do
  @moduledoc """
  Message for responding to getting an OAuth access token.

  ## Attributes

  *   `exchangeError` (*type:* `GoogleApi.DeveloperConnect.V1.Model.ExchangeError.t`, *default:* `nil`) - The error resulted from exchanging OAuth tokens from the service provider.
  *   `expirationTime` (*type:* `DateTime.t`, *default:* `nil`) - Expiration timestamp. Can be empty if unknown or non-expiring.
  *   `scopes` (*type:* `list(String.t)`, *default:* `nil`) - The scopes of the access token.
  *   `token` (*type:* `String.t`, *default:* `nil`) - The token content.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exchangeError => GoogleApi.DeveloperConnect.V1.Model.ExchangeError.t() | nil,
          :expirationTime => DateTime.t() | nil,
          :scopes => list(String.t()) | nil,
          :token => String.t() | nil
        }

  field(:exchangeError, as: GoogleApi.DeveloperConnect.V1.Model.ExchangeError)
  field(:expirationTime, as: DateTime)
  field(:scopes, type: :list)
  field(:token)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.FetchAccessTokenResponse do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.FetchAccessTokenResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.FetchAccessTokenResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
