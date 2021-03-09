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

defmodule GoogleApi.DisplayVideo.V1.Model.LineItemBudget do
  @moduledoc """
  Settings that control how budget is allocated.

  ## Attributes

  *   `budgetAllocationType` (*type:* `String.t`, *default:* `nil`) - Required. The type of the budget allocation. `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC` is only applicable when automatic budget allocation is enabled for the parent insertion order.
  *   `budgetUnit` (*type:* `String.t`, *default:* `nil`) - Output only. The budget unit specifies whether the budget is currency based or impression based. This value is inherited from the parent insertion order.
  *   `maxAmount` (*type:* `String.t`, *default:* `nil`) - The maximum budget amount the line item will spend. Must be greater than 0. When budget_allocation_type is: * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_AUTOMATIC`, this field is immutable and is set by the system. * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_FIXED`, if budget_unit is: - `BUDGET_UNIT_CURRENCY`, this field represents maximum budget amount to spend, in micros of the advertiser's currency. For example, 1500000 represents 1.5 standard units of the currency. - `BUDGET_UNIT_IMPRESSIONS`, this field represents the maximum number of impressions to serve. * `LINE_ITEM_BUDGET_ALLOCATION_TYPE_UNLIMITED`, this field is not applicable and will be ignored by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :budgetAllocationType => String.t() | nil,
          :budgetUnit => String.t() | nil,
          :maxAmount => String.t() | nil
        }

  field(:budgetAllocationType)
  field(:budgetUnit)
  field(:maxAmount)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.LineItemBudget do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.LineItemBudget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.LineItemBudget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
