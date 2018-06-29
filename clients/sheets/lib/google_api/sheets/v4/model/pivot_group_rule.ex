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

defmodule GoogleApi.Sheets.V4.Model.PivotGroupRule do
  @moduledoc """
  An optional setting on a PivotGroup that defines buckets for the values in the source data column rather than breaking out each individual value. Only one PivotGroup with a group rule may be added for each column in the source data, though on any given column you may add both a PivotGroup that has a rule and a PivotGroup that does not.

  ## Attributes

  - dateTimeRule (DateTimeRule): A DateTimeRule. Defaults to: `null`.
  - histogramRule (HistogramRule): A HistogramRule. Defaults to: `null`.
  - manualRule (ManualRule): A ManualRule. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dateTimeRule => GoogleApi.Sheets.V4.Model.DateTimeRule.t(),
          :histogramRule => GoogleApi.Sheets.V4.Model.HistogramRule.t(),
          :manualRule => GoogleApi.Sheets.V4.Model.ManualRule.t()
        }

  field(:dateTimeRule, as: GoogleApi.Sheets.V4.Model.DateTimeRule)
  field(:histogramRule, as: GoogleApi.Sheets.V4.Model.HistogramRule)
  field(:manualRule, as: GoogleApi.Sheets.V4.Model.ManualRule)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PivotGroupRule do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.PivotGroupRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PivotGroupRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
