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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place do
  @moduledoc """
  All the information representing a Place.

  ## Attributes

  *   `liveMusic` (*type:* `boolean()`, *default:* `nil`) - Place provides live music.
  *   `rating` (*type:* `float()`, *default:* `nil`) - A rating between 1.0 and 5.0, based on user reviews of this place.
  *   `delivery` (*type:* `boolean()`, *default:* `nil`) - Specifies if the business supports delivery.
  *   `attributions` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAttribution.t)`, *default:* `nil`) - A set of data provider that must be shown with this result.
  *   `servesVegetarianFood` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves vegetarian food.
  *   `name` (*type:* `String.t`, *default:* `nil`) - This Place's resource name, in `places/{place_id}` format. Can be used to look up the Place.
  *   `generativeSummary` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGenerativeSummary.t`, *default:* `nil`) - Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. AI-generated summary of the place.
  *   `servesBreakfast` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves breakfast.
  *   `currentSecondaryOpeningHours` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t)`, *default:* `nil`) - Contains an array of entries for the next seven days including information about secondary hours of a business. Secondary hours are different from a business's main hours. For example, a restaurant can specify drive through hours or delivery hours as its secondary hours. This field populates the type subfield, which draws from a predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT) based on the types of the place. This field includes the special_days subfield of all hours, set for dates that have exceptional hours.
  *   `priceLevel` (*type:* `String.t`, *default:* `nil`) - Price level of the place.
  *   `allowsDogs` (*type:* `boolean()`, *default:* `nil`) - Place allows dogs.
  *   `userRatingCount` (*type:* `integer()`, *default:* `nil`) - The total number of reviews (with or without text) for this place.
  *   `servesDessert` (*type:* `boolean()`, *default:* `nil`) - Place serves dessert.
  *   `displayName` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t`, *default:* `nil`) - The localized name of the place, suitable as a short human-readable description. For example, "Google Sydney", "Starbucks", "Pyrmont", etc.
  *   `outdoorSeating` (*type:* `boolean()`, *default:* `nil`) - Place provides outdoor seating.
  *   `servesCocktails` (*type:* `boolean()`, *default:* `nil`) - Place serves cocktails.
  *   `takeout` (*type:* `boolean()`, *default:* `nil`) - Specifies if the business supports takeout.
  *   `paymentOptions` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlacePaymentOptions.t`, *default:* `nil`) - Payment options the place accepts. If a payment option data is not available, the payment option field will be unset.
  *   `pureServiceAreaBusiness` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the place is a pure service area business. Pure service area business is a business that visits or delivers to customers directly but does not serve customers at their business address. For example, businesses like cleaning services or plumbers. Those businesses may not have a physical address or location on Google Maps.
  *   `regularOpeningHours` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t`, *default:* `nil`) - The regular hours of operation. Note that if a place is always open (24 hours), the `close` field will not be set. Clients can rely on always open (24 hours) being represented as an [`open`](https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#Period) period containing [`day`](https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#Point) with value `0`, [`hour`](https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#Point) with value `0`, and [`minute`](https://developers.google.com/maps/documentation/places/web-service/reference/rest/v1/places#Point) with value `0`.
  *   `shortFormattedAddress` (*type:* `String.t`, *default:* `nil`) - A short, human-readable address for this place.
  *   `internationalPhoneNumber` (*type:* `String.t`, *default:* `nil`) - A human-readable phone number for the place, in international format.
  *   `servesBeer` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves beer.
  *   `subDestinations` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceSubDestination.t)`, *default:* `nil`) - A list of sub-destinations related to the place.
  *   `editorialSummary` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t`, *default:* `nil`) - Contains a summary of the place. A summary is comprised of a textual overview, and also includes the language code for these if applicable. Summary text must be presented as-is and can not be modified or altered.
  *   `googleMapsUri` (*type:* `String.t`, *default:* `nil`) - A URL providing more information about this place.
  *   `areaSummary` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary.t`, *default:* `nil`) - Experimental: See https://developers.google.com/maps/documentation/places/web-service/experimental/places-generative for more details. AI-generated summary of the area that the place is in.
  *   `currentOpeningHours` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t`, *default:* `nil`) - The hours of operation for the next seven days (including today). The time period starts at midnight on the date of the request and ends at 11:59 pm six days later. This field includes the special_days subfield of all hours, set for dates that have exceptional hours.
  *   `reviews` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review.t)`, *default:* `nil`) - List of reviews about this place, sorted by relevance. A maximum of 5 reviews can be returned.
  *   `restroom` (*type:* `boolean()`, *default:* `nil`) - Place has restroom.
  *   `goodForChildren` (*type:* `boolean()`, *default:* `nil`) - Place is good for children.
  *   `goodForGroups` (*type:* `boolean()`, *default:* `nil`) - Place accommodates groups.
  *   `addressComponents` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAddressComponent.t)`, *default:* `nil`) - Repeated components for each locality level. Note the following facts about the address_components[] array: - The array of address components may contain more components than the formatted_address. - The array does not necessarily include all the political entities that contain an address, apart from those included in the formatted_address. To retrieve all the political entities that contain a specific address, you should use reverse geocoding, passing the latitude/longitude of the address as a parameter to the request. - The format of the response is not guaranteed to remain the same between requests. In particular, the number of address_components varies based on the address requested and can change over time for the same address. A component can change position in the array. The type of the component can change. A particular component may be missing in a later response.
  *   `dineIn` (*type:* `boolean()`, *default:* `nil`) - Specifies if the business supports indoor or outdoor seating options.
  *   `location` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLatLng.t`, *default:* `nil`) - The position of this place.
  *   `nationalPhoneNumber` (*type:* `String.t`, *default:* `nil`) - A human-readable phone number for the place, in national format.
  *   `plusCode` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlacePlusCode.t`, *default:* `nil`) - Plus code of the place location lat/long.
  *   `servesBrunch` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves brunch.
  *   `viewport` (*type:* `GoogleApi.Places.V1.Model.GoogleGeoTypeViewport.t`, *default:* `nil`) - A viewport suitable for displaying the place on an average-sized map. This viewport should not be used as the physical boundary or the service area of the business.
  *   `websiteUri` (*type:* `String.t`, *default:* `nil`) - The authoritative website for this place, e.g. a business' homepage. Note that for places that are part of a chain (e.g. an IKEA store), this will usually be the website for the individual store, not the overall chain.
  *   `utcOffsetMinutes` (*type:* `integer()`, *default:* `nil`) - Number of minutes this place's timezone is currently offset from UTC. This is expressed in minutes to support timezones that are offset by fractions of an hour, e.g. X hours and 15 minutes.
  *   `businessStatus` (*type:* `String.t`, *default:* `nil`) - The business status for the place.
  *   `menuForChildren` (*type:* `boolean()`, *default:* `nil`) - Place has a children's menu.
  *   `postalAddress` (*type:* `GoogleApi.Places.V1.Model.GoogleTypePostalAddress.t`, *default:* `nil`) - The address in postal address format.
  *   `regularSecondaryOpeningHours` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t)`, *default:* `nil`) - Contains an array of entries for information about regular secondary hours of a business. Secondary hours are different from a business's main hours. For example, a restaurant can specify drive through hours or delivery hours as its secondary hours. This field populates the type subfield, which draws from a predefined list of opening hours types (such as DRIVE_THROUGH, PICKUP, or TAKEOUT) based on the types of the place.
  *   `curbsidePickup` (*type:* `boolean()`, *default:* `nil`) - Specifies if the business supports curbside pickup.
  *   `evChargeOptions` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1EVChargeOptions.t`, *default:* `nil`) - Information of ev charging options.
  *   `servesLunch` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves lunch.
  *   `servesWine` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves wine.
  *   `goodForWatchingSports` (*type:* `boolean()`, *default:* `nil`) - Place is suitable for watching sports.
  *   `fuelOptions` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1FuelOptions.t`, *default:* `nil`) - The most recent information about fuel options in a gas station. This information is updated regularly.
  *   `addressDescriptor` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptor.t`, *default:* `nil`) - The address descriptor of the place. Address descriptors include additional information that help describe a location using landmarks and areas. See address descriptor regional coverage in https://developers.google.com/maps/documentation/geocoding/address-descriptors/coverage.
  *   `formattedAddress` (*type:* `String.t`, *default:* `nil`) - A full, human-readable address for this place.
  *   `photos` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo.t)`, *default:* `nil`) - Information (including references) about photos of this place. A maximum of 10 photos can be returned.
  *   `reservable` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place supports reservations.
  *   `timeZone` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeTimeZone.t`, *default:* `nil`) - IANA Time Zone Database time zone. For example "America/New_York".
  *   `iconMaskBaseUri` (*type:* `String.t`, *default:* `nil`) - A truncated URL to an icon mask. User can access different icon type by appending type suffix to the end (eg, ".svg" or ".png").
  *   `servesDinner` (*type:* `boolean()`, *default:* `nil`) - Specifies if the place serves dinner.
  *   `primaryType` (*type:* `String.t`, *default:* `nil`) - The primary type of the given result. This type must one of the Places API supported types. For example, "restaurant", "cafe", "airport", etc. A place can only have a single primary type. For the complete list of possible values, see Table A and Table B at https://developers.google.com/maps/documentation/places/web-service/place-types
  *   `accessibilityOptions` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions.t`, *default:* `nil`) - Information about the accessibility options a place offers.
  *   `types` (*type:* `list(String.t)`, *default:* `nil`) - A set of type tags for this result. For example, "political" and "locality". For the complete list of possible values, see Table A and Table B at https://developers.google.com/maps/documentation/places/web-service/place-types
  *   `servesCoffee` (*type:* `boolean()`, *default:* `nil`) - Place serves coffee.
  *   `iconBackgroundColor` (*type:* `String.t`, *default:* `nil`) - Background color for icon_mask in hex format, e.g. #909CE1.
  *   `containingPlaces` (*type:* `list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceContainingPlace.t)`, *default:* `nil`) - List of places in which the current place is located.
  *   `primaryTypeDisplayName` (*type:* `GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t`, *default:* `nil`) - The display name of the primary type, localized to the request language if applicable. For the complete list of possible values, see Table A and Table B at https://developers.google.com/maps/documentation/places/web-service/place-types
  *   `parkingOptions` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceParkingOptions.t`, *default:* `nil`) - Options of parking provided by the place.
  *   `adrFormatAddress` (*type:* `String.t`, *default:* `nil`) - The place's address in adr microformat: http://microformats.org/wiki/adr.
  *   `priceRange` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PriceRange.t`, *default:* `nil`) - The price range associated with a Place.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique identifier of a place.
  *   `googleMapsLinks` (*type:* `GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks.t`, *default:* `nil`) - Links to trigger different Google Maps actions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :liveMusic => boolean() | nil,
          :rating => float() | nil,
          :delivery => boolean() | nil,
          :attributions =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAttribution.t()) | nil,
          :servesVegetarianFood => boolean() | nil,
          :name => String.t() | nil,
          :generativeSummary =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGenerativeSummary.t() | nil,
          :servesBreakfast => boolean() | nil,
          :currentSecondaryOpeningHours =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t()) | nil,
          :priceLevel => String.t() | nil,
          :allowsDogs => boolean() | nil,
          :userRatingCount => integer() | nil,
          :servesDessert => boolean() | nil,
          :displayName => GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t() | nil,
          :outdoorSeating => boolean() | nil,
          :servesCocktails => boolean() | nil,
          :takeout => boolean() | nil,
          :paymentOptions =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlacePaymentOptions.t() | nil,
          :pureServiceAreaBusiness => boolean() | nil,
          :regularOpeningHours =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t() | nil,
          :shortFormattedAddress => String.t() | nil,
          :internationalPhoneNumber => String.t() | nil,
          :servesBeer => boolean() | nil,
          :subDestinations =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceSubDestination.t()) | nil,
          :editorialSummary => GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t() | nil,
          :googleMapsUri => String.t() | nil,
          :areaSummary => GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary.t() | nil,
          :currentOpeningHours =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t() | nil,
          :reviews => list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review.t()) | nil,
          :restroom => boolean() | nil,
          :goodForChildren => boolean() | nil,
          :goodForGroups => boolean() | nil,
          :addressComponents =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAddressComponent.t()) | nil,
          :dineIn => boolean() | nil,
          :location => GoogleApi.Places.V1.Model.GoogleTypeLatLng.t() | nil,
          :nationalPhoneNumber => String.t() | nil,
          :plusCode => GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlacePlusCode.t() | nil,
          :servesBrunch => boolean() | nil,
          :viewport => GoogleApi.Places.V1.Model.GoogleGeoTypeViewport.t() | nil,
          :websiteUri => String.t() | nil,
          :utcOffsetMinutes => integer() | nil,
          :businessStatus => String.t() | nil,
          :menuForChildren => boolean() | nil,
          :postalAddress => GoogleApi.Places.V1.Model.GoogleTypePostalAddress.t() | nil,
          :regularSecondaryOpeningHours =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours.t()) | nil,
          :curbsidePickup => boolean() | nil,
          :evChargeOptions =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1EVChargeOptions.t() | nil,
          :servesLunch => boolean() | nil,
          :servesWine => boolean() | nil,
          :goodForWatchingSports => boolean() | nil,
          :fuelOptions => GoogleApi.Places.V1.Model.GoogleMapsPlacesV1FuelOptions.t() | nil,
          :addressDescriptor =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptor.t() | nil,
          :formattedAddress => String.t() | nil,
          :photos => list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo.t()) | nil,
          :reservable => boolean() | nil,
          :timeZone => GoogleApi.Places.V1.Model.GoogleTypeTimeZone.t() | nil,
          :iconMaskBaseUri => String.t() | nil,
          :servesDinner => boolean() | nil,
          :primaryType => String.t() | nil,
          :accessibilityOptions =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions.t() | nil,
          :types => list(String.t()) | nil,
          :servesCoffee => boolean() | nil,
          :iconBackgroundColor => String.t() | nil,
          :containingPlaces =>
            list(GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceContainingPlace.t()) | nil,
          :primaryTypeDisplayName => GoogleApi.Places.V1.Model.GoogleTypeLocalizedText.t() | nil,
          :parkingOptions =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceParkingOptions.t() | nil,
          :adrFormatAddress => String.t() | nil,
          :priceRange => GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PriceRange.t() | nil,
          :id => String.t() | nil,
          :googleMapsLinks =>
            GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks.t() | nil
        }

  field(:liveMusic)
  field(:rating)
  field(:delivery)

  field(:attributions,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAttribution,
    type: :list
  )

  field(:servesVegetarianFood)
  field(:name)

  field(:generativeSummary, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGenerativeSummary)

  field(:servesBreakfast)

  field(:currentSecondaryOpeningHours,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours,
    type: :list
  )

  field(:priceLevel)
  field(:allowsDogs)
  field(:userRatingCount)
  field(:servesDessert)
  field(:displayName, as: GoogleApi.Places.V1.Model.GoogleTypeLocalizedText)
  field(:outdoorSeating)
  field(:servesCocktails)
  field(:takeout)
  field(:paymentOptions, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlacePaymentOptions)
  field(:pureServiceAreaBusiness)
  field(:regularOpeningHours, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours)
  field(:shortFormattedAddress)
  field(:internationalPhoneNumber)
  field(:servesBeer)

  field(:subDestinations,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceSubDestination,
    type: :list
  )

  field(:editorialSummary, as: GoogleApi.Places.V1.Model.GoogleTypeLocalizedText)
  field(:googleMapsUri)
  field(:areaSummary, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAreaSummary)
  field(:currentOpeningHours, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours)
  field(:reviews, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Review, type: :list)
  field(:restroom)
  field(:goodForChildren)
  field(:goodForGroups)

  field(:addressComponents,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAddressComponent,
    type: :list
  )

  field(:dineIn)
  field(:location, as: GoogleApi.Places.V1.Model.GoogleTypeLatLng)
  field(:nationalPhoneNumber)
  field(:plusCode, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlacePlusCode)
  field(:servesBrunch)
  field(:viewport, as: GoogleApi.Places.V1.Model.GoogleGeoTypeViewport)
  field(:websiteUri)
  field(:utcOffsetMinutes)
  field(:businessStatus)
  field(:menuForChildren)
  field(:postalAddress, as: GoogleApi.Places.V1.Model.GoogleTypePostalAddress)

  field(:regularSecondaryOpeningHours,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceOpeningHours,
    type: :list
  )

  field(:curbsidePickup)
  field(:evChargeOptions, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1EVChargeOptions)
  field(:servesLunch)
  field(:servesWine)
  field(:goodForWatchingSports)
  field(:fuelOptions, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1FuelOptions)
  field(:addressDescriptor, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1AddressDescriptor)
  field(:formattedAddress)
  field(:photos, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Photo, type: :list)
  field(:reservable)
  field(:timeZone, as: GoogleApi.Places.V1.Model.GoogleTypeTimeZone)
  field(:iconMaskBaseUri)
  field(:servesDinner)
  field(:primaryType)

  field(:accessibilityOptions,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceAccessibilityOptions
  )

  field(:types, type: :list)
  field(:servesCoffee)
  field(:iconBackgroundColor)

  field(:containingPlaces,
    as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceContainingPlace,
    type: :list
  )

  field(:primaryTypeDisplayName, as: GoogleApi.Places.V1.Model.GoogleTypeLocalizedText)
  field(:parkingOptions, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceParkingOptions)
  field(:adrFormatAddress)
  field(:priceRange, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PriceRange)
  field(:id)
  field(:googleMapsLinks, as: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1Place do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
