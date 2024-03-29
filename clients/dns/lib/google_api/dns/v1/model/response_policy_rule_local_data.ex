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

defmodule GoogleApi.DNS.V1.Model.ResponsePolicyRuleLocalData do
  @moduledoc """


  ## Attributes

  *   `localDatas` (*type:* `list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t)`, *default:* `nil`) - All resource record sets for this selector, one per resource record type. The name must match the dns_name.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :localDatas => list(GoogleApi.DNS.V1.Model.ResourceRecordSet.t()) | nil
        }

  field(:localDatas, as: GoogleApi.DNS.V1.Model.ResourceRecordSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ResponsePolicyRuleLocalData do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ResponsePolicyRuleLocalData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ResponsePolicyRuleLocalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
