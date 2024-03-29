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

defmodule GoogleApi.ContentWarehouse.V1.Model.ScienceCitationDownloadURL do
  @moduledoc """
  Download URL mentioned in citation; we keep up to K of them LINT.IfChange

  ## Attributes

  *   `DownloadDay` (*type:* `integer()`, *default:* `nil`) - 
  *   `LegalMustInclude` (*type:* `boolean()`, *default:* `nil`) - e.g., in law_articles.pat
  *   `DisplayPriority` (*type:* `integer()`, *default:* `nil`) - display preference score
  *   `PageCount` (*type:* `integer()`, *default:* `nil`) - Number of pages in the pdf2html conversion output. Only set for PDFs. For a partitioned PDF, this is the page count of the entire volume.
  *   `LikelyWorldViewable` (*type:* `boolean()`, *default:* `nil`) - Likely to be free-to-read for everyone, after accounting for library links etc.
  *   `MetadataUrl` (*type:* `String.t`, *default:* `nil`) - url of publisher metadata file
  *   `NoIndex` (*type:* `boolean()`, *default:* `nil`) - metatag: don't display this url
  *   `ReferencesInPrevIndex` (*type:* `boolean()`, *default:* `nil`) - were references parsed in a previous index
  *   `CanonicalUrlfp` (*type:* `String.t`, *default:* `nil`) - 
  *   `NoSnippet` (*type:* `boolean()`, *default:* `nil`) - metatag: don't show snippet
  *   `BrokenLandingPage` (*type:* `boolean()`, *default:* `nil`) - set if we know the landing page is broken
  *   `DownloadYear` (*type:* `integer()`, *default:* `nil`) - no abbrv
  *   `WorldViewable` (*type:* `boolean()`, *default:* `nil`) - metatag: is viewable by world
  *   `UrlAfterRedirects` (*type:* `String.t`, *default:* `nil`) - 
  *   `ContentChecksum` (*type:* `String.t`, *default:* `nil`) - checksum of the page
  *   `ExcerptDebugLabel` (*type:* `String.t`, *default:* `nil`) - label for excerpt (abstract, summary, ..)
  *   `ContentType` (*type:* `integer()`, *default:* `nil`) - makes gws display nicer :)
  *   `LongChunkCount` (*type:* `integer()`, *default:* `nil`) - number of long paragraphs
  *   `MustInclude` (*type:* `boolean()`, *default:* `nil`) - e.g., in science_articles.pat
  *   `FirstDiscovered` (*type:* `String.t`, *default:* `nil`) - seconds since the epoch
  *   `IndexPriority` (*type:* `integer()`, *default:* `nil`) - indexing preference score
  *   `HtmlTitle` (*type:* `String.t`, *default:* `nil`) - html title of the page
  *   `NoArchive` (*type:* `boolean()`, *default:* `nil`) - metatag: don't show cached version
  *   `DownloadMonth` (*type:* `integer()`, *default:* `nil`) - DownloadMonth is a zero-indexed field (0 is January).
  *   `CrawlTimestamp` (*type:* `String.t`, *default:* `nil`) - seconds since the epoch
  *   `LikelyDifferentMetricsVenue` (*type:* `boolean()`, *default:* `nil`) - In the context of a given venue in Scholar Metrics, whether this URL likely does not link to the current venue.
  *   `UrlStr` (*type:* `String.t`, *default:* `nil`) - 
  *   `HostedStartPage` (*type:* `integer()`, *default:* `nil`) - 
  *   `OutLinkCount` (*type:* `integer()`, *default:* `nil`) - number of external URLs (in PDF).
  *   `LikelyNoCache` (*type:* `boolean()`, *default:* `nil`) - badurls_nocache at indexing time
  *   `LikelyLegalJournal` (*type:* `boolean()`, *default:* `nil`) - e.g., in legal_journals.pat
  *   `Type` (*type:* `integer()`, *default:* `nil`) - ArticleType for this particular url
  *   `MaybeNoIndexReparse` (*type:* `boolean()`, *default:* `nil`) - Incremental only: mark as NoIndexed if this is a reparse and the base version is NoIndexed.
  *   `LikelyAheadPrint` (*type:* `boolean()`, *default:* `nil`) - Whether this is likely the URL for an ahead print, at indexing time.
  *   `InPrevIndex` (*type:* `boolean()`, *default:* `nil`) - is url included in a previous index
  *   `DisplayOrg` (*type:* `String.t`, *default:* `nil`) - publisher display name
  *   `WordCount` (*type:* `integer()`, *default:* `nil`) - number of words in content/body
  *   `OceanView` (*type:* `GoogleApi.ContentWarehouse.V1.Model.ScienceOceanView.t`, *default:* `nil`) - describes whether url is viewable in ocean
  *   `DMCANotice` (*type:* `String.t`, *default:* `nil`) - metatag: URL; result was taken down
  *   `LikelyNoIndex` (*type:* `boolean()`, *default:* `nil`) - badurls_noreturngws at indexing time
  *   `ExcerptContent` (*type:* `String.t`, *default:* `nil`) - first few lines of abstract'ish excerpt
  *   `HostedNumPages` (*type:* `integer()`, *default:* `nil`) - explicit zero means hosting failed
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :DownloadDay => integer() | nil,
          :LegalMustInclude => boolean() | nil,
          :DisplayPriority => integer() | nil,
          :PageCount => integer() | nil,
          :LikelyWorldViewable => boolean() | nil,
          :MetadataUrl => String.t() | nil,
          :NoIndex => boolean() | nil,
          :ReferencesInPrevIndex => boolean() | nil,
          :CanonicalUrlfp => String.t() | nil,
          :NoSnippet => boolean() | nil,
          :BrokenLandingPage => boolean() | nil,
          :DownloadYear => integer() | nil,
          :WorldViewable => boolean() | nil,
          :UrlAfterRedirects => String.t() | nil,
          :ContentChecksum => String.t() | nil,
          :ExcerptDebugLabel => String.t() | nil,
          :ContentType => integer() | nil,
          :LongChunkCount => integer() | nil,
          :MustInclude => boolean() | nil,
          :FirstDiscovered => String.t() | nil,
          :IndexPriority => integer() | nil,
          :HtmlTitle => String.t() | nil,
          :NoArchive => boolean() | nil,
          :DownloadMonth => integer() | nil,
          :CrawlTimestamp => String.t() | nil,
          :LikelyDifferentMetricsVenue => boolean() | nil,
          :UrlStr => String.t() | nil,
          :HostedStartPage => integer() | nil,
          :OutLinkCount => integer() | nil,
          :LikelyNoCache => boolean() | nil,
          :LikelyLegalJournal => boolean() | nil,
          :Type => integer() | nil,
          :MaybeNoIndexReparse => boolean() | nil,
          :LikelyAheadPrint => boolean() | nil,
          :InPrevIndex => boolean() | nil,
          :DisplayOrg => String.t() | nil,
          :WordCount => integer() | nil,
          :OceanView => GoogleApi.ContentWarehouse.V1.Model.ScienceOceanView.t() | nil,
          :DMCANotice => String.t() | nil,
          :LikelyNoIndex => boolean() | nil,
          :ExcerptContent => String.t() | nil,
          :HostedNumPages => integer() | nil
        }

  field(:DownloadDay)
  field(:LegalMustInclude)
  field(:DisplayPriority)
  field(:PageCount)
  field(:LikelyWorldViewable)
  field(:MetadataUrl)
  field(:NoIndex)
  field(:ReferencesInPrevIndex)
  field(:CanonicalUrlfp)
  field(:NoSnippet)
  field(:BrokenLandingPage)
  field(:DownloadYear)
  field(:WorldViewable)
  field(:UrlAfterRedirects)
  field(:ContentChecksum)
  field(:ExcerptDebugLabel)
  field(:ContentType)
  field(:LongChunkCount)
  field(:MustInclude)
  field(:FirstDiscovered)
  field(:IndexPriority)
  field(:HtmlTitle)
  field(:NoArchive)
  field(:DownloadMonth)
  field(:CrawlTimestamp)
  field(:LikelyDifferentMetricsVenue)
  field(:UrlStr)
  field(:HostedStartPage)
  field(:OutLinkCount)
  field(:LikelyNoCache)
  field(:LikelyLegalJournal)
  field(:Type)
  field(:MaybeNoIndexReparse)
  field(:LikelyAheadPrint)
  field(:InPrevIndex)
  field(:DisplayOrg)
  field(:WordCount)
  field(:OceanView, as: GoogleApi.ContentWarehouse.V1.Model.ScienceOceanView)
  field(:DMCANotice)
  field(:LikelyNoIndex)
  field(:ExcerptContent)
  field(:HostedNumPages)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.ScienceCitationDownloadURL do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.ScienceCitationDownloadURL.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.ScienceCitationDownloadURL do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
