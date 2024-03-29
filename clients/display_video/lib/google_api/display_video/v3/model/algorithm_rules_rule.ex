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

defmodule GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRule do
  @moduledoc """
  Set of conditions. The return value of the rule is either: * The return value for single met condition or * The defined default return value if no conditions are met.

  ## Attributes

  *   `conditions` (*type:* `list(GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRuleCondition.t)`, *default:* `nil`) - List of conditions in this rule. The criteria among conditions should be mutually exclusive.
  *   `defaultReturnValue` (*type:* `GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalValue.t`, *default:* `nil`) - The default return value applied when none of the conditions are met.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditions =>
            list(GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRuleCondition.t()) | nil,
          :defaultReturnValue =>
            GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalValue.t() | nil
        }

  field(:conditions, as: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRuleCondition, type: :list)
  field(:defaultReturnValue, as: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesSignalValue)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRule do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.AlgorithmRulesRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
