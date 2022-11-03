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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule do
  @moduledoc """
  The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.

  ## Attributes

  *   `dictionary` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Dictionary.t`, *default:* `nil`) - Dictionary which defines the rule.
  *   `excludeByHotword` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExcludeByHotword.t`, *default:* `nil`) - Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.
  *   `excludeInfoTypes` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExcludeInfoTypes.t`, *default:* `nil`) - Set of infoTypes for which findings would affect this rule.
  *   `matchingType` (*type:* `String.t`, *default:* `nil`) - How the rule is applied, see MatchingType documentation for details.
  *   `regex` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.t`, *default:* `nil`) - Regular expression which defines the rule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dictionary => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Dictionary.t() | nil,
          :excludeByHotword =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExcludeByHotword.t() | nil,
          :excludeInfoTypes =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExcludeInfoTypes.t() | nil,
          :matchingType => String.t() | nil,
          :regex => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex.t() | nil
        }

  field(:dictionary, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Dictionary)
  field(:excludeByHotword, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExcludeByHotword)
  field(:excludeInfoTypes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExcludeInfoTypes)
  field(:matchingType)
  field(:regex, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2Regex)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2ExclusionRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
