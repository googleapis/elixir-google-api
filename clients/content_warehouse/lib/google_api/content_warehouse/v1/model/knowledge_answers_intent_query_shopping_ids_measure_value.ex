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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIdsMeasureValue do
  @moduledoc """
  A measured value of a product (e.g. Hard drive size = 1 TB). The value is measured in the facet's base unit. This does not necessarily match the unit expressed by the user in the query. The exact unit is known to the O4 server and is used in fulfillment.

  ## Attributes

  *   `facetId` (*type:* `String.t`, *default:* `nil`) - 
  *   `value` (*type:* `float()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :facetId => String.t() | nil,
          :value => float() | nil
        }

  field(:facetId)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIdsMeasureValue do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIdsMeasureValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryShoppingIdsMeasureValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
