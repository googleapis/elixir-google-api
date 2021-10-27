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

defmodule GoogleApi.Content.V2.Model.Product do
  @moduledoc """
   Required product attributes are primarily defined by the products data specification. See the Products Data Specification Help Center article for information. Product data. After inserting, updating, or deleting a product, it may take several minutes before changes take effect.

  ## Attributes

  *   `sizes` (*type:* `list(String.t)`, *default:* `nil`) - Size of the item. Only one value is allowed. For variants with different sizes, insert a separate product for each size with the same `itemGroupId` value (see size definition).
  *   `identifierExists` (*type:* `boolean()`, *default:* `nil`) - False when the item does not have unique product identifiers appropriate to its category, such as GTIN, MPN, and brand. Required according to the Unique Product Identifier Rules for all target countries except for Canada.
  *   `adult` (*type:* `boolean()`, *default:* `nil`) - Should be set to true if the item is targeted towards adults.
  *   `unitPricingBaseMeasure` (*type:* `GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure.t`, *default:* `nil`) - The preference of the denominator of the unit price.
  *   `productType` (*type:* `String.t`, *default:* `nil`) - Your category of the item (formatted as in products data specification).
  *   `adwordsLabels` (*type:* `list(String.t)`, *default:* `nil`) - Similar to adwords_grouping, but only works on CPC.
  *   `link` (*type:* `String.t`, *default:* `nil`) - URL directly linking to your item's page on your website.
  *   `color` (*type:* `String.t`, *default:* `nil`) - Color of the item.
  *   `itemGroupId` (*type:* `String.t`, *default:* `nil`) - Shared identifier for all variants of the same product.
  *   `maxHandlingTime` (*type:* `String.t`, *default:* `nil`) - Maximal product handling time (in business days).
  *   `offerId` (*type:* `String.t`, *default:* `nil`) - Required. A unique identifier for the item. Leading and trailing whitespaces are stripped and multiple whitespaces are replaced by a single whitespace upon submission. Only valid unicode characters are accepted. See the products feed specification for details. *Note:* Content API methods that operate on products take the REST ID of the product, *not* this identifier.
  *   `aspects` (*type:* `list(GoogleApi.Content.V2.Model.ProductAspect.t)`, *default:* `nil`) - Deprecated. Do not use.
  *   `adwordsGrouping` (*type:* `String.t`, *default:* `nil`) - Used to group items in an arbitrary way. Only for CPA%, discouraged otherwise.
  *   `customLabel1` (*type:* `String.t`, *default:* `nil`) - Custom label 1 for custom grouping of items in a Shopping campaign.
  *   `pattern` (*type:* `String.t`, *default:* `nil`) - The item's pattern (e.g. polka dots).
  *   `mpn` (*type:* `String.t`, *default:* `nil`) - Manufacturer Part Number (MPN) of the item.
  *   `shippingHeight` (*type:* `GoogleApi.Content.V2.Model.ProductShippingDimension.t`, *default:* `nil`) - Height of the item for shipping.
  *   `adwordsRedirect` (*type:* `String.t`, *default:* `nil`) - Allows advertisers to override the item URL when the product is shown within the context of Product Ads.
  *   `taxes` (*type:* `list(GoogleApi.Content.V2.Model.ProductTax.t)`, *default:* `nil`) - Tax information.
  *   `customAttributes` (*type:* `list(GoogleApi.Content.V2.Model.CustomAttribute.t)`, *default:* `nil`) - A list of custom (merchant-provided) attributes. It can also be used for submitting any attribute of the feed specification in its generic form (e.g., `{ "name": "size type", "value": "regular" }`). This is useful for submitting attributes not explicitly exposed by the API, such as additional attributes used for Buy on Google (formerly known as Shopping Actions).
  *   `gender` (*type:* `String.t`, *default:* `nil`) - Target gender of the item. Acceptable values are: - "`female`" - "`male`" - "`unisex`" 
  *   `unitPricingMeasure` (*type:* `GoogleApi.Content.V2.Model.ProductUnitPricingMeasure.t`, *default:* `nil`) - The measure and dimension of an item.
  *   `displayAdsTitle` (*type:* `String.t`, *default:* `nil`) - Title of an item for dynamic remarketing campaigns.
  *   `shippingWidth` (*type:* `GoogleApi.Content.V2.Model.ProductShippingDimension.t`, *default:* `nil`) - Width of the item for shipping.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the item.
  *   `gtin` (*type:* `String.t`, *default:* `nil`) - Global Trade Item Number (GTIN) of the item.
  *   `customGroups` (*type:* `list(GoogleApi.Content.V2.Model.CustomGroup.t)`, *default:* `nil`) - A list of custom (merchant-provided) custom attribute groups.
  *   `displayAdsId` (*type:* `String.t`, *default:* `nil`) - An identifier for an item for dynamic remarketing campaigns.
  *   `displayAdsLink` (*type:* `String.t`, *default:* `nil`) - URL directly to your item's landing page for dynamic remarketing campaigns.
  *   `loyaltyPoints` (*type:* `GoogleApi.Content.V2.Model.LoyaltyPoints.t`, *default:* `nil`) - Loyalty points that users receive after purchasing the item. Japan only.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#product`"
  *   `displayAdsValue` (*type:* `float()`, *default:* `nil`) - Offer margin for dynamic remarketing campaigns.
  *   `shippingLabel` (*type:* `String.t`, *default:* `nil`) - The shipping label of the product, used to group product in account-level shipping rules.
  *   `sizeSystem` (*type:* `String.t`, *default:* `nil`) - System in which the size is specified. Recommended for apparel items. Acceptable values are: - "`AU`" - "`BR`" - "`CN`" - "`DE`" - "`EU`" - "`FR`" - "`IT`" - "`JP`" - "`MEX`" - "`UK`" - "`US`" 
  *   `salePrice` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Advertised sale price of the item.
  *   `multipack` (*type:* `String.t`, *default:* `nil`) - The number of identical products in a merchant-defined multipack.
  *   `onlineOnly` (*type:* `boolean()`, *default:* `nil`) - Deprecated.
  *   `installment` (*type:* `GoogleApi.Content.V2.Model.Installment.t`, *default:* `nil`) - Number and amount of installments to pay for an item.
  *   `additionalProductTypes` (*type:* `list(String.t)`, *default:* `nil`) - Additional categories of the item (formatted as in products data specification).
  *   `costOfGoodsSold` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Cost of goods sold. Used for gross profit reporting.
  *   `destinations` (*type:* `list(GoogleApi.Content.V2.Model.ProductDestination.t)`, *default:* `nil`) - Specifies the intended destinations for the product.
  *   `validatedDestinations` (*type:* `list(String.t)`, *default:* `nil`) - Deprecated. The read-only list of intended destinations which passed validation.
  *   `shipping` (*type:* `list(GoogleApi.Content.V2.Model.ProductShipping.t)`, *default:* `nil`) - Shipping rules.
  *   `additionalImageLinks` (*type:* `list(String.t)`, *default:* `nil`) - Additional URLs of images of the item.
  *   `sizeType` (*type:* `String.t`, *default:* `nil`) - The cut of the item. Recommended for apparel items. Acceptable values are: - "`big and tall`" - "`maternity`" - "`oversize`" - "`petite`" - "`plus`" - "`regular`" 
  *   `mobileLink` (*type:* `String.t`, *default:* `nil`) - URL for the mobile-optimized version of your item's landing page.
  *   `isBundle` (*type:* `boolean()`, *default:* `nil`) - Whether the item is a merchant-defined bundle. A bundle is a custom grouping of different products sold by a merchant for a single price.
  *   `googleProductCategory` (*type:* `String.t`, *default:* `nil`) - Google's category of the item (see [Google product taxonomy](https://support.google.com/merchants/answer/1705911)). When querying products, this field will contain the user provided value. There is currently no way to get back the auto assigned google product categories through the API.
  *   `material` (*type:* `String.t`, *default:* `nil`) - The material of which the item is made.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Condition or state of the item. Acceptable values are: - "`new`" - "`refurbished`" - "`used`" 
  *   `expirationDate` (*type:* `String.t`, *default:* `nil`) - Date on which the item should expire, as specified upon insertion, in ISO 8601 format. The actual expiration date in Google Shopping is exposed in `productstatuses` as `googleExpirationDate` and might be earlier if `expirationDate` is too far in the future.
  *   `salePriceEffectiveDate` (*type:* `String.t`, *default:* `nil`) - Date range during which the item is on sale (see products data specification ).
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Brand of the item.
  *   `customLabel4` (*type:* `String.t`, *default:* `nil`) - Custom label 4 for custom grouping of items in a Shopping campaign.
  *   `minHandlingTime` (*type:* `String.t`, *default:* `nil`) - Minimal product handling time (in business days).
  *   `channel` (*type:* `String.t`, *default:* `nil`) - Required. The item's channel (online or local). Acceptable values are: - "`local`" - "`online`" 
  *   `price` (*type:* `GoogleApi.Content.V2.Model.Price.t`, *default:* `nil`) - Price of the item.
  *   `minEnergyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU. Acceptable values are: - "`A`" - "`A+`" - "`A++`" - "`A+++`" - "`B`" - "`C`" - "`D`" - "`E`" - "`F`" - "`G`" 
  *   `warnings` (*type:* `list(GoogleApi.Content.V2.Model.Error.t)`, *default:* `nil`) - Read-only warnings.
  *   `imageLink` (*type:* `String.t`, *default:* `nil`) - URL of an image of the item.
  *   `ageGroup` (*type:* `String.t`, *default:* `nil`) - Target age group of the item. Acceptable values are: - "`adult`" - "`infant`" - "`kids`" - "`newborn`" - "`toddler`" - "`youngAdult`" 
  *   `customLabel0` (*type:* `String.t`, *default:* `nil`) - Custom label 0 for custom grouping of items in a Shopping campaign.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The REST ID of the product. Content API methods that operate on products take this as their `productId` parameter. The REST ID for a product is of the form channel:contentLanguage: targetCountry: offerId.
  *   `shippingLength` (*type:* `GoogleApi.Content.V2.Model.ProductShippingDimension.t`, *default:* `nil`) - Length of the item for shipping.
  *   `shippingWeight` (*type:* `GoogleApi.Content.V2.Model.ProductShippingWeight.t`, *default:* `nil`) - Weight of the item for shipping.
  *   `displayAdsSimilarIds` (*type:* `list(String.t)`, *default:* `nil`) - Advertiser-specified recommendations.
  *   `customLabel2` (*type:* `String.t`, *default:* `nil`) - Custom label 2 for custom grouping of items in a Shopping campaign.
  *   `sellOnGoogleQuantity` (*type:* `String.t`, *default:* `nil`) - The quantity of the product that is available for selling on Google. Supported only for online products.
  *   `contentLanguage` (*type:* `String.t`, *default:* `nil`) - Required. The two-letter ISO 639-1 language code for the item.
  *   `availability` (*type:* `String.t`, *default:* `nil`) - Availability status of the item. Acceptable values are: - "`in stock`" - "`out of stock`" - "`preorder`" 
  *   `availabilityDate` (*type:* `String.t`, *default:* `nil`) - The day a pre-ordered product becomes available for delivery, in ISO 8601 format.
  *   `canonicalLink` (*type:* `String.t`, *default:* `nil`) - URL for the canonical version of your item's landing page.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the item.
  *   `maxEnergyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU. Acceptable values are: - "`A`" - "`A+`" - "`A++`" - "`A+++`" - "`B`" - "`C`" - "`D`" - "`E`" - "`F`" - "`G`" 
  *   `customLabel3` (*type:* `String.t`, *default:* `nil`) - Custom label 3 for custom grouping of items in a Shopping campaign.
  *   `energyEfficiencyClass` (*type:* `String.t`, *default:* `nil`) - The energy efficiency class as defined in EU directive 2010/30/EU. Acceptable values are: - "`A`" - "`A+`" - "`A++`" - "`A+++`" - "`B`" - "`C`" - "`D`" - "`E`" - "`F`" - "`G`" 
  *   `promotionIds` (*type:* `list(String.t)`, *default:* `nil`) - The unique ID of a promotion.
  *   `targetCountry` (*type:* `String.t`, *default:* `nil`) - Required. The CLDR territory code for the item.
  *   `source` (*type:* `String.t`, *default:* `nil`) - The source of the offer, i.e., how the offer was created. Acceptable values are: - "`api`" - "`crawl`" - "`feed`" 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sizes => list(String.t()) | nil,
          :identifierExists => boolean() | nil,
          :adult => boolean() | nil,
          :unitPricingBaseMeasure =>
            GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure.t() | nil,
          :productType => String.t() | nil,
          :adwordsLabels => list(String.t()) | nil,
          :link => String.t() | nil,
          :color => String.t() | nil,
          :itemGroupId => String.t() | nil,
          :maxHandlingTime => String.t() | nil,
          :offerId => String.t() | nil,
          :aspects => list(GoogleApi.Content.V2.Model.ProductAspect.t()) | nil,
          :adwordsGrouping => String.t() | nil,
          :customLabel1 => String.t() | nil,
          :pattern => String.t() | nil,
          :mpn => String.t() | nil,
          :shippingHeight => GoogleApi.Content.V2.Model.ProductShippingDimension.t() | nil,
          :adwordsRedirect => String.t() | nil,
          :taxes => list(GoogleApi.Content.V2.Model.ProductTax.t()) | nil,
          :customAttributes => list(GoogleApi.Content.V2.Model.CustomAttribute.t()) | nil,
          :gender => String.t() | nil,
          :unitPricingMeasure => GoogleApi.Content.V2.Model.ProductUnitPricingMeasure.t() | nil,
          :displayAdsTitle => String.t() | nil,
          :shippingWidth => GoogleApi.Content.V2.Model.ProductShippingDimension.t() | nil,
          :description => String.t() | nil,
          :gtin => String.t() | nil,
          :customGroups => list(GoogleApi.Content.V2.Model.CustomGroup.t()) | nil,
          :displayAdsId => String.t() | nil,
          :displayAdsLink => String.t() | nil,
          :loyaltyPoints => GoogleApi.Content.V2.Model.LoyaltyPoints.t() | nil,
          :kind => String.t() | nil,
          :displayAdsValue => float() | nil,
          :shippingLabel => String.t() | nil,
          :sizeSystem => String.t() | nil,
          :salePrice => GoogleApi.Content.V2.Model.Price.t() | nil,
          :multipack => String.t() | nil,
          :onlineOnly => boolean() | nil,
          :installment => GoogleApi.Content.V2.Model.Installment.t() | nil,
          :additionalProductTypes => list(String.t()) | nil,
          :costOfGoodsSold => GoogleApi.Content.V2.Model.Price.t() | nil,
          :destinations => list(GoogleApi.Content.V2.Model.ProductDestination.t()) | nil,
          :validatedDestinations => list(String.t()) | nil,
          :shipping => list(GoogleApi.Content.V2.Model.ProductShipping.t()) | nil,
          :additionalImageLinks => list(String.t()) | nil,
          :sizeType => String.t() | nil,
          :mobileLink => String.t() | nil,
          :isBundle => boolean() | nil,
          :googleProductCategory => String.t() | nil,
          :material => String.t() | nil,
          :condition => String.t() | nil,
          :expirationDate => String.t() | nil,
          :salePriceEffectiveDate => String.t() | nil,
          :brand => String.t() | nil,
          :customLabel4 => String.t() | nil,
          :minHandlingTime => String.t() | nil,
          :channel => String.t() | nil,
          :price => GoogleApi.Content.V2.Model.Price.t() | nil,
          :minEnergyEfficiencyClass => String.t() | nil,
          :warnings => list(GoogleApi.Content.V2.Model.Error.t()) | nil,
          :imageLink => String.t() | nil,
          :ageGroup => String.t() | nil,
          :customLabel0 => String.t() | nil,
          :id => String.t() | nil,
          :shippingLength => GoogleApi.Content.V2.Model.ProductShippingDimension.t() | nil,
          :shippingWeight => GoogleApi.Content.V2.Model.ProductShippingWeight.t() | nil,
          :displayAdsSimilarIds => list(String.t()) | nil,
          :customLabel2 => String.t() | nil,
          :sellOnGoogleQuantity => String.t() | nil,
          :contentLanguage => String.t() | nil,
          :availability => String.t() | nil,
          :availabilityDate => String.t() | nil,
          :canonicalLink => String.t() | nil,
          :title => String.t() | nil,
          :maxEnergyEfficiencyClass => String.t() | nil,
          :customLabel3 => String.t() | nil,
          :energyEfficiencyClass => String.t() | nil,
          :promotionIds => list(String.t()) | nil,
          :targetCountry => String.t() | nil,
          :source => String.t() | nil
        }

  field(:sizes, type: :list)
  field(:identifierExists)
  field(:adult)
  field(:unitPricingBaseMeasure, as: GoogleApi.Content.V2.Model.ProductUnitPricingBaseMeasure)
  field(:productType)
  field(:adwordsLabels, type: :list)
  field(:link)
  field(:color)
  field(:itemGroupId)
  field(:maxHandlingTime)
  field(:offerId)
  field(:aspects, as: GoogleApi.Content.V2.Model.ProductAspect, type: :list)
  field(:adwordsGrouping)
  field(:customLabel1)
  field(:pattern)
  field(:mpn)
  field(:shippingHeight, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:adwordsRedirect)
  field(:taxes, as: GoogleApi.Content.V2.Model.ProductTax, type: :list)
  field(:customAttributes, as: GoogleApi.Content.V2.Model.CustomAttribute, type: :list)
  field(:gender)
  field(:unitPricingMeasure, as: GoogleApi.Content.V2.Model.ProductUnitPricingMeasure)
  field(:displayAdsTitle)
  field(:shippingWidth, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:description)
  field(:gtin)
  field(:customGroups, as: GoogleApi.Content.V2.Model.CustomGroup, type: :list)
  field(:displayAdsId)
  field(:displayAdsLink)
  field(:loyaltyPoints, as: GoogleApi.Content.V2.Model.LoyaltyPoints)
  field(:kind)
  field(:displayAdsValue)
  field(:shippingLabel)
  field(:sizeSystem)
  field(:salePrice, as: GoogleApi.Content.V2.Model.Price)
  field(:multipack)
  field(:onlineOnly)
  field(:installment, as: GoogleApi.Content.V2.Model.Installment)
  field(:additionalProductTypes, type: :list)
  field(:costOfGoodsSold, as: GoogleApi.Content.V2.Model.Price)
  field(:destinations, as: GoogleApi.Content.V2.Model.ProductDestination, type: :list)
  field(:validatedDestinations, type: :list)
  field(:shipping, as: GoogleApi.Content.V2.Model.ProductShipping, type: :list)
  field(:additionalImageLinks, type: :list)
  field(:sizeType)
  field(:mobileLink)
  field(:isBundle)
  field(:googleProductCategory)
  field(:material)
  field(:condition)
  field(:expirationDate)
  field(:salePriceEffectiveDate)
  field(:brand)
  field(:customLabel4)
  field(:minHandlingTime)
  field(:channel)
  field(:price, as: GoogleApi.Content.V2.Model.Price)
  field(:minEnergyEfficiencyClass)
  field(:warnings, as: GoogleApi.Content.V2.Model.Error, type: :list)
  field(:imageLink)
  field(:ageGroup)
  field(:customLabel0)
  field(:id)
  field(:shippingLength, as: GoogleApi.Content.V2.Model.ProductShippingDimension)
  field(:shippingWeight, as: GoogleApi.Content.V2.Model.ProductShippingWeight)
  field(:displayAdsSimilarIds, type: :list)
  field(:customLabel2)
  field(:sellOnGoogleQuantity)
  field(:contentLanguage)
  field(:availability)
  field(:availabilityDate)
  field(:canonicalLink)
  field(:title)
  field(:maxEnergyEfficiencyClass)
  field(:customLabel3)
  field(:energyEfficiencyClass)
  field(:promotionIds, type: :list)
  field(:targetCountry)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.Product do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
