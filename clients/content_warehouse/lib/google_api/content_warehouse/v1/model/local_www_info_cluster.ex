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

defmodule GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoCluster do
  @moduledoc """


  ## Attributes

  *   `addrFprint` (*type:* `String.t`, *default:* `nil`) - 
  *   `annotationConfidence` (*type:* `number()`, *default:* `nil`) - Confidence score for business mention annotations which is copied from LocalEntityAnnotations::location_confidence.
  *   `clusterdocid` (*type:* `String.t`, *default:* `nil`) - 
  *   `clusterid` (*type:* `String.t`, *default:* `nil`) - 
  *   `confidence` (*type:* `number()`, *default:* `nil`) - Probability that this is the authority page of the business. Same as LocalListing.authority_page_probability, only set for pages with page_type_flags & AUTHORITY.
  *   `featureType` (*type:* `integer()`, *default:* `nil`) - Feature type for this listing, from LocalListing::info::related_feature. A geostore::FeatureProto::TypeCategory. Intended primarily to indicate POI-ness (i.e., TYPE_ESTABLISHMENT_POI).
  *   `hours` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeScheduleProto.t`, *default:* `nil`) - Opening hours for the business, from Local attributes and/or extracted annotations.
  *   `hoursSource` (*type:* `String.t`, *default:* `nil`) - 
  *   `includeInIndex` (*type:* `boolean()`, *default:* `nil`) - 
  *   `isPlusbox` (*type:* `boolean()`, *default:* `nil`) - TODO(local-universal) Consider deleting is_plusbox once the new scheme that uses make_plusbox_visible rolled out.
  *   `latitudeE6` (*type:* `integer()`, *default:* `nil`) - 
  *   `level` (*type:* `integer()`, *default:* `nil`) - DEPRECATED / NO LONGER WRITTEN. URL path level from actual references to this webpage.
  *   `longitudeE6` (*type:* `integer()`, *default:* `nil`) - 
  *   `makePlusboxVisible` (*type:* `boolean()`, *default:* `nil`) - A hint for frontend to decide whether this plusbox should be visible or not.
  *   `menuUrl` (*type:* `list(String.t)`, *default:* `nil`) - Menu link for the business. Currently only comes from Local attributes.
  *   `pageTypeFlags` (*type:* `integer()`, *default:* `nil`) - Type of the web reference.
  *   `phoneFprint` (*type:* `String.t`, *default:* `nil`) - 
  *   `phoneNumber` (*type:* `GoogleApi.ContentWarehouse.V1.Model.TelephoneNumber.t`, *default:* `nil`) - 
  *   `postalAddress` (*type:* `GoogleApi.ContentWarehouse.V1.Model.PostalAddress.t`, *default:* `nil`) - 
  *   `relevance` (*type:* `number()`, *default:* `nil`) - DEPRECATED / NO LONGER WRITTEN. How relevant the webpage is to the business (clustering distance). Same as LocalListing::Reference.relevance. Typically only set for pages with (page_type_flags & WEB_EXTRACTION && !AUTHORITY).
  *   `showInSnippets` (*type:* `boolean()`, *default:* `nil`) - 
  *   `source` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `title` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :addrFprint => String.t() | nil,
          :annotationConfidence => number() | nil,
          :clusterdocid => String.t() | nil,
          :clusterid => String.t() | nil,
          :confidence => number() | nil,
          :featureType => integer() | nil,
          :hours => GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeScheduleProto.t() | nil,
          :hoursSource => String.t() | nil,
          :includeInIndex => boolean() | nil,
          :isPlusbox => boolean() | nil,
          :latitudeE6 => integer() | nil,
          :level => integer() | nil,
          :longitudeE6 => integer() | nil,
          :makePlusboxVisible => boolean() | nil,
          :menuUrl => list(String.t()) | nil,
          :pageTypeFlags => integer() | nil,
          :phoneFprint => String.t() | nil,
          :phoneNumber => GoogleApi.ContentWarehouse.V1.Model.TelephoneNumber.t() | nil,
          :postalAddress => GoogleApi.ContentWarehouse.V1.Model.PostalAddress.t() | nil,
          :relevance => number() | nil,
          :showInSnippets => boolean() | nil,
          :source => list(String.t()) | nil,
          :title => String.t() | nil
        }

  field(:addrFprint)
  field(:annotationConfidence)
  field(:clusterdocid)
  field(:clusterid)
  field(:confidence)
  field(:featureType)
  field(:hours, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreTimeScheduleProto)
  field(:hoursSource)
  field(:includeInIndex)
  field(:isPlusbox)
  field(:latitudeE6)
  field(:level)
  field(:longitudeE6)
  field(:makePlusboxVisible)
  field(:menuUrl, type: :list)
  field(:pageTypeFlags)
  field(:phoneFprint)
  field(:phoneNumber, as: GoogleApi.ContentWarehouse.V1.Model.TelephoneNumber)
  field(:postalAddress, as: GoogleApi.ContentWarehouse.V1.Model.PostalAddress)
  field(:relevance)
  field(:showInSnippets)
  field(:source, type: :list)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoCluster do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.LocalWWWInfoCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
