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

defmodule GoogleApi.ContentWarehouse.V1.Model.DocProperties do
  @moduledoc """
  NOTE: In segindexer, the docproperties of a document may be reused from a previous cycle if its content is not changed. If you add a new field to DocProperties, make sure it is taken care (i.e., gets copied from a previous cycle to the current document) in CDocProperties::EndDocument().

  ## Attributes

  *   `avgTermWeight` (*type:* `integer()`, *default:* `nil`) - The average weighted font size of a term in the doc body
  *   `badTitle` (*type:* `boolean()`, *default:* `nil`) - Missing or meaningless title
  *   `badtitleinfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.DocPropertiesBadTitleInfo.t)`, *default:* `nil`) - 
  *   `languages` (*type:* `list(integer())`, *default:* `nil`) - A Language enum value. See: go/language-enum
  *   `leadingtext` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextInfo.t`, *default:* `nil`) - Leading text information generated by google3/quality/snippets/leadingtext/leadingtext-detector.cc
  *   `numPunctuations` (*type:* `integer()`, *default:* `nil`) - 
  *   `numTags` (*type:* `integer()`, *default:* `nil`) - 
  *   `numTokens` (*type:* `integer()`, *default:* `nil`) - The number of tokens, tags and punctuations in the tokenized contents. This is an approximation of the number of tokens, tags and punctuations we end up with in mustang, but is inexact since we drop some tokens in mustang and also truncate docs at a max cap.
  *   `proseRestrict` (*type:* `list(String.t)`, *default:* `nil`) - The restricts for CSE structured search.
  *   `restricts` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - The time CDocProperties::StartDocument() is called, encoded as seconds past the epoch (Jan 1, 1970). This value is always refreshed and not reused.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Extracted from the title tag of the content. This is typically extracted by TitleMetaCollector defined at google3/segindexer/title-meta-collector.h. Please see its documentation for the format and other caveats.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avgTermWeight => integer() | nil,
          :badTitle => boolean() | nil,
          :badtitleinfo =>
            list(GoogleApi.ContentWarehouse.V1.Model.DocPropertiesBadTitleInfo.t()) | nil,
          :languages => list(integer()) | nil,
          :leadingtext =>
            GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextInfo.t() | nil,
          :numPunctuations => integer() | nil,
          :numTags => integer() | nil,
          :numTokens => integer() | nil,
          :proseRestrict => list(String.t()) | nil,
          :restricts => list(String.t()) | nil,
          :timestamp => String.t() | nil,
          :title => String.t() | nil
        }

  field(:avgTermWeight)
  field(:badTitle)

  field(:badtitleinfo,
    as: GoogleApi.ContentWarehouse.V1.Model.DocPropertiesBadTitleInfo,
    type: :list
  )

  field(:languages, type: :list)
  field(:leadingtext, as: GoogleApi.ContentWarehouse.V1.Model.SnippetsLeadingtextLeadingTextInfo)
  field(:numPunctuations)
  field(:numTags)
  field(:numTokens)
  field(:proseRestrict, type: :list)
  field(:restricts, type: :list)
  field(:timestamp)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.DocProperties do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.DocProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.DocProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
