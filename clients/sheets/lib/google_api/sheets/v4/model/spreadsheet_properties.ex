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

defmodule GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  @moduledoc """
  Properties of a spreadsheet.

  ## Attributes

  - autoRecalc (String.t): The amount of time to wait before volatile functions are recalculated. Defaults to: `null`.
    - Enum - one of [RECALCULATION_INTERVAL_UNSPECIFIED, ON_CHANGE, MINUTE, HOUR]
  - defaultFormat (CellFormat): The default format of all cells in the spreadsheet. CellData.effectiveFormat will not be set if the cell&#39;s format is equal to this default format. This field is read-only. Defaults to: `null`.
  - iterativeCalculationSettings (IterativeCalculationSettings): Determines whether and how circular references are resolved with iterative calculation.  Absence of this field means that circular references will result in calculation errors. Defaults to: `null`.
  - locale (String.t): The locale of the spreadsheet in one of the following formats:  * an ISO 639-1 language code such as &#x60;en&#x60;  * an ISO 639-2 language code such as &#x60;fil&#x60;, if no 639-1 code exists  * a combination of the ISO language code and country code, such as &#x60;en_US&#x60;  Note: when updating this field, not all locales/languages are supported. Defaults to: `null`.
  - timeZone (String.t): The time zone of the spreadsheet, in CLDR format such as &#x60;America/New_York&#x60;. If the time zone isn&#39;t recognized, this may be a custom time zone such as &#x60;GMT-07:00&#x60;. Defaults to: `null`.
  - title (String.t): The title of the spreadsheet. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoRecalc => any(),
          :defaultFormat => GoogleApi.Sheets.V4.Model.CellFormat.t(),
          :iterativeCalculationSettings =>
            GoogleApi.Sheets.V4.Model.IterativeCalculationSettings.t(),
          :locale => any(),
          :timeZone => any(),
          :title => any()
        }

  field(:autoRecalc)
  field(:defaultFormat, as: GoogleApi.Sheets.V4.Model.CellFormat)
  field(:iterativeCalculationSettings, as: GoogleApi.Sheets.V4.Model.IterativeCalculationSettings)
  field(:locale)
  field(:timeZone)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.SpreadsheetProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SpreadsheetProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
