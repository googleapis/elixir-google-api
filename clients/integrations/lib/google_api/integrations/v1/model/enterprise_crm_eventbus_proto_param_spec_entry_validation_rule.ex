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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule do
  @moduledoc """


  ## Attributes

  *   `doubleRange` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.t`, *default:* `nil`) - 
  *   `intRange` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.t`, *default:* `nil`) - 
  *   `stringRegex` (*type:* `GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :doubleRange =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange.t()
            | nil,
          :intRange =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.t()
            | nil,
          :stringRegex =>
            GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex.t()
            | nil
        }

  field(:doubleRange,
    as:
      GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleDoubleRange
  )

  field(:intRange,
    as:
      GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange
  )

  field(:stringRegex,
    as:
      GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleStringRegex
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
