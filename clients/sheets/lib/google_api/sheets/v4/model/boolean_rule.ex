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

defmodule GoogleApi.Sheets.V4.Model.BooleanRule do
  @moduledoc """
  A rule that may or may not match, depending on the condition.

  ## Attributes

  - condition (BooleanCondition): The condition of the rule. If the condition evaluates to true, the format is applied. Defaults to: `null`.
  - format (CellFormat): The format to apply. Conditional formatting can only apply a subset of formatting: bold, italic, strikethrough, foreground color &amp; background color. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.Sheets.V4.Model.BooleanCondition.t(),
          :format => GoogleApi.Sheets.V4.Model.CellFormat.t()
        }

  field(:condition, as: GoogleApi.Sheets.V4.Model.BooleanCondition)
  field(:format, as: GoogleApi.Sheets.V4.Model.CellFormat)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BooleanRule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BooleanRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BooleanRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
