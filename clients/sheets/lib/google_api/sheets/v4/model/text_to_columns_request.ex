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

defmodule GoogleApi.Sheets.V4.Model.TextToColumnsRequest do
  @moduledoc """
  Splits a column of text into multiple columns, based on a delimiter in each cell.

  ## Attributes

  - delimiter (String.t): The delimiter to use. Used only if delimiterType is CUSTOM. Defaults to: `null`.
  - delimiterType (String.t): The delimiter type to use. Defaults to: `null`.
    - Enum - one of [DELIMITER_TYPE_UNSPECIFIED, COMMA, SEMICOLON, PERIOD, SPACE, CUSTOM, AUTODETECT]
  - source (GridRange): The source data range.  This must span exactly one column. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :delimiter => any(),
          :delimiterType => any(),
          :source => GoogleApi.Sheets.V4.Model.GridRange.t()
        }

  field(:delimiter)
  field(:delimiterType)
  field(:source, as: GoogleApi.Sheets.V4.Model.GridRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.TextToColumnsRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.TextToColumnsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.TextToColumnsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
