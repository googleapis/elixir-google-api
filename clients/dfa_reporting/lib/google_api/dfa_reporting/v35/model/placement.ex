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

defmodule GoogleApi.DFAReporting.V35.Model.Placement do
  @moduledoc """
  Contains properties of a placement.

  ## Attributes

  *   `contentCategoryId` (*type:* `String.t`, *default:* `nil`) - ID of the content category assigned to this placement.
  *   `additionalSizes` (*type:* `list(GoogleApi.DFAReporting.V35.Model.Size.t)`, *default:* `nil`) - Additional sizes associated with this placement. When inserting or updating a placement, only the size ID field is used.
  *   `externalId` (*type:* `String.t`, *default:* `nil`) - External ID for this placement.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this placement. This field can be left blank.
  *   `size` (*type:* `GoogleApi.DFAReporting.V35.Model.Size.t`, *default:* `nil`) - Size associated with this placement. When inserting or updating a placement, only the size ID field is used. This field is required on insertion.
  *   `keyName` (*type:* `String.t`, *default:* `nil`) - Key name of this placement. This is a read-only, auto-generated field.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this placement. This field can be left blank.
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V35.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this placement. This is a read-only field.
  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this placement. This field can be left blank.
  *   `advertiserIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.
  *   `publisherUpdateInfo` (*type:* `GoogleApi.DFAReporting.V35.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the last publisher update. This is a read-only field.
  *   `createInfo` (*type:* `GoogleApi.DFAReporting.V35.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the creation of this placement. This is a read-only field.
  *   `adBlockingOptOut` (*type:* `boolean()`, *default:* `nil`) - Whether this placement opts out of ad blocking. When true, ad blocking is disabled for this placement. When false, the campaign and site settings take effect.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#placement".
  *   `lookbackConfiguration` (*type:* `GoogleApi.DFAReporting.V35.Model.LookbackConfiguration.t`, *default:* `nil`) - Lookback window settings for this placement.
  *   `campaignId` (*type:* `String.t`, *default:* `nil`) - Campaign ID of this placement. This field is a required field on insertion.
  *   `placementGroupId` (*type:* `String.t`, *default:* `nil`) - ID of this placement's group, if applicable.
  *   `vpaidAdapterChoice` (*type:* `String.t`, *default:* `nil`) - VPAID adapter setting for this placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to this placement. *Note:* Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this placement.This is a required field and must be less than or equal to 512 characters long.
  *   `campaignIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the campaign. This is a read-only, auto-generated field.
  *   `videoSettings` (*type:* `GoogleApi.DFAReporting.V35.Model.VideoSettings.t`, *default:* `nil`) - A collection of settings which affect video creatives served through this placement. Applicable to placements with IN_STREAM_VIDEO compatibility.
  *   `placementGroupIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the placement group. This is a read-only, auto-generated field.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Third-party placement status.
  *   `primary` (*type:* `boolean()`, *default:* `nil`) - Whether this placement is the primary placement of a roadblock (placement group). You cannot change this field from true to false. Setting this field to true will automatically set the primary field on the original primary placement of the roadblock to false, and it will automatically set the roadblock's primaryPlacementId field to the ID of this placement.
  *   `archived` (*type:* `boolean()`, *default:* `nil`) - Whether this placement is archived.
  *   `idDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of this placement. This is a read-only, auto-generated field.
  *   `tagSetting` (*type:* `GoogleApi.DFAReporting.V35.Model.TagSetting.t`, *default:* `nil`) - Tag settings for this placement.
  *   `siteIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the site. This is a read-only, auto-generated field.
  *   `compatibility` (*type:* `String.t`, *default:* `nil`) - Placement compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering on desktop, on mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP_INTERSTITIAL are no longer allowed for new placement insertions. Instead, use DISPLAY or DISPLAY_INTERSTITIAL. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. This field is required on insertion.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this placement. This is a read-only, auto-generated field.
  *   `paymentSource` (*type:* `String.t`, *default:* `nil`) - Payment source for this placement. This is a required field that is read-only after insertion.
  *   `partnerWrappingData` (*type:* `GoogleApi.DFAReporting.V35.Model.MeasurementPartnerWrappingData.t`, *default:* `nil`) - Measurement partner provided settings for a wrapped placement.
  *   `siteId` (*type:* `String.t`, *default:* `nil`) - Site ID associated with this placement. On insert, you must set either this field or the directorySiteId field to specify the site associated with this placement. This is a required field that is read-only after insertion.
  *   `paymentApproved` (*type:* `boolean()`, *default:* `nil`) - Whether payment was approved for this placement. This is a read-only field relevant only to publisher-paid placements.
  *   `sslRequired` (*type:* `boolean()`, *default:* `nil`) - Whether creatives assigned to this placement must be SSL-compliant.
  *   `placementStrategyId` (*type:* `String.t`, *default:* `nil`) - ID of the placement strategy assigned to this placement.
  *   `pricingSchedule` (*type:* `GoogleApi.DFAReporting.V35.Model.PricingSchedule.t`, *default:* `nil`) - Pricing schedule of this placement. This field is required on insertion, specifically subfields startDate, endDate and pricingType.
  *   `wrappingOptOut` (*type:* `boolean()`, *default:* `nil`) - Whether this placement opts out of tag wrapping.
  *   `videoActiveViewOptOut` (*type:* `boolean()`, *default:* `nil`) - Whether Verification and ActiveView are disabled for in-stream video creatives for this placement. The same setting videoActiveViewOptOut exists on the site level -- the opt out occurs if either of these settings are true. These settings are distinct from DirectorySites.settings.activeViewOptOut or Sites.siteSettings.activeViewOptOut which only apply to display ads. However, Accounts.activeViewOptOut opts out both video traffic, as well as display ads, from Verification and ActiveView.
  *   `directorySiteId` (*type:* `String.t`, *default:* `nil`) - Directory site ID of this placement. On insert, you must set either this field or the siteId field to specify the site associated with this placement. This is a required field that is read-only after insertion.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Comments for this placement.
  *   `tagFormats` (*type:* `list(String.t)`, *default:* `nil`) - Tag formats to generate for this placement. This field is required on insertion. Acceptable values are: - "PLACEMENT_TAG_STANDARD" - "PLACEMENT_TAG_IFRAME_JAVASCRIPT" - "PLACEMENT_TAG_IFRAME_ILAYER" - "PLACEMENT_TAG_INTERNAL_REDIRECT" - "PLACEMENT_TAG_JAVASCRIPT" - "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT" - "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT" - "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT" - "PLACEMENT_TAG_CLICK_COMMANDS" - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH" - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3" - "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4" - "PLACEMENT_TAG_TRACKING" - "PLACEMENT_TAG_TRACKING_IFRAME" - "PLACEMENT_TAG_TRACKING_JAVASCRIPT" 
  *   `directorySiteIdDimensionValue` (*type:* `GoogleApi.DFAReporting.V35.Model.DimensionValue.t`, *default:* `nil`) - Dimension value for the ID of the directory site. This is a read-only, auto-generated field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentCategoryId => String.t() | nil,
          :additionalSizes => list(GoogleApi.DFAReporting.V35.Model.Size.t()) | nil,
          :externalId => String.t() | nil,
          :advertiserId => String.t() | nil,
          :size => GoogleApi.DFAReporting.V35.Model.Size.t() | nil,
          :keyName => String.t() | nil,
          :subaccountId => String.t() | nil,
          :lastModifiedInfo => GoogleApi.DFAReporting.V35.Model.LastModifiedInfo.t() | nil,
          :accountId => String.t() | nil,
          :advertiserIdDimensionValue =>
            GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :publisherUpdateInfo => GoogleApi.DFAReporting.V35.Model.LastModifiedInfo.t() | nil,
          :createInfo => GoogleApi.DFAReporting.V35.Model.LastModifiedInfo.t() | nil,
          :adBlockingOptOut => boolean() | nil,
          :kind => String.t() | nil,
          :lookbackConfiguration =>
            GoogleApi.DFAReporting.V35.Model.LookbackConfiguration.t() | nil,
          :campaignId => String.t() | nil,
          :placementGroupId => String.t() | nil,
          :vpaidAdapterChoice => String.t() | nil,
          :name => String.t() | nil,
          :campaignIdDimensionValue => GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :videoSettings => GoogleApi.DFAReporting.V35.Model.VideoSettings.t() | nil,
          :placementGroupIdDimensionValue =>
            GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :status => String.t() | nil,
          :primary => boolean() | nil,
          :archived => boolean() | nil,
          :idDimensionValue => GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :tagSetting => GoogleApi.DFAReporting.V35.Model.TagSetting.t() | nil,
          :siteIdDimensionValue => GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil,
          :compatibility => String.t() | nil,
          :id => String.t() | nil,
          :paymentSource => String.t() | nil,
          :partnerWrappingData =>
            GoogleApi.DFAReporting.V35.Model.MeasurementPartnerWrappingData.t() | nil,
          :siteId => String.t() | nil,
          :paymentApproved => boolean() | nil,
          :sslRequired => boolean() | nil,
          :placementStrategyId => String.t() | nil,
          :pricingSchedule => GoogleApi.DFAReporting.V35.Model.PricingSchedule.t() | nil,
          :wrappingOptOut => boolean() | nil,
          :videoActiveViewOptOut => boolean() | nil,
          :directorySiteId => String.t() | nil,
          :comment => String.t() | nil,
          :tagFormats => list(String.t()) | nil,
          :directorySiteIdDimensionValue =>
            GoogleApi.DFAReporting.V35.Model.DimensionValue.t() | nil
        }

  field(:contentCategoryId)
  field(:additionalSizes, as: GoogleApi.DFAReporting.V35.Model.Size, type: :list)
  field(:externalId)
  field(:advertiserId)
  field(:size, as: GoogleApi.DFAReporting.V35.Model.Size)
  field(:keyName)
  field(:subaccountId)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V35.Model.LastModifiedInfo)
  field(:accountId)
  field(:advertiserIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:publisherUpdateInfo, as: GoogleApi.DFAReporting.V35.Model.LastModifiedInfo)
  field(:createInfo, as: GoogleApi.DFAReporting.V35.Model.LastModifiedInfo)
  field(:adBlockingOptOut)
  field(:kind)
  field(:lookbackConfiguration, as: GoogleApi.DFAReporting.V35.Model.LookbackConfiguration)
  field(:campaignId)
  field(:placementGroupId)
  field(:vpaidAdapterChoice)
  field(:name)
  field(:campaignIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:videoSettings, as: GoogleApi.DFAReporting.V35.Model.VideoSettings)
  field(:placementGroupIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:status)
  field(:primary)
  field(:archived)
  field(:idDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:tagSetting, as: GoogleApi.DFAReporting.V35.Model.TagSetting)
  field(:siteIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
  field(:compatibility)
  field(:id)
  field(:paymentSource)
  field(:partnerWrappingData, as: GoogleApi.DFAReporting.V35.Model.MeasurementPartnerWrappingData)
  field(:siteId)
  field(:paymentApproved)
  field(:sslRequired)
  field(:placementStrategyId)
  field(:pricingSchedule, as: GoogleApi.DFAReporting.V35.Model.PricingSchedule)
  field(:wrappingOptOut)
  field(:videoActiveViewOptOut)
  field(:directorySiteId)
  field(:comment)
  field(:tagFormats, type: :list)
  field(:directorySiteIdDimensionValue, as: GoogleApi.DFAReporting.V35.Model.DimensionValue)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.Placement do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.Placement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.Placement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
