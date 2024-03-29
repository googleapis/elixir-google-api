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

defmodule GoogleApi.SearchConsole.V1.Model.SearchAnalyticsQueryRequest do
  @moduledoc """


  ## Attributes

  *   `aggregationType` (*type:* `String.t`, *default:* `nil`) - [Optional; Default is \\"auto\\"] How data is aggregated. If aggregated by property, all data for the same property is aggregated; if aggregated by page, all data is aggregated by canonical URI. If you filter or group by page, choose AUTO; otherwise you can aggregate either by property or by page, depending on how you want your data calculated; see the help documentation to learn how data is calculated differently by site versus by page. **Note:** If you group or filter by page, you cannot aggregate by property. If you specify any value other than AUTO, the aggregation type in the result will match the requested type, or if you request an invalid type, you will get an error. The API will never change your aggregation type if the requested type is invalid.
  *   `dataState` (*type:* `String.t`, *default:* `nil`) - The data state to be fetched, can be full or all, the latter including full and partial data.
  *   `dimensionFilterGroups` (*type:* `list(GoogleApi.SearchConsole.V1.Model.ApiDimensionFilterGroup.t)`, *default:* `nil`) - [Optional] Zero or more filters to apply to the dimension grouping values; for example, 'query contains \\"buy\\"' to see only data where the query string contains the substring \\"buy\\" (not case-sensitive). You can filter by a dimension without grouping by it.
  *   `dimensions` (*type:* `list(String.t)`, *default:* `nil`) - [Optional] Zero or more dimensions to group results by. Dimensions are the group-by values in the Search Analytics page. Dimensions are combined to create a unique row key for each row. Results are grouped in the order that you supply these dimensions.
  *   `endDate` (*type:* `String.t`, *default:* `nil`) - [Required] End date of the requested date range, in YYYY-MM-DD format, in PST (UTC - 8:00). Must be greater than or equal to the start date. This value is included in the range.
  *   `rowLimit` (*type:* `integer()`, *default:* `nil`) - [Optional; Default is 1000] The maximum number of rows to return. Must be a number from 1 to 25,000 (inclusive).
  *   `searchType` (*type:* `String.t`, *default:* `nil`) - [Optional; Default is \\"web\\"] The search type to filter for.
  *   `startDate` (*type:* `String.t`, *default:* `nil`) -  [Required] Start date of the requested date range, in YYYY-MM-DD format, in PST time (UTC - 8:00). Must be less than or equal to the end date. This value is included in the range.
  *   `startRow` (*type:* `integer()`, *default:* `nil`) - [Optional; Default is 0] Zero-based index of the first row in the response. Must be a non-negative number.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Optional. [Optional; Default is \\"web\\"] Type of report: search type, or either Discover or Gnews.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregationType => String.t() | nil,
          :dataState => String.t() | nil,
          :dimensionFilterGroups =>
            list(GoogleApi.SearchConsole.V1.Model.ApiDimensionFilterGroup.t()) | nil,
          :dimensions => list(String.t()) | nil,
          :endDate => String.t() | nil,
          :rowLimit => integer() | nil,
          :searchType => String.t() | nil,
          :startDate => String.t() | nil,
          :startRow => integer() | nil,
          :type => String.t() | nil
        }

  field(:aggregationType)
  field(:dataState)

  field(:dimensionFilterGroups,
    as: GoogleApi.SearchConsole.V1.Model.ApiDimensionFilterGroup,
    type: :list
  )

  field(:dimensions, type: :list)
  field(:endDate)
  field(:rowLimit)
  field(:searchType)
  field(:startDate)
  field(:startRow)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.SearchConsole.V1.Model.SearchAnalyticsQueryRequest do
  def decode(value, options) do
    GoogleApi.SearchConsole.V1.Model.SearchAnalyticsQueryRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchConsole.V1.Model.SearchAnalyticsQueryRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
