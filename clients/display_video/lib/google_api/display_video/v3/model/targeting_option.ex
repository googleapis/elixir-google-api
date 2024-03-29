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

defmodule GoogleApi.DisplayVideo.V3.Model.TargetingOption do
  @moduledoc """
  Represents a single targeting option, which is a targetable concept in DV360.

  ## Attributes

  *   `contentOutstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionTargetingOptionDetails.t`, *default:* `nil`) - Content outstream position details.
  *   `contentDurationDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentDurationTargetingOptionDetails.t`, *default:* `nil`) - Content duration resource details.
  *   `videoPlayerSizeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.VideoPlayerSizeTargetingOptionDetails.t`, *default:* `nil`) - Video player size details.
  *   `contentInstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentInstreamPositionTargetingOptionDetails.t`, *default:* `nil`) - Content instream position details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this targeting option.
  *   `authorizedSellerStatusDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AuthorizedSellerStatusTargetingOptionDetails.t`, *default:* `nil`) - Authorized seller status resource details.
  *   `subExchangeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.SubExchangeTargetingOptionDetails.t`, *default:* `nil`) - Sub-exchange details.
  *   `targetingType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of this targeting option.
  *   `householdIncomeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.HouseholdIncomeTargetingOptionDetails.t`, *default:* `nil`) - Household income details.
  *   `poiDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.PoiTargetingOptionDetails.t`, *default:* `nil`) - POI resource details.
  *   `browserDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.BrowserTargetingOptionDetails.t`, *default:* `nil`) - Browser details.
  *   `audioContentTypeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AudioContentTypeTargetingOptionDetails.t`, *default:* `nil`) - Audio content type details.
  *   `userRewardedContentDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.UserRewardedContentTargetingOptionDetails.t`, *default:* `nil`) - User rewarded content details.
  *   `deviceMakeModelDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.DeviceMakeModelTargetingOptionDetails.t`, *default:* `nil`) - Device make and model resource details.
  *   `appCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AppCategoryTargetingOptionDetails.t`, *default:* `nil`) - App category details.
  *   `environmentDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.EnvironmentTargetingOptionDetails.t`, *default:* `nil`) - Environment details.
  *   `nativeContentPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.NativeContentPositionTargetingOptionDetails.t`, *default:* `nil`) - Native content position details.
  *   `targetingOptionId` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for this targeting option. The tuple {`targeting_type`, `targeting_option_id`} will be unique.
  *   `viewabilityDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ViewabilityTargetingOptionDetails.t`, *default:* `nil`) - Viewability resource details.
  *   `contentGenreDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentGenreTargetingOptionDetails.t`, *default:* `nil`) - Content genre resource details.
  *   `geoRegionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.GeoRegionTargetingOptionDetails.t`, *default:* `nil`) - Geographic region resource details.
  *   `businessChainDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.BusinessChainTargetingOptionDetails.t`, *default:* `nil`) - Business chain resource details.
  *   `deviceTypeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.DeviceTypeTargetingOptionDetails.t`, *default:* `nil`) - Device type details.
  *   `sensitiveCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.SensitiveCategoryTargetingOptionDetails.t`, *default:* `nil`) - Sensitive Category details.
  *   `categoryDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.CategoryTargetingOptionDetails.t`, *default:* `nil`) - Category resource details.
  *   `contentStreamTypeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ContentStreamTypeTargetingOptionDetails.t`, *default:* `nil`) - Content stream type resource details.
  *   `languageDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.LanguageTargetingOptionDetails.t`, *default:* `nil`) - Language resource details.
  *   `parentalStatusDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ParentalStatusTargetingOptionDetails.t`, *default:* `nil`) - Parental status details.
  *   `onScreenPositionDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.OnScreenPositionTargetingOptionDetails.t`, *default:* `nil`) - On screen position details.
  *   `carrierAndIspDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.CarrierAndIspTargetingOptionDetails.t`, *default:* `nil`) - Carrier and ISP details.
  *   `exchangeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.ExchangeTargetingOptionDetails.t`, *default:* `nil`) - Exchange details.
  *   `omidDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.OmidTargetingOptionDetails.t`, *default:* `nil`) - Open Measurement enabled inventory details.
  *   `genderDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.GenderTargetingOptionDetails.t`, *default:* `nil`) - Gender details.
  *   `ageRangeDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.AgeRangeTargetingOptionDetails.t`, *default:* `nil`) - Age range details.
  *   `operatingSystemDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.OperatingSystemTargetingOptionDetails.t`, *default:* `nil`) - Operating system resources details.
  *   `digitalContentLabelDetails` (*type:* `GoogleApi.DisplayVideo.V3.Model.DigitalContentLabelTargetingOptionDetails.t`, *default:* `nil`) - Digital content label details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentOutstreamPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionTargetingOptionDetails.t()
            | nil,
          :contentDurationDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentDurationTargetingOptionDetails.t() | nil,
          :videoPlayerSizeDetails =>
            GoogleApi.DisplayVideo.V3.Model.VideoPlayerSizeTargetingOptionDetails.t() | nil,
          :contentInstreamPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentInstreamPositionTargetingOptionDetails.t()
            | nil,
          :name => String.t() | nil,
          :authorizedSellerStatusDetails =>
            GoogleApi.DisplayVideo.V3.Model.AuthorizedSellerStatusTargetingOptionDetails.t() | nil,
          :subExchangeDetails =>
            GoogleApi.DisplayVideo.V3.Model.SubExchangeTargetingOptionDetails.t() | nil,
          :targetingType => String.t() | nil,
          :householdIncomeDetails =>
            GoogleApi.DisplayVideo.V3.Model.HouseholdIncomeTargetingOptionDetails.t() | nil,
          :poiDetails => GoogleApi.DisplayVideo.V3.Model.PoiTargetingOptionDetails.t() | nil,
          :browserDetails =>
            GoogleApi.DisplayVideo.V3.Model.BrowserTargetingOptionDetails.t() | nil,
          :audioContentTypeDetails =>
            GoogleApi.DisplayVideo.V3.Model.AudioContentTypeTargetingOptionDetails.t() | nil,
          :userRewardedContentDetails =>
            GoogleApi.DisplayVideo.V3.Model.UserRewardedContentTargetingOptionDetails.t() | nil,
          :deviceMakeModelDetails =>
            GoogleApi.DisplayVideo.V3.Model.DeviceMakeModelTargetingOptionDetails.t() | nil,
          :appCategoryDetails =>
            GoogleApi.DisplayVideo.V3.Model.AppCategoryTargetingOptionDetails.t() | nil,
          :environmentDetails =>
            GoogleApi.DisplayVideo.V3.Model.EnvironmentTargetingOptionDetails.t() | nil,
          :nativeContentPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.NativeContentPositionTargetingOptionDetails.t() | nil,
          :targetingOptionId => String.t() | nil,
          :viewabilityDetails =>
            GoogleApi.DisplayVideo.V3.Model.ViewabilityTargetingOptionDetails.t() | nil,
          :contentGenreDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentGenreTargetingOptionDetails.t() | nil,
          :geoRegionDetails =>
            GoogleApi.DisplayVideo.V3.Model.GeoRegionTargetingOptionDetails.t() | nil,
          :businessChainDetails =>
            GoogleApi.DisplayVideo.V3.Model.BusinessChainTargetingOptionDetails.t() | nil,
          :deviceTypeDetails =>
            GoogleApi.DisplayVideo.V3.Model.DeviceTypeTargetingOptionDetails.t() | nil,
          :sensitiveCategoryDetails =>
            GoogleApi.DisplayVideo.V3.Model.SensitiveCategoryTargetingOptionDetails.t() | nil,
          :categoryDetails =>
            GoogleApi.DisplayVideo.V3.Model.CategoryTargetingOptionDetails.t() | nil,
          :contentStreamTypeDetails =>
            GoogleApi.DisplayVideo.V3.Model.ContentStreamTypeTargetingOptionDetails.t() | nil,
          :languageDetails =>
            GoogleApi.DisplayVideo.V3.Model.LanguageTargetingOptionDetails.t() | nil,
          :parentalStatusDetails =>
            GoogleApi.DisplayVideo.V3.Model.ParentalStatusTargetingOptionDetails.t() | nil,
          :onScreenPositionDetails =>
            GoogleApi.DisplayVideo.V3.Model.OnScreenPositionTargetingOptionDetails.t() | nil,
          :carrierAndIspDetails =>
            GoogleApi.DisplayVideo.V3.Model.CarrierAndIspTargetingOptionDetails.t() | nil,
          :exchangeDetails =>
            GoogleApi.DisplayVideo.V3.Model.ExchangeTargetingOptionDetails.t() | nil,
          :omidDetails => GoogleApi.DisplayVideo.V3.Model.OmidTargetingOptionDetails.t() | nil,
          :genderDetails =>
            GoogleApi.DisplayVideo.V3.Model.GenderTargetingOptionDetails.t() | nil,
          :ageRangeDetails =>
            GoogleApi.DisplayVideo.V3.Model.AgeRangeTargetingOptionDetails.t() | nil,
          :operatingSystemDetails =>
            GoogleApi.DisplayVideo.V3.Model.OperatingSystemTargetingOptionDetails.t() | nil,
          :digitalContentLabelDetails =>
            GoogleApi.DisplayVideo.V3.Model.DigitalContentLabelTargetingOptionDetails.t() | nil
        }

  field(:contentOutstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentOutstreamPositionTargetingOptionDetails
  )

  field(:contentDurationDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentDurationTargetingOptionDetails
  )

  field(:videoPlayerSizeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.VideoPlayerSizeTargetingOptionDetails
  )

  field(:contentInstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentInstreamPositionTargetingOptionDetails
  )

  field(:name)

  field(:authorizedSellerStatusDetails,
    as: GoogleApi.DisplayVideo.V3.Model.AuthorizedSellerStatusTargetingOptionDetails
  )

  field(:subExchangeDetails, as: GoogleApi.DisplayVideo.V3.Model.SubExchangeTargetingOptionDetails)

  field(:targetingType)

  field(:householdIncomeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.HouseholdIncomeTargetingOptionDetails
  )

  field(:poiDetails, as: GoogleApi.DisplayVideo.V3.Model.PoiTargetingOptionDetails)
  field(:browserDetails, as: GoogleApi.DisplayVideo.V3.Model.BrowserTargetingOptionDetails)

  field(:audioContentTypeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.AudioContentTypeTargetingOptionDetails
  )

  field(:userRewardedContentDetails,
    as: GoogleApi.DisplayVideo.V3.Model.UserRewardedContentTargetingOptionDetails
  )

  field(:deviceMakeModelDetails,
    as: GoogleApi.DisplayVideo.V3.Model.DeviceMakeModelTargetingOptionDetails
  )

  field(:appCategoryDetails, as: GoogleApi.DisplayVideo.V3.Model.AppCategoryTargetingOptionDetails)

  field(:environmentDetails, as: GoogleApi.DisplayVideo.V3.Model.EnvironmentTargetingOptionDetails)

  field(:nativeContentPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.NativeContentPositionTargetingOptionDetails
  )

  field(:targetingOptionId)

  field(:viewabilityDetails, as: GoogleApi.DisplayVideo.V3.Model.ViewabilityTargetingOptionDetails)

  field(:contentGenreDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentGenreTargetingOptionDetails
  )

  field(:geoRegionDetails, as: GoogleApi.DisplayVideo.V3.Model.GeoRegionTargetingOptionDetails)

  field(:businessChainDetails,
    as: GoogleApi.DisplayVideo.V3.Model.BusinessChainTargetingOptionDetails
  )

  field(:deviceTypeDetails, as: GoogleApi.DisplayVideo.V3.Model.DeviceTypeTargetingOptionDetails)

  field(:sensitiveCategoryDetails,
    as: GoogleApi.DisplayVideo.V3.Model.SensitiveCategoryTargetingOptionDetails
  )

  field(:categoryDetails, as: GoogleApi.DisplayVideo.V3.Model.CategoryTargetingOptionDetails)

  field(:contentStreamTypeDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ContentStreamTypeTargetingOptionDetails
  )

  field(:languageDetails, as: GoogleApi.DisplayVideo.V3.Model.LanguageTargetingOptionDetails)

  field(:parentalStatusDetails,
    as: GoogleApi.DisplayVideo.V3.Model.ParentalStatusTargetingOptionDetails
  )

  field(:onScreenPositionDetails,
    as: GoogleApi.DisplayVideo.V3.Model.OnScreenPositionTargetingOptionDetails
  )

  field(:carrierAndIspDetails,
    as: GoogleApi.DisplayVideo.V3.Model.CarrierAndIspTargetingOptionDetails
  )

  field(:exchangeDetails, as: GoogleApi.DisplayVideo.V3.Model.ExchangeTargetingOptionDetails)
  field(:omidDetails, as: GoogleApi.DisplayVideo.V3.Model.OmidTargetingOptionDetails)
  field(:genderDetails, as: GoogleApi.DisplayVideo.V3.Model.GenderTargetingOptionDetails)
  field(:ageRangeDetails, as: GoogleApi.DisplayVideo.V3.Model.AgeRangeTargetingOptionDetails)

  field(:operatingSystemDetails,
    as: GoogleApi.DisplayVideo.V3.Model.OperatingSystemTargetingOptionDetails
  )

  field(:digitalContentLabelDetails,
    as: GoogleApi.DisplayVideo.V3.Model.DigitalContentLabelTargetingOptionDetails
  )
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.TargetingOption do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.TargetingOption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.TargetingOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
