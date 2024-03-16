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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateRuleSetRequest do
  @moduledoc """
  Request message for RuleSetService.UpdateRuleSet.

  ## Attributes

  *   `ruleSet` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleSet.t`, *default:* `nil`) - Required. The rule set to update.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ruleSet =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleSet.t() | nil
        }

  field(:ruleSet, as: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1RuleSet)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateRuleSetRequest do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateRuleSetRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GoogleCloudContentwarehouseV1UpdateRuleSetRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end