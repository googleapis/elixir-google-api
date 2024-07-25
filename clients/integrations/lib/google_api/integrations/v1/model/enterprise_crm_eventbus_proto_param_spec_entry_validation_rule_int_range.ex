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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange do
  @moduledoc """
  Range used to validate longs and ints.

  ## Attributes

  *   `max` (*type:* `String.t`, *default:* `nil`) - The inclusive maximum of the acceptable range.
  *   `min` (*type:* `String.t`, *default:* `nil`) - The inclusive minimum of the acceptable range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :max => String.t() | nil,
          :min => String.t() | nil
        }

  field(:max)
  field(:min)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoParamSpecEntryValidationRuleIntRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
