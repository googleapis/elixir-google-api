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

defmodule GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData do
  @moduledoc """
  NEXT TAG: 28

  ## Attributes

  *   `agingCounts` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsAgingData.t`, *default:* `nil`) - Contains counter for Aging signal (go/freshness-aging). It's used internally by Craps/Aging pipeline.
  *   `badClicks` (*type:* `float()`, *default:* `nil`) - 
  *   `clicks` (*type:* `float()`, *default:* `nil`) - 
  *   `country` (*type:* `String.t`, *default:* `nil`) - The two-letter uppercase country slice of the CrapsData. Examples: "US", "FR", "BR"
  *   `device` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsDevice.t`, *default:* `nil`) - The device interface and os slice of the CrapsData.
  *   `features` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsFeatureCrapsData.t)`, *default:* `nil`) - Contains CrapsClickSignals for specific features. (i.e. for mobile, US, metro id - 123")
  *   `goodClicks` (*type:* `float()`, *default:* `nil`) - 
  *   `impressions` (*type:* `float()`, *default:* `nil`) - These fields may become legacy fields; we may retire them and use the squashed field (below) instead, to allow for some nesting.
  *   `language` (*type:* `String.t`, *default:* `nil`) - The language slice of the CrapsData. Examples: "en", "fr", "pt-BR",
  *   `lastLongestClicks` (*type:* `float()`, *default:* `nil`) - The number of clicks that were last and longest in related user queries.
  *   `mobileData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData.t`, *default:* `nil`) - DO NOT USE: Use the above mobile_signals fields instead. DO NOT REMOVE: Field is present in legacy protos in golden tests.
  *   `mobileSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t`, *default:* `nil`) - The portion of this CrapsData aggregated on data from tier 1/2 mobile interfaces in QSessions.
  *   `packedIpAddress` (*type:* `String.t`, *default:* `nil`) - Contains a packed string in network byte order, as expected by CrapsIpPrior. Only populated if we looked up the ip_prior_bad_fraction at retrieval time.
  *   `patternLevel` (*type:* `integer()`, *default:* `nil`) - Level of pattern. More general patterns get higher values. For URL patterns this field = 0. For example, if we have "http://abc.def.ghi/xyz.html" level 0 pattern will be "http://abc.def.ghi/xyz.html" level 1 pattern will be "p://abc.def.ghi" level 2 pattern will be "p://def.ghi"
  *   `patternSccStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsStatsWithWeightsProto.t`, *default:* `nil`) - For pattern data, this will contain stats of the SCC's of the individual urls contributing to the pattern.
  *   `query` (*type:* `String.t`, *default:* `nil`) - 
  *   `sliceTag` (*type:* `String.t`, *default:* `nil`) - This field can be used by the craps pipeline to slice up signals by various attributes such as device type, country, locale etc. The slice_tag can be an arbitrary string, and the CrapsData values for each slice_tag are aggregated separately, together with the default empty slice_tag.
  *   `squashed` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t`, *default:* `nil`) - Not used yet - we will probably move the impressions / clicks / good_clicks bad clicks / last longest clicks into here from top level, and rename those fields to legacy.
  *   `unscaledIpPriorBadFraction` (*type:* `float()`, *default:* `nil`) - Used to assign a prior based on IP address. See quality/navboost/craps/craps-ip-prior.h. This value is prior to the linear transformation (scaling / offset / min / max) that's applied in craps-penalty.cc.
  *   `unsquashed` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t`, *default:* `nil`) - We will start using this one for the retuning rollout.
  *   `unsquashedMobileSignals` (*type:* `GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t`, *default:* `nil`) - 
  *   `url` (*type:* `String.t`, *default:* `nil`) - 
  *   `voterTokenCount` (*type:* `integer()`, *default:* `nil`) - The number of distinct voter tokens (a lower bound on the number of distinct users that contributed to the entry, used for privacy-related filtering).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agingCounts =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsAgingData.t() | nil,
          :badClicks => float() | nil,
          :clicks => float() | nil,
          :country => String.t() | nil,
          :device =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsDevice.t() | nil,
          :features =>
            list(GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsFeatureCrapsData.t())
            | nil,
          :goodClicks => float() | nil,
          :impressions => float() | nil,
          :language => String.t() | nil,
          :lastLongestClicks => float() | nil,
          :mobileData =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData.t() | nil,
          :mobileSignals =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t() | nil,
          :packedIpAddress => String.t() | nil,
          :patternLevel => integer() | nil,
          :patternSccStats =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsStatsWithWeightsProto.t()
            | nil,
          :query => String.t() | nil,
          :sliceTag => String.t() | nil,
          :squashed =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t() | nil,
          :unscaledIpPriorBadFraction => float() | nil,
          :unsquashed =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t() | nil,
          :unsquashedMobileSignals =>
            GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals.t() | nil,
          :url => String.t() | nil,
          :voterTokenCount => integer() | nil
        }

  field(:agingCounts, as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsAgingData)
  field(:badClicks)
  field(:clicks)
  field(:country)
  field(:device, as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsDevice)

  field(:features,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsFeatureCrapsData,
    type: :list
  )

  field(:goodClicks)
  field(:impressions)
  field(:language)
  field(:lastLongestClicks)
  field(:mobileData, as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData)

  field(:mobileSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals
  )

  field(:packedIpAddress)
  field(:patternLevel)

  field(:patternSccStats,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsStatsWithWeightsProto
  )

  field(:query)
  field(:sliceTag)
  field(:squashed, as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals)
  field(:unscaledIpPriorBadFraction)

  field(:unsquashed, as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals)

  field(:unsquashedMobileSignals,
    as: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsClickSignals
  )

  field(:url)
  field(:voterTokenCount)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.QualityNavboostCrapsCrapsData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end