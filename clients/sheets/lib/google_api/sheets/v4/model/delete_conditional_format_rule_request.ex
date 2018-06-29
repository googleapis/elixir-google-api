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

defmodule GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest do
  @moduledoc """
  Deletes a conditional format rule at the given index. All subsequent rules&#39; indexes are decremented.

  ## Attributes

  - index (integer()): The zero-based index of the rule to be deleted. Defaults to: `null`.
  - sheetId (integer()): The sheet the rule is being deleted from. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => any(),
          :sheetId => any()
        }

  field(:index)
  field(:sheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DeleteConditionalFormatRuleRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
