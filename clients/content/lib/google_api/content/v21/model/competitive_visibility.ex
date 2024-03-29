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

defmodule GoogleApi.Content.V21.Model.CompetitiveVisibility do
  @moduledoc """
  Fields related to [competitive visibility reports] (https://support.google.com/merchants/answer/11366442).

  ## Attributes

  *   `adsOrganicRatio` (*type:* `float()`, *default:* `nil`) - [Ads / organic ratio] (https://support.google.com/merchants/answer/11366442#zippy=%2Cadsfree-ratio) shows how often a merchant receives impressions from Shopping ads compared to organic traffic. The number is rounded and bucketed. Available only in `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `categoryBenchmarkVisibilityTrend` (*type:* `float()`, *default:* `nil`) - Change in visibility based on impressions with respect to the start of the selected time range (or first day with non-zero impressions) for a combined set of merchants with highest visibility approximating the market. Available only in `CompetitiveVisibilityBenchmarkView`. Cannot be filtered on in the 'WHERE' clause.
  *   `categoryId` (*type:* `String.t`, *default:* `nil`) - Google product category ID to calculate the report for, represented in [Google's product taxonomy](https://support.google.com/merchants/answer/6324436). Required in the `SELECT` clause. A `WHERE` condition on `competitive_visibility.category_id` is required in the query.
  *   `countryCode` (*type:* `String.t`, *default:* `nil`) - The country where impression appeared. Required in the `SELECT` clause. A `WHERE` condition on `competitive_visibility.country_code` is required in the query.
  *   `date` (*type:* `GoogleApi.Content.V21.Model.Date.t`, *default:* `nil`) - Date of this row. Available only in `CompetitiveVisibilityBenchmarkView` and `CompetitiveVisibilityCompetitorView`. Required in the `SELECT` clause for `CompetitiveVisibilityMarketBenchmarkView`.
  *   `domain` (*type:* `String.t`, *default:* `nil`) - Domain of your competitor or your domain, if 'is_your_domain' is true. Available only in `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Required in the `SELECT` clause for `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `higherPositionRate` (*type:* `float()`, *default:* `nil`) - Higher position rate shows how often a competitor’s offer got placed in a higher position on the page than your offer. Available only in `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `isYourDomain` (*type:* `boolean()`, *default:* `nil`) - True if this row contains data for your domain. Available only in `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `pageOverlapRate` (*type:* `float()`, *default:* `nil`) - Page overlap rate describes how frequently competing retailers’ offers are shown together with your offers on the same page. Available only in `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `rank` (*type:* `String.t`, *default:* `nil`) - Position of the domain in the top merchants ranking for the selected keys (`date`, `category_id`, `country_code`, `listing_type`) based on impressions. 1 is the highest. Available only in `CompetitiveVisibilityTopMerchantView` and `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `relativeVisibility` (*type:* `float()`, *default:* `nil`) - Relative visibility shows how often your competitors’ offers are shown compared to your offers. In other words, this is the number of displayed impressions of a competitor retailer divided by the number of your displayed impressions during a selected time range for a selected product category and country. Available only in `CompetitiveVisibilityCompetitorView`. Cannot be filtered on in the 'WHERE' clause.
  *   `trafficSource` (*type:* `String.t`, *default:* `nil`) - Type of impression listing. Required in the `SELECT` clause. Cannot be filtered on in the 'WHERE' clause.
  *   `yourDomainVisibilityTrend` (*type:* `float()`, *default:* `nil`) - Change in visibility based on impressions for your domain with respect to the start of the selected time range (or first day with non-zero impressions). Available only in `CompetitiveVisibilityBenchmarkView`. Cannot be filtered on in the 'WHERE' clause.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adsOrganicRatio => float() | nil,
          :categoryBenchmarkVisibilityTrend => float() | nil,
          :categoryId => String.t() | nil,
          :countryCode => String.t() | nil,
          :date => GoogleApi.Content.V21.Model.Date.t() | nil,
          :domain => String.t() | nil,
          :higherPositionRate => float() | nil,
          :isYourDomain => boolean() | nil,
          :pageOverlapRate => float() | nil,
          :rank => String.t() | nil,
          :relativeVisibility => float() | nil,
          :trafficSource => String.t() | nil,
          :yourDomainVisibilityTrend => float() | nil
        }

  field(:adsOrganicRatio)
  field(:categoryBenchmarkVisibilityTrend)
  field(:categoryId)
  field(:countryCode)
  field(:date, as: GoogleApi.Content.V21.Model.Date)
  field(:domain)
  field(:higherPositionRate)
  field(:isYourDomain)
  field(:pageOverlapRate)
  field(:rank)
  field(:relativeVisibility)
  field(:trafficSource)
  field(:yourDomainVisibilityTrend)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.CompetitiveVisibility do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.CompetitiveVisibility.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.CompetitiveVisibility do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
