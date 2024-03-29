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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorSpamInfo do
  @moduledoc """
  Following structure summarizes output of AnchorSpamPenalizer. Spammy anchors are tagged with LINK_SPAM_PHRASE_PENALIZER and demoted to SPAM locality in anchor-localizer.cc

  ## Attributes

  *   `anchorEnd` (*type:* `integer()`, *default:* `nil`) - End date of the last anchor of the document.
  *   `anchorFraq` (*type:* `number()`, *default:* `nil`) - Ratio of spam demoted period to all anchor period.
  *   `anchorStart` (*type:* `integer()`, *default:* `nil`) - Start date of the first anchor of the document.
  *   `demoted` (*type:* `integer()`, *default:* `nil`) - Following field record details of anchor demotion in action. How many anchors were demoted.
  *   `demotedAll` (*type:* `boolean()`, *default:* `nil`) - Demoted all anchors in the period or only anchors classified as spam.
  *   `demotedEnd` (*type:* `integer()`, *default:* `nil`) - End date of the demotion period.
  *   `demotedStart` (*type:* `integer()`, *default:* `nil`) - Start date of the demotion period.
  *   `phraseCount` (*type:* `number()`, *default:* `nil`) - Following fields record signals used in anchor spam classification. How many spam phrases found in the anchors among unique domains.
  *   `phraseDays` (*type:* `number()`, *default:* `nil`) - Over how many days 80% of these phrases were discovered.
  *   `phraseFraq` (*type:* `number()`, *default:* `nil`) - Spam phrases fraction of all anchors of the document.
  *   `phraseRate` (*type:* `number()`, *default:* `nil`) - Average daily rate of spam anchor discovery.
  *   `processed` (*type:* `integer()`, *default:* `nil`) - Total number of processed anchors.
  *   `sampled` (*type:* `boolean()`, *default:* `nil`) - True if anchors were sampled during observation phrase.
  *   `sources` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo.t)`, *default:* `nil`) - Detailed information about trusted sources and match computation. Populated only when --anchorspam_penalizer_debug=true.
  *   `spamDebugInfo` (*type:* `String.t`, *default:* `nil`) - Additional debug information about computation of spam probability.
  *   `spamPenalty` (*type:* `number()`, *default:* `nil`) - Combined penalty for anchor demotion.
  *   `spamProbability` (*type:* `number()`, *default:* `nil`) - Predicted probability of spam.
  *   `trustedDemoted` (*type:* `integer()`, *default:* `nil`) - Number of trusted anchors used in computation of spam probability.
  *   `trustedExamples` (*type:* `String.t`, *default:* `nil`) - Examples of trusted sources.
  *   `trustedMatching` (*type:* `integer()`, *default:* `nil`) - Number of trusted anchors with anchor text matching spam terms.
  *   `trustedTarget` (*type:* `boolean()`, *default:* `nil`) - Following fields record details about trusted anchors True if is this URL is on trusted source.
  *   `trustedTotal` (*type:* `integer()`, *default:* `nil`) - Total number of trusted sources for this URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :anchorEnd => integer() | nil,
          :anchorFraq => number() | nil,
          :anchorStart => integer() | nil,
          :demoted => integer() | nil,
          :demotedAll => boolean() | nil,
          :demotedEnd => integer() | nil,
          :demotedStart => integer() | nil,
          :phraseCount => number() | nil,
          :phraseDays => number() | nil,
          :phraseFraq => number() | nil,
          :phraseRate => number() | nil,
          :processed => integer() | nil,
          :sampled => boolean() | nil,
          :sources =>
            list(GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo.t()) | nil,
          :spamDebugInfo => String.t() | nil,
          :spamPenalty => number() | nil,
          :spamProbability => number() | nil,
          :trustedDemoted => integer() | nil,
          :trustedExamples => String.t() | nil,
          :trustedMatching => integer() | nil,
          :trustedTarget => boolean() | nil,
          :trustedTotal => integer() | nil
        }

  field(:anchorEnd)
  field(:anchorFraq)
  field(:anchorStart)
  field(:demoted)
  field(:demotedAll)
  field(:demotedEnd)
  field(:demotedStart)
  field(:phraseCount)
  field(:phraseDays)
  field(:phraseFraq)
  field(:phraseRate)
  field(:processed)
  field(:sampled)

  field(:sources,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorTrustedInfo,
    type: :list
  )

  field(:spamDebugInfo)
  field(:spamPenalty)
  field(:spamProbability)
  field(:trustedDemoted)
  field(:trustedExamples)
  field(:trustedMatching)
  field(:trustedTarget)
  field(:trustedTotal)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorSpamInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorSpamInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.IndexingDocjoinerAnchorSpamInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
