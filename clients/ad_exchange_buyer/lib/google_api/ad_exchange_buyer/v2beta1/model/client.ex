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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Client do
  @moduledoc """
  A client resource represents a client buyer—an agency, a brand, or an advertiser customer of the sponsor buyer. Users associated with the client buyer have restricted access to the Marketplace and certain other sections of the Authorized Buyers UI based on the role granted to the client buyer. All fields are required unless otherwise specified.

  ## Attributes

  *   `clientAccountId` (*type:* `String.t`, *default:* `nil`) - The globally-unique numerical ID of the client. The value of this field is ignored in create and update operations.
  *   `clientName` (*type:* `String.t`, *default:* `nil`) - Name used to represent this client to publishers. You may have multiple clients that map to the same entity, but for each client the combination of `clientName` and entity must be unique. You can specify this field as empty. Maximum length of 255 characters is allowed.
  *   `entityId` (*type:* `String.t`, *default:* `nil`) - Numerical identifier of the client entity. The entity can be an advertiser, a brand, or an agency. This identifier is unique among all the entities with the same type. The value of this field is ignored if the entity type is not provided. A list of all known advertisers with their identifiers is available in the [advertisers.txt](https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt) file. A list of all known brands with their identifiers is available in the [brands.txt](https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt) file. A list of all known agencies with their identifiers is available in the [agencies.txt](https://storage.googleapis.com/adx-rtb-dictionaries/agencies.txt) file.
  *   `entityName` (*type:* `String.t`, *default:* `nil`) - The name of the entity. This field is automatically fetched based on the type and ID. The value of this field is ignored in create and update operations.
  *   `entityType` (*type:* `String.t`, *default:* `nil`) - An optional field for specifying the type of the client entity: `ADVERTISER`, `BRAND`, or `AGENCY`.
  *   `partnerClientId` (*type:* `String.t`, *default:* `nil`) - Optional arbitrary unique identifier of this client buyer from the standpoint of its Ad Exchange sponsor buyer. This field can be used to associate a client buyer with the identifier in the namespace of its sponsor buyer, lookup client buyers by that identifier and verify whether an Ad Exchange counterpart of a given client buyer already exists. If present, must be unique among all the client buyers for its Ad Exchange sponsor buyer.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role which is assigned to the client buyer. Each role implies a set of permissions granted to the client. Must be one of `CLIENT_DEAL_VIEWER`, `CLIENT_DEAL_NEGOTIATOR` or `CLIENT_DEAL_APPROVER`.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of the client buyer.
  *   `visibleToSeller` (*type:* `boolean()`, *default:* `nil`) - Whether the client buyer will be visible to sellers.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientAccountId => String.t() | nil,
          :clientName => String.t() | nil,
          :entityId => String.t() | nil,
          :entityName => String.t() | nil,
          :entityType => String.t() | nil,
          :partnerClientId => String.t() | nil,
          :role => String.t() | nil,
          :status => String.t() | nil,
          :visibleToSeller => boolean() | nil
        }

  field(:clientAccountId)
  field(:clientName)
  field(:entityId)
  field(:entityName)
  field(:entityType)
  field(:partnerClientId)
  field(:role)
  field(:status)
  field(:visibleToSeller)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Client do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Client.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Client do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
