# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Product do
  @moduledoc """
  Note: this resource requires whitelisting for access. Please contact your account manager for access to Marketplace resources.  A product is a segment of inventory that a seller wishes to sell. It is associated with certain terms and targeting information which helps the buyer know more about the inventory.

  ## Attributes

  - availableEndTime (DateTime.t): The proposed end time for the deal. The field will be truncated to the order of seconds during serving. Defaults to: `null`.
  - availableStartTime (DateTime.t): Inventory availability dates. The start time will be truncated to seconds during serving. Thus, a field specified as 3:23:34.456 (HH:mm:ss.SSS) will be truncated to 3:23:34 when serving. Defaults to: `null`.
  - createTime (DateTime.t): Creation time. Defaults to: `null`.
  - creatorContacts ([ContactInformation]): Optional contact information for the creator of this product. Defaults to: `null`.
  - displayName (String.t): The display name for this product as set by the seller. Defaults to: `null`.
  - hasCreatorSignedOff (boolean()): If the creator has already signed off on the product, then the buyer can finalize the deal by accepting the product as is. When copying to a proposal, if any of the terms are changed, then auto_finalize is automatically set to false. Defaults to: `null`.
  - productId (String.t): The unique ID for the product. Defaults to: `null`.
  - productRevision (String.t): The revision number of the product (auto-assigned by Marketplace). Defaults to: `null`.
  - publisherProfileId (String.t): An ID which can be used by the Publisher Profile API to get more information about the seller that created this product. Defaults to: `null`.
  - seller (Seller): Information about the seller that created this product. Defaults to: `null`.
  - syndicationProduct (String.t): The syndication product associated with the deal. Defaults to: `null`.
    - Enum - one of [SYNDICATION_PRODUCT_UNSPECIFIED, CONTENT, MOBILE, VIDEO, GAMES]
  - targetingCriterion ([TargetingCriteria]): Targeting that is shared between the buyer and the seller. Each targeting criterion has a specified key and for each key there is a list of inclusion value or exclusion values. Defaults to: `null`.
  - terms (DealTerms): The negotiable terms of the deal. Defaults to: `null`.
  - updateTime (DateTime.t): Time of last update. Defaults to: `null`.
  - webPropertyCode (String.t): The web-property code for the seller. This needs to be copied as is when adding a new deal to a proposal. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :availableEndTime => DateTime.t(),
          :availableStartTime => DateTime.t(),
          :createTime => DateTime.t(),
          :creatorContacts =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.ContactInformation.t()),
          :displayName => any(),
          :hasCreatorSignedOff => any(),
          :productId => any(),
          :productRevision => any(),
          :publisherProfileId => any(),
          :seller => GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller.t(),
          :syndicationProduct => any(),
          :targetingCriterion =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.TargetingCriteria.t()),
          :terms => GoogleApi.AdExchangeBuyer.V2beta1.Model.DealTerms.t(),
          :updateTime => DateTime.t(),
          :webPropertyCode => any()
        }

  field(:availableEndTime, as: DateTime)
  field(:availableStartTime, as: DateTime)
  field(:createTime, as: DateTime)

  field(
    :creatorContacts,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.ContactInformation,
    type: :list
  )

  field(:displayName)
  field(:hasCreatorSignedOff)
  field(:productId)
  field(:productRevision)
  field(:publisherProfileId)
  field(:seller, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller)
  field(:syndicationProduct)

  field(
    :targetingCriterion,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.TargetingCriteria,
    type: :list
  )

  field(:terms, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.DealTerms)
  field(:updateTime, as: DateTime)
  field(:webPropertyCode)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Product do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Product.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Product do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
