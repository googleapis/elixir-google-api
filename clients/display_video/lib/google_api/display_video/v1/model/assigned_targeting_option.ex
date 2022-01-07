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

defmodule GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption do
  @moduledoc """
  A single assigned targeting option, which defines the state of a targeting option for an entity with targeting settings.

  ## Attributes

  *   `householdIncomeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.HouseholdIncomeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Household income details. This field will be populated when the targeting_type is `TARGETING_TYPE_HOUSEHOLD_INCOME`.
  *   `assignedTargetingOptionId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the assigned targeting option. The ID is only unique within a given resource and targeting type. It may be reused in other contexts.
  *   `userRewardedContentDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.UserRewardedContentAssignedTargetingOptionDetails.t`, *default:* `nil`) - User rewarded content details. This field will be populated when the targeting_type is `TARGETING_TYPE_USER_REWARDED_CONTENT`.
  *   `deviceMakeModelDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DeviceMakeModelAssignedTargetingOptionDetails.t`, *default:* `nil`) - Device make and model details. This field will be populated when the targeting_type is `TARGETING_TYPE_DEVICE_MAKE_MODEL`.
  *   `environmentDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.EnvironmentAssignedTargetingOptionDetails.t`, *default:* `nil`) - Environment details. This field will be populated when the targeting_type is `TARGETING_TYPE_ENVIRONMENT`.
  *   `audioContentTypeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AudioContentTypeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Audio content type details. This field will be populated when the targeting_type is `TARGETING_TYPE_AUDIO_CONTENT_TYPE`.
  *   `languageDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.LanguageAssignedTargetingOptionDetails.t`, *default:* `nil`) - Language details. This field will be populated when the targeting_type is `TARGETING_TYPE_LANGUAGE`.
  *   `appCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AppCategoryAssignedTargetingOptionDetails.t`, *default:* `nil`) - App category details. This field will be populated when the targeting_type is `TARGETING_TYPE_APP_CATEGORY`.
  *   `contentOutstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionAssignedTargetingOptionDetails.t`, *default:* `nil`) - Content outstream position details. This field will be populated when the targeting_type is `TARGETING_TYPE_CONTENT_OUTSTREAM_POSITION`.
  *   `operatingSystemDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.OperatingSystemAssignedTargetingOptionDetails.t`, *default:* `nil`) - Operating system details. This field will be populated when the targeting_type is `TARGETING_TYPE_OPERATING_SYSTEM`.
  *   `keywordDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails.t`, *default:* `nil`) - Keyword details. This field will be populated when the targeting_type is `TARGETING_TYPE_KEYWORD`. A maximum of 5000 direct negative keywords can be assigned to a resource. No limit on number of positive keywords that can be assigned.
  *   `poiDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.PoiAssignedTargetingOptionDetails.t`, *default:* `nil`) - POI details. This field will be populated when the targeting_type is `TARGETING_TYPE_POI`.
  *   `geoRegionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails.t`, *default:* `nil`) - Geographic region details. This field will be populated when the targeting_type is `TARGETING_TYPE_GEO_REGION`.
  *   `ageRangeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AgeRangeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Age range details. This field will be populated when the targeting_type is `TARGETING_TYPE_AGE_RANGE`.
  *   `viewabilityDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails.t`, *default:* `nil`) - Viewability details. This field will be populated when the targeting_type is `TARGETING_TYPE_VIEWABILITY`. You can only target one viewability option per resource.
  *   `deviceTypeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DeviceTypeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Device Type details. This field will be populated when the targeting_type is `TARGETING_TYPE_DEVICE_TYPE`.
  *   `contentInstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ContentInstreamPositionAssignedTargetingOptionDetails.t`, *default:* `nil`) - Content instream position details. This field will be populated when the targeting_type is `TARGETING_TYPE_CONTENT_INSTREAM_POSITION`.
  *   `regionalLocationListDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails.t`, *default:* `nil`) - Regional location list details. This field will be populated when the targeting_type is `TARGETING_TYPE_REGIONAL_LOCATION_LIST`.
  *   `proximityLocationListDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails.t`, *default:* `nil`) - Proximity location list details. This field will be populated when the targeting_type is `TARGETING_TYPE_PROXIMITY_LOCATION_LIST`.
  *   `videoPlayerSizeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Video player size details. This field will be populated when the targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
  *   `parentalStatusDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ParentalStatusAssignedTargetingOptionDetails.t`, *default:* `nil`) - Parental status details. This field will be populated when the targeting_type is `TARGETING_TYPE_PARENTAL_STATUS`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this assigned targeting option.
  *   `inheritance` (*type:* `String.t`, *default:* `nil`) - Output only. The inheritance status of the assigned targeting option.
  *   `thirdPartyVerifierDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ThirdPartyVerifierAssignedTargetingOptionDetails.t`, *default:* `nil`) - Third party verification details. This field will be populated when the targeting_type is `TARGETING_TYPE_THIRD_PARTY_VERIFIER`.
  *   `channelDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails.t`, *default:* `nil`) - Channel details. This field will be populated when the targeting_type is `TARGETING_TYPE_CHANNEL`.
  *   `exchangeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ExchangeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Exchange details. This field will be populated when the targeting_type is `TARGETING_TYPE_EXCHANGE`.
  *   `browserDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.BrowserAssignedTargetingOptionDetails.t`, *default:* `nil`) - Browser details. This field will be populated when the targeting_type is `TARGETING_TYPE_BROWSER`.
  *   `appDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails.t`, *default:* `nil`) - App details. This field will be populated when the targeting_type is `TARGETING_TYPE_APP`.
  *   `targetingType` (*type:* `String.t`, *default:* `nil`) - Output only. Identifies the type of this assigned targeting option.
  *   `negativeKeywordListDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.NegativeKeywordListAssignedTargetingOptionDetails.t`, *default:* `nil`) - Keyword details. This field will be populated when the targeting_type is `TARGETING_TYPE_NEGATIVE_KEYWORD_LIST`. A maximum of 4 negative keyword lists can be assigned to a resource.
  *   `carrierAndIspDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.CarrierAndIspAssignedTargetingOptionDetails.t`, *default:* `nil`) - Carrier and ISP details. This field will be populated when the targeting_type is `TARGETING_TYPE_CARRIER_AND_ISP`.
  *   `authorizedSellerStatusDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AuthorizedSellerStatusAssignedTargetingOptionDetails.t`, *default:* `nil`) - Authorized seller status details. This field will be populated when the targeting_type is `TARGETING_TYPE_AUTHORIZED_SELLER_STATUS`. You can only target one authorized seller status option per resource. If a resource doesn't have an authorized seller status option, all authorized sellers indicated as DIRECT or RESELLER in the ads.txt file are targeted by default.
  *   `digitalContentLabelExclusionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails.t`, *default:* `nil`) - Digital content label details. This field will be populated when the targeting_type is `TARGETING_TYPE_DIGITAL_CONTENT_LABEL_EXCLUSION`. Digital content labels are targeting exclusions. Advertiser level digital content label exclusions, if set, are always applied in serving (even though they aren't visible in resource settings). Resource settings can exclude content labels in addition to advertiser exclusions, but can't override them. A line item won't serve if all the digital content labels are excluded.
  *   `nativeContentPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.NativeContentPositionAssignedTargetingOptionDetails.t`, *default:* `nil`) - Native content position details. This field will be populated when the targeting_type is `TARGETING_TYPE_NATIVE_CONTENT_POSITION`.
  *   `sensitiveCategoryExclusionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.SensitiveCategoryAssignedTargetingOptionDetails.t`, *default:* `nil`) - Sensitive category details. This field will be populated when the targeting_type is `TARGETING_TYPE_SENSITIVE_CATEGORY_EXCLUSION`. Sensitive categories are targeting exclusions. Advertiser level sensitive category exclusions, if set, are always applied in serving (even though they aren't visible in resource settings). Resource settings can exclude sensitive categories in addition to advertiser exclusions, but can't override them.
  *   `businessChainDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.BusinessChainAssignedTargetingOptionDetails.t`, *default:* `nil`) - Business chain details. This field will be populated when the targeting_type is `TARGETING_TYPE_BUSINESS_CHAIN`.
  *   `onScreenPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.OnScreenPositionAssignedTargetingOptionDetails.t`, *default:* `nil`) - On screen position details. This field will be populated when the targeting_type is `TARGETING_TYPE_ON_SCREEN_POSITION`.
  *   `audienceGroupDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AudienceGroupAssignedTargetingOptionDetails.t`, *default:* `nil`) - Audience targeting details. This field will be populated when the targeting_type is `TARGETING_TYPE_AUDIENCE_GROUP`. You can only target one audience group option per resource.
  *   `dayAndTimeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DayAndTimeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Day and time details. This field will be populated when the targeting_type is `TARGETING_TYPE_DAY_AND_TIME`.
  *   `inventorySourceDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.InventorySourceAssignedTargetingOptionDetails.t`, *default:* `nil`) - Inventory source details. This field will be populated when the targeting_type is `TARGETING_TYPE_INVENTORY_SOURCE`.
  *   `genderDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.GenderAssignedTargetingOptionDetails.t`, *default:* `nil`) - Gender details. This field will be populated when the targeting_type is `TARGETING_TYPE_GENDER`.
  *   `categoryDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.CategoryAssignedTargetingOptionDetails.t`, *default:* `nil`) - Category details. This field will be populated when the targeting_type is `TARGETING_TYPE_CATEGORY`. Targeting a category will also target its subcategories. If a category is excluded from targeting and a subcategory is included, the exclusion will take precedence.
  *   `urlDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.UrlAssignedTargetingOptionDetails.t`, *default:* `nil`) - URL details. This field will be populated when the targeting_type is `TARGETING_TYPE_URL`.
  *   `omidDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.OmidAssignedTargetingOptionDetails.t`, *default:* `nil`) - Open Measurement enabled inventory details. This field will be populated when the targeting_type is `TARGETING_TYPE_OMID`.
  *   `inventorySourceGroupDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.InventorySourceGroupAssignedTargetingOptionDetails.t`, *default:* `nil`) - Inventory source group details. This field will be populated when the targeting_type is `TARGETING_TYPE_INVENTORY_SOURCE_GROUP`.
  *   `subExchangeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.SubExchangeAssignedTargetingOptionDetails.t`, *default:* `nil`) - Sub-exchange details. This field will be populated when the targeting_type is `TARGETING_TYPE_SUB_EXCHANGE`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :householdIncomeDetails =>
            GoogleApi.DisplayVideo.V1.Model.HouseholdIncomeAssignedTargetingOptionDetails.t()
            | nil,
          :assignedTargetingOptionId => String.t() | nil,
          :userRewardedContentDetails =>
            GoogleApi.DisplayVideo.V1.Model.UserRewardedContentAssignedTargetingOptionDetails.t()
            | nil,
          :deviceMakeModelDetails =>
            GoogleApi.DisplayVideo.V1.Model.DeviceMakeModelAssignedTargetingOptionDetails.t()
            | nil,
          :environmentDetails =>
            GoogleApi.DisplayVideo.V1.Model.EnvironmentAssignedTargetingOptionDetails.t() | nil,
          :audioContentTypeDetails =>
            GoogleApi.DisplayVideo.V1.Model.AudioContentTypeAssignedTargetingOptionDetails.t()
            | nil,
          :languageDetails =>
            GoogleApi.DisplayVideo.V1.Model.LanguageAssignedTargetingOptionDetails.t() | nil,
          :appCategoryDetails =>
            GoogleApi.DisplayVideo.V1.Model.AppCategoryAssignedTargetingOptionDetails.t() | nil,
          :contentOutstreamPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionAssignedTargetingOptionDetails.t()
            | nil,
          :operatingSystemDetails =>
            GoogleApi.DisplayVideo.V1.Model.OperatingSystemAssignedTargetingOptionDetails.t()
            | nil,
          :keywordDetails =>
            GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails.t() | nil,
          :poiDetails =>
            GoogleApi.DisplayVideo.V1.Model.PoiAssignedTargetingOptionDetails.t() | nil,
          :geoRegionDetails =>
            GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails.t() | nil,
          :ageRangeDetails =>
            GoogleApi.DisplayVideo.V1.Model.AgeRangeAssignedTargetingOptionDetails.t() | nil,
          :viewabilityDetails =>
            GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails.t() | nil,
          :deviceTypeDetails =>
            GoogleApi.DisplayVideo.V1.Model.DeviceTypeAssignedTargetingOptionDetails.t() | nil,
          :contentInstreamPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.ContentInstreamPositionAssignedTargetingOptionDetails.t()
            | nil,
          :regionalLocationListDetails =>
            GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails.t()
            | nil,
          :proximityLocationListDetails =>
            GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails.t()
            | nil,
          :videoPlayerSizeDetails =>
            GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails.t()
            | nil,
          :parentalStatusDetails =>
            GoogleApi.DisplayVideo.V1.Model.ParentalStatusAssignedTargetingOptionDetails.t() | nil,
          :name => String.t() | nil,
          :inheritance => String.t() | nil,
          :thirdPartyVerifierDetails =>
            GoogleApi.DisplayVideo.V1.Model.ThirdPartyVerifierAssignedTargetingOptionDetails.t()
            | nil,
          :channelDetails =>
            GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails.t() | nil,
          :exchangeDetails =>
            GoogleApi.DisplayVideo.V1.Model.ExchangeAssignedTargetingOptionDetails.t() | nil,
          :browserDetails =>
            GoogleApi.DisplayVideo.V1.Model.BrowserAssignedTargetingOptionDetails.t() | nil,
          :appDetails =>
            GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails.t() | nil,
          :targetingType => String.t() | nil,
          :negativeKeywordListDetails =>
            GoogleApi.DisplayVideo.V1.Model.NegativeKeywordListAssignedTargetingOptionDetails.t()
            | nil,
          :carrierAndIspDetails =>
            GoogleApi.DisplayVideo.V1.Model.CarrierAndIspAssignedTargetingOptionDetails.t() | nil,
          :authorizedSellerStatusDetails =>
            GoogleApi.DisplayVideo.V1.Model.AuthorizedSellerStatusAssignedTargetingOptionDetails.t()
            | nil,
          :digitalContentLabelExclusionDetails =>
            GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails.t()
            | nil,
          :nativeContentPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.NativeContentPositionAssignedTargetingOptionDetails.t()
            | nil,
          :sensitiveCategoryExclusionDetails =>
            GoogleApi.DisplayVideo.V1.Model.SensitiveCategoryAssignedTargetingOptionDetails.t()
            | nil,
          :businessChainDetails =>
            GoogleApi.DisplayVideo.V1.Model.BusinessChainAssignedTargetingOptionDetails.t() | nil,
          :onScreenPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.OnScreenPositionAssignedTargetingOptionDetails.t()
            | nil,
          :audienceGroupDetails =>
            GoogleApi.DisplayVideo.V1.Model.AudienceGroupAssignedTargetingOptionDetails.t() | nil,
          :dayAndTimeDetails =>
            GoogleApi.DisplayVideo.V1.Model.DayAndTimeAssignedTargetingOptionDetails.t() | nil,
          :inventorySourceDetails =>
            GoogleApi.DisplayVideo.V1.Model.InventorySourceAssignedTargetingOptionDetails.t()
            | nil,
          :genderDetails =>
            GoogleApi.DisplayVideo.V1.Model.GenderAssignedTargetingOptionDetails.t() | nil,
          :categoryDetails =>
            GoogleApi.DisplayVideo.V1.Model.CategoryAssignedTargetingOptionDetails.t() | nil,
          :urlDetails =>
            GoogleApi.DisplayVideo.V1.Model.UrlAssignedTargetingOptionDetails.t() | nil,
          :omidDetails =>
            GoogleApi.DisplayVideo.V1.Model.OmidAssignedTargetingOptionDetails.t() | nil,
          :inventorySourceGroupDetails =>
            GoogleApi.DisplayVideo.V1.Model.InventorySourceGroupAssignedTargetingOptionDetails.t()
            | nil,
          :subExchangeDetails =>
            GoogleApi.DisplayVideo.V1.Model.SubExchangeAssignedTargetingOptionDetails.t() | nil
        }

  field(:householdIncomeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.HouseholdIncomeAssignedTargetingOptionDetails
  )

  field(:assignedTargetingOptionId)

  field(:userRewardedContentDetails,
    as: GoogleApi.DisplayVideo.V1.Model.UserRewardedContentAssignedTargetingOptionDetails
  )

  field(:deviceMakeModelDetails,
    as: GoogleApi.DisplayVideo.V1.Model.DeviceMakeModelAssignedTargetingOptionDetails
  )

  field(:environmentDetails,
    as: GoogleApi.DisplayVideo.V1.Model.EnvironmentAssignedTargetingOptionDetails
  )

  field(:audioContentTypeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.AudioContentTypeAssignedTargetingOptionDetails
  )

  field(:languageDetails,
    as: GoogleApi.DisplayVideo.V1.Model.LanguageAssignedTargetingOptionDetails
  )

  field(:appCategoryDetails,
    as: GoogleApi.DisplayVideo.V1.Model.AppCategoryAssignedTargetingOptionDetails
  )

  field(:contentOutstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionAssignedTargetingOptionDetails
  )

  field(:operatingSystemDetails,
    as: GoogleApi.DisplayVideo.V1.Model.OperatingSystemAssignedTargetingOptionDetails
  )

  field(:keywordDetails, as: GoogleApi.DisplayVideo.V1.Model.KeywordAssignedTargetingOptionDetails)

  field(:poiDetails, as: GoogleApi.DisplayVideo.V1.Model.PoiAssignedTargetingOptionDetails)

  field(:geoRegionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.GeoRegionAssignedTargetingOptionDetails
  )

  field(:ageRangeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.AgeRangeAssignedTargetingOptionDetails
  )

  field(:viewabilityDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ViewabilityAssignedTargetingOptionDetails
  )

  field(:deviceTypeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.DeviceTypeAssignedTargetingOptionDetails
  )

  field(:contentInstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ContentInstreamPositionAssignedTargetingOptionDetails
  )

  field(:regionalLocationListDetails,
    as: GoogleApi.DisplayVideo.V1.Model.RegionalLocationListAssignedTargetingOptionDetails
  )

  field(:proximityLocationListDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ProximityLocationListAssignedTargetingOptionDetails
  )

  field(:videoPlayerSizeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails
  )

  field(:parentalStatusDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ParentalStatusAssignedTargetingOptionDetails
  )

  field(:name)
  field(:inheritance)

  field(:thirdPartyVerifierDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ThirdPartyVerifierAssignedTargetingOptionDetails
  )

  field(:channelDetails, as: GoogleApi.DisplayVideo.V1.Model.ChannelAssignedTargetingOptionDetails)

  field(:exchangeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ExchangeAssignedTargetingOptionDetails
  )

  field(:browserDetails, as: GoogleApi.DisplayVideo.V1.Model.BrowserAssignedTargetingOptionDetails)

  field(:appDetails, as: GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails)
  field(:targetingType)

  field(:negativeKeywordListDetails,
    as: GoogleApi.DisplayVideo.V1.Model.NegativeKeywordListAssignedTargetingOptionDetails
  )

  field(:carrierAndIspDetails,
    as: GoogleApi.DisplayVideo.V1.Model.CarrierAndIspAssignedTargetingOptionDetails
  )

  field(:authorizedSellerStatusDetails,
    as: GoogleApi.DisplayVideo.V1.Model.AuthorizedSellerStatusAssignedTargetingOptionDetails
  )

  field(:digitalContentLabelExclusionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelAssignedTargetingOptionDetails
  )

  field(:nativeContentPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.NativeContentPositionAssignedTargetingOptionDetails
  )

  field(:sensitiveCategoryExclusionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.SensitiveCategoryAssignedTargetingOptionDetails
  )

  field(:businessChainDetails,
    as: GoogleApi.DisplayVideo.V1.Model.BusinessChainAssignedTargetingOptionDetails
  )

  field(:onScreenPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.OnScreenPositionAssignedTargetingOptionDetails
  )

  field(:audienceGroupDetails,
    as: GoogleApi.DisplayVideo.V1.Model.AudienceGroupAssignedTargetingOptionDetails
  )

  field(:dayAndTimeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.DayAndTimeAssignedTargetingOptionDetails
  )

  field(:inventorySourceDetails,
    as: GoogleApi.DisplayVideo.V1.Model.InventorySourceAssignedTargetingOptionDetails
  )

  field(:genderDetails, as: GoogleApi.DisplayVideo.V1.Model.GenderAssignedTargetingOptionDetails)

  field(:categoryDetails,
    as: GoogleApi.DisplayVideo.V1.Model.CategoryAssignedTargetingOptionDetails
  )

  field(:urlDetails, as: GoogleApi.DisplayVideo.V1.Model.UrlAssignedTargetingOptionDetails)
  field(:omidDetails, as: GoogleApi.DisplayVideo.V1.Model.OmidAssignedTargetingOptionDetails)

  field(:inventorySourceGroupDetails,
    as: GoogleApi.DisplayVideo.V1.Model.InventorySourceGroupAssignedTargetingOptionDetails
  )

  field(:subExchangeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.SubExchangeAssignedTargetingOptionDetails
  )
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.AssignedTargetingOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
