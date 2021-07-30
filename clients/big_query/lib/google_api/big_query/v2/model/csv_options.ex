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

defmodule GoogleApi.BigQuery.V2.Model.CsvOptions do
  @moduledoc """


  ## Attributes

  *   `allowJaggedRows` (*type:* `boolean()`, *default:* `nil`) - [Optional] Indicates if BigQuery should accept rows that are missing trailing optional columns. If true, BigQuery treats missing trailing columns as null values. If false, records with missing trailing columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false.
  *   `allowQuotedNewlines` (*type:* `boolean()`, *default:* `nil`) - [Optional] Indicates if BigQuery should allow quoted data sections that contain newline characters in a CSV file. The default value is false.
  *   `encoding` (*type:* `String.t`, *default:* `nil`) - [Optional] The character encoding of the data. The supported values are UTF-8 or ISO-8859-1. The default value is UTF-8. BigQuery decodes the data after the raw, binary data has been split using the values of the quote and fieldDelimiter properties.
  *   `fieldDelimiter` (*type:* `String.t`, *default:* `nil`) - [Optional] The separator for fields in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. BigQuery also supports the escape sequence "\\t" to specify a tab separator. The default value is a comma (',').
  *   `null_marker` (*type:* `String.t`, *default:* `nil`) - [Optional] An custom string that will represent a NULL value in CSV import data.
  *   `quote` (*type:* `String.t`, *default:* `"`) - [Optional] The value that is used to quote data sections in a CSV file. BigQuery converts the string to ISO-8859-1 encoding, and then uses the first byte of the encoded string to split the data in its raw, binary state. The default value is a double-quote ('"'). If your data does not contain quoted sections, set the property value to an empty string. If your data contains quoted newline characters, you must also set the allowQuotedNewlines property to true.
  *   `skipLeadingRows` (*type:* `String.t`, *default:* `nil`) - [Optional] The number of rows at the top of a CSV file that BigQuery will skip when reading the data. The default value is 0. This property is useful if you have header rows in the file that should be skipped. When autodetect is on, the behavior is the following: * skipLeadingRows unspecified - Autodetect tries to detect headers in the first row. If they are not detected, the row is read as data. Otherwise data is read starting from the second row. * skipLeadingRows is 0 - Instructs autodetect that there are no headers and data should be read starting from the first row. * skipLeadingRows = N > 0 - Autodetect skips N-1 rows and tries to detect headers in row N. If headers are not detected, row N is just skipped. Otherwise row N is used to extract column names for the detected schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowJaggedRows => boolean() | nil,
          :allowQuotedNewlines => boolean() | nil,
          :encoding => String.t() | nil,
          :fieldDelimiter => String.t() | nil,
          :null_marker => String.t() | nil,
          :quote => String.t() | nil,
          :skipLeadingRows => String.t() | nil
        }

  field(:allowJaggedRows)
  field(:allowQuotedNewlines)
  field(:encoding)
  field(:fieldDelimiter)
  field(:null_marker)
  field(:quote)
  field(:skipLeadingRows)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.CsvOptions do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.CsvOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.CsvOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
