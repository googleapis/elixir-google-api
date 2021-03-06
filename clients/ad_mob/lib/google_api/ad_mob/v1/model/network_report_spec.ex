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

defmodule GoogleApi.AdMob.V1.Model.NetworkReportSpec do
  @moduledoc """
  The specification for generating an AdMob Network report. For example, the specification to get clicks and estimated earnings for only the 'US' and 'CN' countries can look like the following example: { 'date_range': { 'start_date': {'year': 2021, 'month': 9, 'day': 1}, 'end_date': {'year': 2021, 'month': 9, 'day': 30} }, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', 'ESTIMATED_EARNINGS'], 'dimension_filters': [ { 'dimension': 'COUNTRY', 'matches_any': {'values': [{'value': 'US', 'value': 'CN'}]} } ], 'sort_conditions': [ {'dimension':'APP', order: 'ASCENDING'}, {'metric':'CLICKS', order: 'DESCENDING'} ], 'localization_settings': { 'currency_code': 'USD', 'language_code': 'en-US' } } For a better understanding, you can treat the preceding specification like the following pseudo SQL: SELECT DATE, APP, COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2021-09-01' AND DATE <= '2021-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP, COUNTRY ORDER BY APP ASC, CLICKS DESC;

  ## Attributes

  *   `dateRange` (*type:* `GoogleApi.AdMob.V1.Model.DateRange.t`, *default:* `nil`) - The date range for which the report is generated.
  *   `dimensionFilters` (*type:* `list(GoogleApi.AdMob.V1.Model.NetworkReportSpecDimensionFilter.t)`, *default:* `nil`) - Describes which report rows to match based on their dimension values.
  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - List of dimensions of the report. The value combination of these dimensions determines the row of the report. If no dimensions are specified, the report returns a single row of requested metrics for the entire account.
  *   `localizationSettings` (*type:* `GoogleApi.AdMob.V1.Model.LocalizationSettings.t`, *default:* `nil`) - Localization settings of the report.
  *   `maxReportRows` (*type:* `integer()`, *default:* `nil`) - Maximum number of report data rows to return. If the value is not set, the API returns as many rows as possible, up to 100000. Acceptable values are 1-100000, inclusive. Values larger than 100000 return an error.
  *   `metrics` (*type:* `list(String.t)`, *default:* `nil`) - List of metrics of the report. A report must specify at least one metric.
  *   `sortConditions` (*type:* `list(GoogleApi.AdMob.V1.Model.NetworkReportSpecSortCondition.t)`, *default:* `nil`) - Describes the sorting of report rows. The order of the condition in the list defines its precedence; the earlier the condition, the higher its precedence. If no sort conditions are specified, the row ordering is undefined.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - A report time zone. Accepts an IANA TZ name values, such as "America/Los_Angeles." If no time zone is defined, the account default takes effect. Check default value by the get account action. **Warning:** The "America/Los_Angeles" is the only supported value at the moment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateRange => GoogleApi.AdMob.V1.Model.DateRange.t() | nil,
          :dimensionFilters =>
            list(GoogleApi.AdMob.V1.Model.NetworkReportSpecDimensionFilter.t()) | nil,
          :dimensions => list(String.t()) | nil,
          :localizationSettings => GoogleApi.AdMob.V1.Model.LocalizationSettings.t() | nil,
          :maxReportRows => integer() | nil,
          :metrics => list(String.t()) | nil,
          :sortConditions =>
            list(GoogleApi.AdMob.V1.Model.NetworkReportSpecSortCondition.t()) | nil,
          :timeZone => String.t() | nil
        }

  field(:dateRange, as: GoogleApi.AdMob.V1.Model.DateRange)

  field(:dimensionFilters,
    as: GoogleApi.AdMob.V1.Model.NetworkReportSpecDimensionFilter,
    type: :list
  )

  field(:dimensions, type: :list)
  field(:localizationSettings, as: GoogleApi.AdMob.V1.Model.LocalizationSettings)
  field(:maxReportRows)
  field(:metrics, type: :list)
  field(:sortConditions, as: GoogleApi.AdMob.V1.Model.NetworkReportSpecSortCondition, type: :list)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.AdMob.V1.Model.NetworkReportSpec do
  def decode(value, options) do
    GoogleApi.AdMob.V1.Model.NetworkReportSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdMob.V1.Model.NetworkReportSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
