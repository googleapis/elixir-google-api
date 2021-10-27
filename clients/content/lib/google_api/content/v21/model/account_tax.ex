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

defmodule GoogleApi.Content.V21.Model.AccountTax do
  @moduledoc """
  The tax settings of a merchant account. All methods require the admin role.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the account to which these account tax settings belong.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#accountTax`".
  *   `rules` (*type:* `list(GoogleApi.Content.V21.Model.AccountTaxTaxRule.t)`, *default:* `nil`) - Tax rules. Updating the tax rules will enable US taxes (not reversible). Defining no rules is equivalent to not charging tax at all.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :kind => String.t() | nil,
          :rules => list(GoogleApi.Content.V21.Model.AccountTaxTaxRule.t()) | nil
        }

  field(:accountId)
  field(:kind)
  field(:rules, as: GoogleApi.Content.V21.Model.AccountTaxTaxRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountTax do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountTax.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountTax do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
