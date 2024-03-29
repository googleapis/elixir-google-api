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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression do
  @moduledoc """
  An expression parsed from a user query that describes a product or set of products.

  ## Attributes

  *   `evalData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t`, *default:* `nil`) - This field should not be used by clients of the grammar. It is intended to be used internally in Aqua for metric and regression tests.
  *   `grammaticalGender` (*type:* `String.t`, *default:* `nil`) - 
  *   `grammaticalNumber` (*type:* `String.t`, *default:* `nil`) - 
  *   `phrases` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantPhrase.t)`, *default:* `nil`) - Ordered list of phrases that the user used to describe a product.
  *   `productClassification` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification.t`, *default:* `nil`) - 
  *   `shoppingListItemInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantShoppingListItemInfo.t`, *default:* `nil`) - Associated shopping list item info. Only set when the product is come from a shopping list item.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :evalData =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData.t() | nil,
          :grammaticalGender => String.t() | nil,
          :grammaticalNumber => String.t() | nil,
          :phrases =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantPhrase.t()
            )
            | nil,
          :productClassification =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification.t()
            | nil,
          :shoppingListItemInfo =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantShoppingListItemInfo.t()
            | nil
        }

  field(:evalData, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingAnnotationEvalData)
  field(:grammaticalGender)
  field(:grammaticalNumber)

  field(:phrases,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantPhrase,
    type: :list
  )

  field(:productClassification,
    as:
      GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductClassification
  )

  field(:shoppingListItemInfo,
    as:
      GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantShoppingListItemInfo
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsShoppingAssistantProductExpression do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
