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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreEstablishmentProto do
  @moduledoc """
  This protocol buffer holds establishment-specific attributes for features of type TYPE_ESTABLISHMENT.

  ## Attributes

  *   `bizbuilderReference` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreBizBuilderReferenceProto.t`, *default:* `nil`) - Reference to BizBuilder data for this establishment. The bizbuilder_reference field indicates that a feature is claimed in CBDB (with the canonical state in MapFacts). The bizbuilder_reference is different from the social_reference's claimed_gaia_id because some BizBuilder clients will not have +Pages. All claimed businesses should have a bizbuilder_reference.
  *   `hours` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeScheduleProto.t`, *default:* `nil`) - Regular opening hours for the establishment (weekly schedule).
  *   `openingHours` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreOpeningHoursProto.t`, *default:* `nil`) - Opening hours for this establishment, including regular weekly hours and exceptional hours (e.g. on holidays). NOTE: in practice, only the exceptional hours are filled in this message. A schema migration for regular weekly hours was planned back in 2015 (see b/23105782) but was not completed and is (as of May 2018) not prioritized. Clients should continue getting regular opening hours from the `hours` field above. In openinghours.h there is a utility function `GetOpeningHoursFromFeature` that merges `EstablishmentProto.hours` into this proto.
  *   `priceInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoProto.t`, *default:* `nil`) - Pricing for products and services offered. Example: menus for restaurants.
  *   `serviceArea` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto.t`, *default:* `nil`) - 
  *   `telephone` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreTelephoneProto.t)`, *default:* `nil`) - Telephone number and related information.
  *   `type` (*type:* `String.t`, *default:* `nil`) - ** DEPRECATED ** This is deprecated in favor of the top-level (in FeatureProto) set of GConcepts. The type of establishment -- see comments above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bizbuilderReference =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreBizBuilderReferenceProto.t() | nil,
          :hours => GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeScheduleProto.t() | nil,
          :openingHours =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreOpeningHoursProto.t() | nil,
          :priceInfo => GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoProto.t() | nil,
          :serviceArea => GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto.t() | nil,
          :telephone =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostoreTelephoneProto.t()) | nil,
          :type => String.t() | nil
        }

  field(:bizbuilderReference,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostoreBizBuilderReferenceProto
  )

  field(:hours, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeScheduleProto)
  field(:openingHours, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreOpeningHoursProto)
  field(:priceInfo, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoProto)
  field(:serviceArea, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreServiceAreaProto)
  field(:telephone, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreTelephoneProto, type: :list)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreEstablishmentProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreEstablishmentProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreEstablishmentProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
