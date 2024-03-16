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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEvaluatorOutput do
  @moduledoc """
  Represents the output of the Rule Evaluator.

  ## Attributes

  *   `invalidRules` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1InvalidRule.t)`, *default:* `nil`) - A subset of triggered rules that failed the validation check(s) after parsing.
  *   `matchedRules` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Rule.t)`, *default:* `nil`) - A subset of triggered rules that are evaluated true for a given request.
  *   `triggeredRules` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Rule.t)`, *default:* `nil`) - List of rules fetched from database for the given request trigger type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :invalidRules =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1InvalidRule.t())
            | nil,
          :matchedRules =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Rule.t()) | nil,
          :triggeredRules =>
            list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Rule.t()) | nil
        }

  field(:invalidRules,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1InvalidRule,
    type: :list
  )

  field(:matchedRules,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Rule,
    type: :list
  )

  field(:triggeredRules,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1Rule,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEvaluatorOutput do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEvaluatorOutput.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleEvaluatorOutput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end