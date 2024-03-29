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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQuery do
  @moduledoc """
  Body structure when user makes a request to create a security report.

  ## Attributes

  *   `csvDelimiter` (*type:* `String.t`, *default:* `nil`) - Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\\t`).
  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Security Report display name which users can specify.
  *   `envgroupHostname` (*type:* `String.t`, *default:* `nil`) - Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostSecurityReport where analytics data will be grouped by organization and hostname.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax
  *   `groupByTimeUnit` (*type:* `String.t`, *default:* `nil`) - Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.
  *   `limit` (*type:* `integer()`, *default:* `nil`) - Maximum number of rows that can be returned in the result.
  *   `metrics` (*type:* `list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric.t)`, *default:* `nil`) - A list of Metrics.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.
  *   `reportDefinitionId` (*type:* `String.t`, *default:* `nil`) - Report Definition ID.
  *   `timeRange` (*type:* `any()`, *default:* `nil`) - Required. Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: "timeRange": { "start": "2018-07-29T00:13:00Z", "end": "2018-08-01T00:18:00Z" }
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csvDelimiter => String.t() | nil,
          :dimensions => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :envgroupHostname => String.t() | nil,
          :filter => String.t() | nil,
          :groupByTimeUnit => String.t() | nil,
          :limit => integer() | nil,
          :metrics =>
            list(GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric.t()) | nil,
          :mimeType => String.t() | nil,
          :reportDefinitionId => String.t() | nil,
          :timeRange => any() | nil
        }

  field(:csvDelimiter)
  field(:dimensions, type: :list)
  field(:displayName)
  field(:envgroupHostname)
  field(:filter)
  field(:groupByTimeUnit)
  field(:limit)

  field(:metrics,
    as: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQueryMetric,
    type: :list
  )

  field(:mimeType)
  field(:reportDefinitionId)
  field(:timeRange)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQuery do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1SecurityReportQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
