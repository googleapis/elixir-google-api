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

defmodule GoogleApi.Jobs.V3.Model.JobQuery do
  @moduledoc """
  Input only. The query required to perform a search query.

  ## Attributes

  *   `commuteFilter` (*type:* `GoogleApi.Jobs.V3.Model.CommuteFilter.t`, *default:* `nil`) - Optional. Allows filtering jobs by commute time with different travel methods (for example, driving or public transit). Note: This only works with COMMUTE MODE. When specified, [JobQuery.location_filters] is ignored. Currently we don't support sorting by commute time.
  *   `companyDisplayNames` (*type:* `list(String.t)`, *default:* `nil`) - Optional. This filter specifies the exact company display name of the jobs to search against. If a value isn't specified, jobs within the search results are associated with any company. If multiple values are specified, jobs within the search results may be associated with any of the specified companies. At most 20 company display name filters are allowed.
  *   `companyNames` (*type:* `list(String.t)`, *default:* `nil`) - Optional. This filter specifies the company entities to search against. If a value isn't specified, jobs are searched for against all companies. If multiple values are specified, jobs are searched against the companies specified. The format is "projects/{project_id}/companies/{company_id}", for example, "projects/api-test-project/companies/foo". At most 20 company filters are allowed.
  *   `compensationFilter` (*type:* `GoogleApi.Jobs.V3.Model.CompensationFilter.t`, *default:* `nil`) - Optional. This search filter is applied only to Job.compensation_info. For example, if the filter is specified as "Hourly job with per-hour compensation > $15", only jobs meeting these criteria are searched. If a filter isn't defined, all open jobs are searched.
  *   `customAttributeFilter` (*type:* `String.t`, *default:* `nil`) - Optional. This filter specifies a structured syntax to match against the Job.custom_attributes marked as `filterable`. The syntax for this expression is a subset of SQL syntax. Supported operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the left of the operator is a custom field key and the right of the operator is a number or a quoted string. You must escape backslash (\\\\) and quote (\\") characters. Supported functions are `LOWER([field_name])` to perform a case insensitive match and `EMPTY([field_name])` to filter on the existence of a key. Boolean expressions (AND/OR/NOT) are supported up to 3 levels of nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum of 100 comparisons or functions are allowed in the expression. The expression must be < 10000 bytes in length. Sample Query: `(LOWER(driving_license)="class \\"a\\"" OR EMPTY(driving_license)) AND driving_years > 10`
  *   `disableSpellCheck` (*type:* `boolean()`, *default:* `nil`) - Optional. This flag controls the spell-check feature. If false, the service attempts to correct a misspelled query, for example, "enginee" is corrected to "engineer". Defaults to false: a spell check is performed.
  *   `employmentTypes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The employment type filter specifies the employment type of jobs to search against, such as EmploymentType.FULL_TIME. If a value is not specified, jobs in the search results includes any employment type. If multiple values are specified, jobs in the search results include any of the specified employment types.
  *   `jobCategories` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The category filter specifies the categories of jobs to search against. See Category for more information. If a value is not specified, jobs from any category are searched against. If multiple values are specified, jobs from any of the specified categories are searched against.
  *   `languageCodes` (*type:* `list(String.t)`, *default:* `nil`) - Optional. This filter specifies the locale of jobs to search against, for example, "en-US". If a value isn't specified, the search results can contain jobs in any locale. Language codes should be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47). At most 10 language code filters are allowed.
  *   `locationFilters` (*type:* `list(GoogleApi.Jobs.V3.Model.LocationFilter.t)`, *default:* `nil`) - Optional. The location filter specifies geo-regions containing the jobs to search against. See LocationFilter for more information. If a location value isn't specified, jobs fitting the other search criteria are retrieved regardless of where they're located. If multiple values are specified, jobs are retrieved from any of the specified locations. If different values are specified for the LocationFilter.distance_in_miles parameter, the maximum provided distance is used for all locations. At most 5 location filters are allowed.
  *   `publishTimeRange` (*type:* `GoogleApi.Jobs.V3.Model.TimestampRange.t`, *default:* `nil`) - Optional. Jobs published within a range specified by this filter are searched against.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Optional. The query string that matches against the job title, description, and location fields. The maximum number of allowed characters is 255.
  *   `queryLanguageCode` (*type:* `String.t`, *default:* `nil`) - The language code of query. For example, "en-US". This field helps to better interpret the query. If a value isn't specified, the query language code is automatically detected, which may not be accurate. Language code should be in BCP-47 format, such as "en-US" or "sr-Latn". For more information, see [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commuteFilter => GoogleApi.Jobs.V3.Model.CommuteFilter.t() | nil,
          :companyDisplayNames => list(String.t()) | nil,
          :companyNames => list(String.t()) | nil,
          :compensationFilter => GoogleApi.Jobs.V3.Model.CompensationFilter.t() | nil,
          :customAttributeFilter => String.t() | nil,
          :disableSpellCheck => boolean() | nil,
          :employmentTypes => list(String.t()) | nil,
          :jobCategories => list(String.t()) | nil,
          :languageCodes => list(String.t()) | nil,
          :locationFilters => list(GoogleApi.Jobs.V3.Model.LocationFilter.t()) | nil,
          :publishTimeRange => GoogleApi.Jobs.V3.Model.TimestampRange.t() | nil,
          :query => String.t() | nil,
          :queryLanguageCode => String.t() | nil
        }

  field(:commuteFilter, as: GoogleApi.Jobs.V3.Model.CommuteFilter)
  field(:companyDisplayNames, type: :list)
  field(:companyNames, type: :list)
  field(:compensationFilter, as: GoogleApi.Jobs.V3.Model.CompensationFilter)
  field(:customAttributeFilter)
  field(:disableSpellCheck)
  field(:employmentTypes, type: :list)
  field(:jobCategories, type: :list)
  field(:languageCodes, type: :list)
  field(:locationFilters, as: GoogleApi.Jobs.V3.Model.LocationFilter, type: :list)
  field(:publishTimeRange, as: GoogleApi.Jobs.V3.Model.TimestampRange)
  field(:query)
  field(:queryLanguageCode)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.JobQuery do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.JobQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.JobQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
