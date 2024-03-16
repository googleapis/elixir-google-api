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

defmodule GoogleApi.ContentWarehouse.V1.Model.OceanDocTag do
  @moduledoc """
  ============> Next available number: 102 (ksridhara) <================

  ## Attributes

  *   `newspaperspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagNewspaperSpecific.t`, *default:* `nil`) - 
  *   `structuredPageNumber` (*type:* `String.t`, *default:* `nil`) - In CAv2 only: structured page number (printed number as we understand it) (result of ocean::StructuredPageNumberProto::AppendToString)
  *   `objectionableContentBitmap` (*type:* `integer()`, *default:* `nil`) - A bitmap indicating whether content may be objectionable NOTE: Only populated for volume level docs
  *   `viewability` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanVolumeViewability.t`, *default:* `nil`) - Volume viewability, which defines how/if the volume should be displayed in various locales.
  *   `subTitle` (*type:* `String.t`, *default:* `nil`) - Sub title string for front end
  *   `workcluster` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagWorkCluster.t`, *default:* `nil`) - 
  *   `pageNumber` (*type:* `integer()`, *default:* `nil`) - page_number of the page (OceanTypes::PageNumberType) In CAv2: page_number of the page ocean::PageNumber::T
  *   `DEPRECATEDPublisherPercentVisible` (*type:* `integer()`, *default:* `nil`) - Percent rights granted by publisher. This should only be set, and definitely should only be considered, if source_type == BoundVolumeSource::PUBLISHER. '0' may mean we have no info on publisher rights so we have to just assume 0%. Deprecated as this is taken into account by viewability
  *   `DEPRECATEDIssueDate` (*type:* `String.t`, *default:* `nil`) - this is in ONIX format.
  *   `bookspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagBookSpecific.t`, *default:* `nil`) - 
  *   `usingActualCover` (*type:* `boolean()`, *default:* `nil`) - using_actual_cover will be set if we are using the actual cover of the book (instead of the table of content, etc.). This is particularly useful to identify books where we inserted a generated cover via Coverups.
  *   `blockSnippet` (*type:* `boolean()`, *default:* `nil`) - 
  *   `volumeType` (*type:* `integer()`, *default:* `nil`) - 
  *   `subjectBitmap` (*type:* `String.t`, *default:* `nil`) - Bitmap indicating top-level subjects associated with this document. See ocean/metadata/subjects/util.h for more detail.
  *   `coverPageSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t`, *default:* `nil`) - The size (in pixels) of the full-resolution clean images used for the cover page. The width and height will be zero if no image for that page.
  *   `coverPage` (*type:* `String.t`, *default:* `nil`) - cover page (PrintedAsSeen string), to generate results snippet thumbnail image urls
  *   `geoRestrict` (*type:* `list(String.t)`, *default:* `nil`) - DEPRECATED! Being replaced in favor of viewability, below. geo restrict info (from OceanRights::geo_restrict) In CAv2: geo restrict info (from ocean::VolumeImprintRights::geo_restrict)
  *   `pageid` (*type:* `integer()`, *default:* `nil`) - pageid of the page (OceanTypes::PageIdType)
  *   `grantableLocale` (*type:* `list(String.t)`, *default:* `nil`) - List of locales for which this book can be bought from a publisher, and read as a Google eBook. Each locale is a lowercase, two-letter country-code (eg "ca"), and is copied from PublisherGrantability.Locale.locale, defined in ocean/data/docinfo/volume_viewability.proto.
  *   `refPageUrl` (*type:* `String.t`, *default:* `nil`) - the URL of the reference page (About this book)
  *   `DEPRECATEDApplicationDate` (*type:* `String.t`, *default:* `nil`) - this is in ONIX format.
  *   `patentspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagPatentSpecific.t`, *default:* `nil`) - 
  *   `isLandingPage` (*type:* `boolean()`, *default:* `nil`) - whether this a landing page chosen at indexing time.
  *   `encryptedVolumeId` (*type:* `String.t`, *default:* `nil`) - 
  *   `metadataCoverExists` (*type:* `boolean()`, *default:* `nil`) - metadata_cover_exists will be set if there's a metadata-provided cover thumbnail. the thumbnail will be used for scanless books or when a scanned book is in metadata-only view.
  *   `availableDownloads` (*type:* `integer()`, *default:* `nil`) - A bitmap containing all available download formats (values defined in AvaialableDownloadFormats enum) NOTE: Only populated for Volume level docs
  *   `metadataCoverSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t`, *default:* `nil`) - The size (in pixels) of the metadata cover image.
  *   `contentType` (*type:* `integer()`, *default:* `nil`) - The content type of the document. See BoundVolumeSource::ContentType in ocean/data/volume_types.protodevel for possible values.
  *   `contributor` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.OceanDocTagContributor.t)`, *default:* `nil`) - 
  *   `DEPRECATEDPatentAssignee` (*type:* `String.t`, *default:* `nil`) - 
  *   `price` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanGEPrice.t`, *default:* `nil`) - Price information for a volume (per locale). Note existence of a price for a locale implies that the book is sellable for that locale.
  *   `DEPRECATEDPatentNumber` (*type:* `String.t`, *default:* `nil`) - patent-specific fields. ALL DEPRECATED, moved into PatentSpecific group, above.
  *   `printedPageNumber` (*type:* `String.t`, *default:* `nil`) - printed page number (OceanPrintedPageNumber; from OceanPageInfoMap::Page::printed_page_number)
  *   `goodTextDetail` (*type:* `integer()`, *default:* `nil`) - Text quality as defined in CA_VolumeScoreResult::OACapabilities::TextQualityAssessment Note - This is only populated if good_text() and is_ge_quality() are true
  *   `editors` (*type:* `String.t`, *default:* `nil`) - Editors string for front end.
  *   `searchInBookUrl` (*type:* `String.t`, *default:* `nil`) - the URL for the "search in book"
  *   `segmentTime` (*type:* `integer()`, *default:* `nil`) - 
  *   `thumbnailUrl` (*type:* `String.t`, *default:* `nil`) - the URL of the cover page.
  *   `authors` (*type:* `String.t`, *default:* `nil`) - TODO(leonid) Deprecate these Authors string for front end.
  *   `catalogspecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagCatalogSpecific.t`, *default:* `nil`) - 
  *   `sourceType` (*type:* `integer()`, *default:* `nil`) - The source type of the document. See BoundVolumeSource::SourceType in ocean/data/volume_types.protodevel for possible values.
  *   `magazinespecific` (*type:* `GoogleApi.ContentWarehouse.V1.Model.OceanDocTagMagazineSpecific.t`, *default:* `nil`) - 
  *   `encryptedExpressionId` (*type:* `String.t`, *default:* `nil`) - 
  *   `volumeVersion` (*type:* `String.t`, *default:* `nil`) - The version of the volume (serialized form). ONLY populated for Volume level docs
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title string for front end.
  *   `numPages` (*type:* `integer()`, *default:* `nil`) - Number of pages in this volume (usually as specified in metadata)
  *   `urlKey` (*type:* `String.t`, *default:* `nil`) - Bibkey to be used as part of the URL (to make them persistent in some sense). This is obtained by doing a GetURLKey() on the bibdata which returns the main bibkey associated with the volume based on priority. This is parseable into an OceanVolumeBibKey (ocean/metadata/bibkeys.h) Note: This should ideally be a required field longer term but for now keeping it optional for compatibility. In case of this being absent, we don't include the key in the URL (just use volumeId as before). Note: For content type books, this key is supplemented by other bibkeys for this volumes(the field is aux_bibkeys)
  *   `isGeQuality` (*type:* `boolean()`, *default:* `nil`) - Set to true if volume has ge quality
  *   `pagerank` (*type:* `float()`, *default:* `nil`) - the page rank value of the book page
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newspaperspecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagNewspaperSpecific.t() | nil,
          :structuredPageNumber => String.t() | nil,
          :objectionableContentBitmap => integer() | nil,
          :viewability => GoogleApi.ContentWarehouse.V1.Model.OceanVolumeViewability.t() | nil,
          :subTitle => String.t() | nil,
          :workcluster => GoogleApi.ContentWarehouse.V1.Model.OceanDocTagWorkCluster.t() | nil,
          :pageNumber => integer() | nil,
          :DEPRECATEDPublisherPercentVisible => integer() | nil,
          :DEPRECATEDIssueDate => String.t() | nil,
          :bookspecific => GoogleApi.ContentWarehouse.V1.Model.OceanDocTagBookSpecific.t() | nil,
          :usingActualCover => boolean() | nil,
          :blockSnippet => boolean() | nil,
          :volumeType => integer() | nil,
          :subjectBitmap => String.t() | nil,
          :coverPageSize => GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t() | nil,
          :coverPage => String.t() | nil,
          :geoRestrict => list(String.t()) | nil,
          :pageid => integer() | nil,
          :grantableLocale => list(String.t()) | nil,
          :refPageUrl => String.t() | nil,
          :DEPRECATEDApplicationDate => String.t() | nil,
          :patentspecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagPatentSpecific.t() | nil,
          :isLandingPage => boolean() | nil,
          :encryptedVolumeId => String.t() | nil,
          :metadataCoverExists => boolean() | nil,
          :availableDownloads => integer() | nil,
          :metadataCoverSize => GoogleApi.ContentWarehouse.V1.Model.OceanImageSize.t() | nil,
          :contentType => integer() | nil,
          :contributor =>
            list(GoogleApi.ContentWarehouse.V1.Model.OceanDocTagContributor.t()) | nil,
          :DEPRECATEDPatentAssignee => String.t() | nil,
          :price => GoogleApi.ContentWarehouse.V1.Model.OceanGEPrice.t() | nil,
          :DEPRECATEDPatentNumber => String.t() | nil,
          :printedPageNumber => String.t() | nil,
          :goodTextDetail => integer() | nil,
          :editors => String.t() | nil,
          :searchInBookUrl => String.t() | nil,
          :segmentTime => integer() | nil,
          :thumbnailUrl => String.t() | nil,
          :authors => String.t() | nil,
          :catalogspecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagCatalogSpecific.t() | nil,
          :sourceType => integer() | nil,
          :magazinespecific =>
            GoogleApi.ContentWarehouse.V1.Model.OceanDocTagMagazineSpecific.t() | nil,
          :encryptedExpressionId => String.t() | nil,
          :volumeVersion => String.t() | nil,
          :title => String.t() | nil,
          :numPages => integer() | nil,
          :urlKey => String.t() | nil,
          :isGeQuality => boolean() | nil,
          :pagerank => float() | nil
        }

  field(:newspaperspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagNewspaperSpecific)
  field(:structuredPageNumber)
  field(:objectionableContentBitmap)
  field(:viewability, as: GoogleApi.ContentWarehouse.V1.Model.OceanVolumeViewability)
  field(:subTitle)
  field(:workcluster, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagWorkCluster)
  field(:pageNumber)
  field(:DEPRECATEDPublisherPercentVisible)
  field(:DEPRECATEDIssueDate)
  field(:bookspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagBookSpecific)
  field(:usingActualCover)
  field(:blockSnippet)
  field(:volumeType)
  field(:subjectBitmap)
  field(:coverPageSize, as: GoogleApi.ContentWarehouse.V1.Model.OceanImageSize)
  field(:coverPage)
  field(:geoRestrict, type: :list)
  field(:pageid)
  field(:grantableLocale, type: :list)
  field(:refPageUrl)
  field(:DEPRECATEDApplicationDate)
  field(:patentspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagPatentSpecific)
  field(:isLandingPage)
  field(:encryptedVolumeId)
  field(:metadataCoverExists)
  field(:availableDownloads)
  field(:metadataCoverSize, as: GoogleApi.ContentWarehouse.V1.Model.OceanImageSize)
  field(:contentType)
  field(:contributor, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagContributor, type: :list)
  field(:DEPRECATEDPatentAssignee)
  field(:price, as: GoogleApi.ContentWarehouse.V1.Model.OceanGEPrice)
  field(:DEPRECATEDPatentNumber)
  field(:printedPageNumber)
  field(:goodTextDetail)
  field(:editors)
  field(:searchInBookUrl)
  field(:segmentTime)
  field(:thumbnailUrl)
  field(:authors)
  field(:catalogspecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagCatalogSpecific)
  field(:sourceType)
  field(:magazinespecific, as: GoogleApi.ContentWarehouse.V1.Model.OceanDocTagMagazineSpecific)
  field(:encryptedExpressionId)
  field(:volumeVersion)
  field(:title)
  field(:numPages)
  field(:urlKey)
  field(:isGeQuality)
  field(:pagerank)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.OceanDocTag do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.OceanDocTag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.OceanDocTag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end