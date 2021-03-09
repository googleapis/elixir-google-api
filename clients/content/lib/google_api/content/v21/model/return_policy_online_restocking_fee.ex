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

defmodule GoogleApi.Content.V21.Model.ReturnPolicyOnlineRestockingFee do
  @moduledoc """
  The restocking fee. This can either be a fixed fee or a micro percent.

  ## Attributes

  *   `fixedFee` (*type:* `GoogleApi.Content.V21.Model.PriceAmount.t`, *default:* `nil`) - Fixed restocking fee.
  *   `microPercent` (*type:* `integer()`, *default:* `nil`) - Percent of total price in micros. 15,000,000 means 15% of the total price would be charged.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fixedFee => GoogleApi.Content.V21.Model.PriceAmount.t() | nil,
          :microPercent => integer() | nil
        }

  field(:fixedFee, as: GoogleApi.Content.V21.Model.PriceAmount)
  field(:microPercent)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.ReturnPolicyOnlineRestockingFee do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.ReturnPolicyOnlineRestockingFee.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.ReturnPolicyOnlineRestockingFee do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
