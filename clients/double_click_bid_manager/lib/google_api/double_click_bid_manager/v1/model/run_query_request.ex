# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DoubleClickBidManager.V1.Model.RunQueryRequest do
  @moduledoc """
  Request to run a stored query to generate a report.

  ## Attributes

  - dataRange (String): Report data range used to generate the report. Defaults to: `null`.
    - Enum - one of [ALL_TIME, CURRENT_DAY, CUSTOM_DATES, LAST_14_DAYS, LAST_30_DAYS, LAST_365_DAYS, LAST_7_DAYS, LAST_90_DAYS, MONTH_TO_DATE, PREVIOUS_DAY, PREVIOUS_HALF_MONTH, PREVIOUS_MONTH, PREVIOUS_QUARTER, PREVIOUS_WEEK, PREVIOUS_YEAR, QUARTER_TO_DATE, TYPE_NOT_SUPPORTED, WEEK_TO_DATE, YEAR_TO_DATE]
  - reportDataEndTimeMs (String): The ending time for the data that is shown in the report. Note, reportDataEndTimeMs is required if dataRange is CUSTOM_DATES and ignored otherwise. Defaults to: `null`.
  - reportDataStartTimeMs (String): The starting time for the data that is shown in the report. Note, reportDataStartTimeMs is required if dataRange is CUSTOM_DATES and ignored otherwise. Defaults to: `null`.
  - timezoneCode (String): Canonical timezone code for report data time. Defaults to America/New_York. Defaults to: `null`.
  """

  defstruct [
    :"dataRange",
    :"reportDataEndTimeMs",
    :"reportDataStartTimeMs",
    :"timezoneCode"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V1.Model.RunQueryRequest do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V1.Model.RunQueryRequest do
  def encode(value, options) do
    GoogleApi.DoubleClickBidManager.V1.Deserializer.serialize_non_nil(value, options)
  end
end

