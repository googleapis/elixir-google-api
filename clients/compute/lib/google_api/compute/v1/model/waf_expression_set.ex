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

defmodule GoogleApi.Compute.V1.Model.WafExpressionSet do
  @moduledoc """


  ## Attributes

  *   `aliases` (*type:* `list(String.t)`, *default:* `nil`) - A list of alternate IDs. The format should be: - E.g. XSS-stable Generic suffix like "stable" is particularly useful if a policy likes to avail newer set of expressions without having to change the policy. A given alias name can't be used for more than one entity set.
  *   `expressions` (*type:* `list(GoogleApi.Compute.V1.Model.WafExpressionSetExpression.t)`, *default:* `nil`) - List of available expressions.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Google specified expression set ID. The format should be: - E.g. XSS-20170329 required
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aliases => list(String.t()) | nil,
          :expressions => list(GoogleApi.Compute.V1.Model.WafExpressionSetExpression.t()) | nil,
          :id => String.t() | nil
        }

  field(:aliases, type: :list)
  field(:expressions, as: GoogleApi.Compute.V1.Model.WafExpressionSetExpression, type: :list)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.WafExpressionSet do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.WafExpressionSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.WafExpressionSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
