# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Sheets.V4.Model.SetDataValidationRequest do
  @moduledoc """
  Sets a data validation rule to every cell in the range.
  To clear validation in a range, call this with no rule specified.

  ## Attributes

  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The range the data validation rule should apply to.
  *   `rule` (*type:* `GoogleApi.Sheets.V4.Model.DataValidationRule.t`, *default:* `nil`) - The data validation rule to set on each cell in the range,
      or empty to clear the data validation in the range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :range => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :rule => GoogleApi.Sheets.V4.Model.DataValidationRule.t()
        }

  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:rule, as: GoogleApi.Sheets.V4.Model.DataValidationRule)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SetDataValidationRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.SetDataValidationRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SetDataValidationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
