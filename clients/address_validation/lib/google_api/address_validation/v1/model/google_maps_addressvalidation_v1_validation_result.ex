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

defmodule GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ValidationResult do
  @moduledoc """
  The result of validating an address.

  ## Attributes

  *   `address` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address.t`, *default:* `nil`) - Information about the address itself as opposed to the geocode.
  *   `englishLatinAddress` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address.t`, *default:* `nil`) - Preview: This feature is in Preview (pre-GA). Pre-GA products and features might have limited support, and changes to pre-GA products and features might not be compatible with other pre-GA versions. Pre-GA Offerings are covered by the [Google Maps Platform Service Specific Terms](https://cloud.google.com/maps-platform/terms/maps-service-terms). For more information, see the [launch stage descriptions](https://developers.google.com/maps/launch-stages). The address translated to English. Translated addresses are not reusable as API input. The service provides them so that the user can use their native language to confirm or deny the validation of the originally-provided address. If part of the address doesn't have an English translation, the service returns that part in an alternate language that uses a Latin script. See [here](https://developers.google.com/maps/documentation/address-validation/convert-addresses-english) for an explanation of how the alternate language is selected. If part of the address doesn't have any translations or transliterations in a language that uses a Latin script, the service returns that part in the local language associated with the address. Enable this output by using the [google.maps.addressvalidation.v1.LanguageOptions.return_english_latin_address] flag. Note: the [google.maps.addressvalidation.v1.Address.unconfirmed_component_types] field in the `english_latin_address` and the [google.maps.addressvalidation.v1.AddressComponent.confirmation_level] fields in `english_latin_address.address_components` are not populated.
  *   `geocode` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode.t`, *default:* `nil`) - Information about the location and place that the address geocoded to.
  *   `metadata` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressMetadata.t`, *default:* `nil`) - Other information relevant to deliverability. `metadata` is not guaranteed to be fully populated for every address sent to the Address Validation API.
  *   `uspsData` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1UspsData.t`, *default:* `nil`) - Extra deliverability flags provided by USPS. Only provided in region `US` and `PR`.
  *   `verdict` (*type:* `GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict.t`, *default:* `nil`) - Overall verdict flags
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :address =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address.t() | nil,
          :englishLatinAddress =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address.t() | nil,
          :geocode =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode.t() | nil,
          :metadata =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressMetadata.t()
            | nil,
          :uspsData =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1UspsData.t() | nil,
          :verdict =>
            GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict.t() | nil
        }

  field(:address, as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address)

  field(:englishLatinAddress,
    as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Address
  )

  field(:geocode, as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Geocode)

  field(:metadata,
    as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1AddressMetadata
  )

  field(:uspsData, as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1UspsData)
  field(:verdict, as: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1Verdict)
end

defimpl Poison.Decoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ValidationResult do
  def decode(value, options) do
    GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ValidationResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AddressValidation.V1.Model.GoogleMapsAddressvalidationV1ValidationResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
