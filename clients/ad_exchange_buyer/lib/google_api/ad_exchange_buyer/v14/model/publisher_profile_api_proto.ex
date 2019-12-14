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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto do
  @moduledoc """


  ## Attributes

  *   `audience` (*type:* `String.t`, *default:* `nil`) - Publisher provided info on its audience.
  *   `buyerPitchStatement` (*type:* `String.t`, *default:* `nil`) - A pitch statement for the buyer
  *   `directContact` (*type:* `String.t`, *default:* `nil`) - Direct contact for the publisher profile.
  *   `exchange` (*type:* `String.t`, *default:* `nil`) - Exchange where this publisher profile is from. E.g. AdX, Rubicon etc...
  *   `googlePlusLink` (*type:* `String.t`, *default:* `nil`) - Link to publisher's Google+ page.
  *   `isParent` (*type:* `boolean()`, *default:* `nil`) - True, if this is the parent profile, which represents all domains owned by the publisher.
  *   `isPublished` (*type:* `boolean()`, *default:* `nil`) - True, if this profile is published. Deprecated for state.
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#publisherProfileApiProto`) - Identifies what kind of resource this is. Value: the fixed string "adexchangebuyer#publisherProfileApiProto".
  *   `logoUrl` (*type:* `String.t`, *default:* `nil`) - The url to the logo for the publisher.
  *   `mediaKitLink` (*type:* `String.t`, *default:* `nil`) - The url for additional marketing and sales materials.
  *   `name` (*type:* `String.t`, *default:* `nil`) - 
  *   `overview` (*type:* `String.t`, *default:* `nil`) - Publisher provided overview.
  *   `profileId` (*type:* `integer()`, *default:* `nil`) - The pair of (seller.account_id, profile_id) uniquely identifies a publisher profile for a given publisher.
  *   `programmaticContact` (*type:* `String.t`, *default:* `nil`) - Programmatic contact for the publisher profile.
  *   `publisherDomains` (*type:* `list(String.t)`, *default:* `nil`) - The list of domains represented in this publisher profile. Empty if this is a parent profile.
  *   `publisherProfileId` (*type:* `String.t`, *default:* `nil`) - Unique Id for publisher profile.
  *   `publisherProvidedForecast` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.PublisherProvidedForecast.t`, *default:* `nil`) - Publisher provided forecasting information.
  *   `rateCardInfoLink` (*type:* `String.t`, *default:* `nil`) - Link to publisher rate card
  *   `samplePageLink` (*type:* `String.t`, *default:* `nil`) - Link for a sample content page.
  *   `seller` (*type:* `GoogleApi.AdExchangeBuyer.V14.Model.Seller.t`, *default:* `nil`) - Seller of the publisher profile.
  *   `state` (*type:* `String.t`, *default:* `nil`) - State of the publisher profile.
  *   `topHeadlines` (*type:* `list(String.t)`, *default:* `nil`) - Publisher provided key metrics and rankings.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audience => String.t(),
          :buyerPitchStatement => String.t(),
          :directContact => String.t(),
          :exchange => String.t(),
          :googlePlusLink => String.t(),
          :isParent => boolean(),
          :isPublished => boolean(),
          :kind => String.t(),
          :logoUrl => String.t(),
          :mediaKitLink => String.t(),
          :name => String.t(),
          :overview => String.t(),
          :profileId => integer(),
          :programmaticContact => String.t(),
          :publisherDomains => list(String.t()),
          :publisherProfileId => String.t(),
          :publisherProvidedForecast =>
            GoogleApi.AdExchangeBuyer.V14.Model.PublisherProvidedForecast.t(),
          :rateCardInfoLink => String.t(),
          :samplePageLink => String.t(),
          :seller => GoogleApi.AdExchangeBuyer.V14.Model.Seller.t(),
          :state => String.t(),
          :topHeadlines => list(String.t())
        }

  field(:audience)
  field(:buyerPitchStatement)
  field(:directContact)
  field(:exchange)
  field(:googlePlusLink)
  field(:isParent)
  field(:isPublished)
  field(:kind)
  field(:logoUrl)
  field(:mediaKitLink)
  field(:name)
  field(:overview)
  field(:profileId)
  field(:programmaticContact)
  field(:publisherDomains, type: :list)
  field(:publisherProfileId)

  field(:publisherProvidedForecast,
    as: GoogleApi.AdExchangeBuyer.V14.Model.PublisherProvidedForecast
  )

  field(:rateCardInfoLink)
  field(:samplePageLink)
  field(:seller, as: GoogleApi.AdExchangeBuyer.V14.Model.Seller)
  field(:state)
  field(:topHeadlines, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.PublisherProfileApiProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
