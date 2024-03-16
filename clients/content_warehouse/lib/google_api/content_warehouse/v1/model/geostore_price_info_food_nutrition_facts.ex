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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts do
  @moduledoc """
  This message represents nutrition facts for a food dish.

  ## Attributes

  *   `calories` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsCaloriesFact.t`, *default:* `nil`) - 
  *   `cholesterol` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t`, *default:* `nil`) - Cholesterol information for a given food dish.
  *   `protein` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t`, *default:* `nil`) - Protein information for a given food dish.
  *   `sodium` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t`, *default:* `nil`) - Sodium information for a given food dish.
  *   `totalCarbohydrate` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t`, *default:* `nil`) - Carbohydrate information for a given food dish.
  *   `totalFat` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t`, *default:* `nil`) - Fat information for a given food dish.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :calories =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsCaloriesFact.t()
            | nil,
          :cholesterol =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t()
            | nil,
          :protein =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t()
            | nil,
          :sodium =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t()
            | nil,
          :totalCarbohydrate =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t()
            | nil,
          :totalFat =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact.t()
            | nil
        }

  field(:calories,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsCaloriesFact
  )

  field(:cholesterol,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact
  )

  field(:protein,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact
  )

  field(:sodium,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact
  )

  field(:totalCarbohydrate,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact
  )

  field(:totalFat,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFactsNutritionFact
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostorePriceInfoFoodNutritionFacts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end