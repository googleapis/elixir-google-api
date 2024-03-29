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

defmodule GoogleApi.AuthorizedBuyersMarketplace.V1.Model.Client do
  @moduledoc """
  A client represents an agency, a brand, or an advertiser customer of the buyer. Based on the client's role, its client users will have varying levels of restricted access to the Marketplace and certain other sections of the Authorized Buyers UI.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. Display name shown to publishers. Must be unique for clients without partnerClientId specified. Maximum length of 255 characters is allowed.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the client. Format: `buyers/{accountId}/clients/{clientAccountId}`
  *   `partnerClientId` (*type:* `String.t`, *default:* `nil`) - Arbitrary unique identifier provided by the buyer. This field can be used to associate a client with an identifier in the namespace of the buyer, lookup clients by that identifier and verify whether an Authorized Buyers account of the client already exists. If present, must be unique across all the clients.
  *   `role` (*type:* `String.t`, *default:* `nil`) - Required. The role assigned to the client. Each role implies a set of permissions granted to the client.
  *   `sellerVisible` (*type:* `boolean()`, *default:* `nil`) - Whether the client will be visible to sellers.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the client.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :partnerClientId => String.t() | nil,
          :role => String.t() | nil,
          :sellerVisible => boolean() | nil,
          :state => String.t() | nil
        }

  field(:displayName)
  field(:name)
  field(:partnerClientId)
  field(:role)
  field(:sellerVisible)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.Client do
  def decode(value, options) do
    GoogleApi.AuthorizedBuyersMarketplace.V1.Model.Client.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AuthorizedBuyersMarketplace.V1.Model.Client do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
