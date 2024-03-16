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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalResult do
  @moduledoc """
  A generic representation of a local result returned by a local backend. Next ID: 33

  ## Attributes

  *   `adminArea1` (*type:* `String.t`, *default:* `nil`) - This field can represent different areas depending on the country. For example in the US it is state but in Canada it would be a province.
  *   `availableIntents` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalIntentOptions.t`, *default:* `nil`) - The set of available intents changes with result. An intersection of available_intents and allowed_intents (See: local_config.proto), is shown to the user.
  *   `businessType` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType.t`, *default:* `nil`) - Bitset of business types this result falls into. Many fields in this message may be unset - expect good coverage for restaurants and hotels for now, but not for other verticals.
  *   `country` (*type:* `String.t`, *default:* `nil`) - 
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - The two-letter ISO 3166-1 country code of this result. Generated by FindFeatureCountryCode http://google3/geostore/base/public/country.h?l=39&rcl=154898119 so it should always be populated, but technically there is no guarantee.
  *   `distanceMeters` (*type:* `String.t`, *default:* `nil`) - For a directions result, this field will be the distance from the origin to this result using the best measure we have available - the distance along a route, if we have one, or just the crow's flight distance. For a local result, this field will be the crow's flight distance from the user to the result.
  *   `distanceUnits` (*type:* `String.t`, *default:* `nil`) - The standard units of the location where the user is based (not their current location). For example, miles for a user from the US, kilometers for the UK. A US user currently in the UK should have units read in miles.
  *   `externalIds` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerExternalIds.t`, *default:* `nil`) - Various external IDs that we may have for this result.
  *   `featureType` (*type:* `String.t`, *default:* `nil`) - 
  *   `inUserAdminArea1` (*type:* `boolean()`, *default:* `nil`) - If true, this LocalResult is located in the same state as the user's location.
  *   `inUserCountry` (*type:* `boolean()`, *default:* `nil`) - If true, this LocalResult is located in the same country as the user's location.
  *   `inUserLocality` (*type:* `boolean()`, *default:* `nil`) - Whether this result is in the same city or town that the user is in.
  *   `internalFoodOrderingMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.LocalsearchProtoInternalFoodOrderingActionMetadata.t`, *default:* `nil`) - Internal Food ordering action (i.e food ordering via Google) metadata.
  *   `isBusinessChain` (*type:* `boolean()`, *default:* `nil`) - If the original query had a chain intent, and this result is for a business chain.
  *   `locality` (*type:* `String.t`, *default:* `nil`) - City/Town.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the result, extracted from its FeatureProto's name field.
  *   `neighborhood` (*type:* `String.t`, *default:* `nil`) - Neighborhood within a city. This field is not likely to be set for towns or smaller cities.
  *   `resultId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId.t`, *default:* `nil`) - All info we will need to lookup this result in search.
  *   `streetName` (*type:* `String.t`, *default:* `nil`) - 
  *   `streetNumber` (*type:* `String.t`, *default:* `nil`) - 
  *   `synonym` (*type:* `list(String.t)`, *default:* `nil`) - A list of text synonyms the user could use to refer to the result.
  *   `ttsAddress` (*type:* `String.t`, *default:* `nil`) - The address of this result formatted for TTS output. This formatting removes acronyms like 2-letter state codes as they cannot be spoken well.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminArea1 => String.t() | nil,
          :availableIntents =>
            GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalIntentOptions.t() | nil,
          :businessType =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType.t() | nil,
          :country => String.t() | nil,
          :countryCode => String.t() | nil,
          :distanceMeters => String.t() | nil,
          :distanceUnits => String.t() | nil,
          :externalIds =>
            GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerExternalIds.t() | nil,
          :featureType => String.t() | nil,
          :inUserAdminArea1 => boolean() | nil,
          :inUserCountry => boolean() | nil,
          :inUserLocality => boolean() | nil,
          :internalFoodOrderingMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.LocalsearchProtoInternalFoodOrderingActionMetadata.t()
            | nil,
          :isBusinessChain => boolean() | nil,
          :locality => String.t() | nil,
          :name => String.t() | nil,
          :neighborhood => String.t() | nil,
          :resultId =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId.t() | nil,
          :streetName => String.t() | nil,
          :streetNumber => String.t() | nil,
          :synonym => list(String.t()) | nil,
          :ttsAddress => String.t() | nil
        }

  field(:adminArea1)

  field(:availableIntents,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalIntentOptions
  )

  field(:businessType, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalBusinessType)

  field(:country)
  field(:countryCode)
  field(:distanceMeters)
  field(:distanceUnits)
  field(:externalIds, as: GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerExternalIds)
  field(:featureType)
  field(:inUserAdminArea1)
  field(:inUserCountry)
  field(:inUserLocality)

  field(:internalFoodOrderingMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.LocalsearchProtoInternalFoodOrderingActionMetadata
  )

  field(:isBusinessChain)
  field(:locality)
  field(:name)
  field(:neighborhood)
  field(:resultId, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalLocalResultId)
  field(:streetName)
  field(:streetNumber)
  field(:synonym, type: :list)
  field(:ttsAddress)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalResult do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityDialogManagerLocalResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end