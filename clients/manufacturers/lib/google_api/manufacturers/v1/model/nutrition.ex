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

defmodule GoogleApi.Manufacturers.V1.Model.Nutrition do
  @moduledoc """


  ## Attributes

  *   `voluntaryNutritionFact` (*type:* `list(GoogleApi.Manufacturers.V1.Model.VoluntaryNutritionFact.t)`, *default:* `nil`) - Voluntary nutrition fact.
  *   `saturatedFat` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Saturated fat.
  *   `dietaryFiberDailyPercentage` (*type:* `float()`, *default:* `nil`) - Dietary fiber daily percentage.
  *   `vitaminD` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Vitamin D.
  *   `totalSugarsDailyPercentage` (*type:* `float()`, *default:* `nil`) - Total sugars daily percentage.
  *   `servingsPerContainer` (*type:* `String.t`, *default:* `nil`) - Servings per container.
  *   `protein` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Protein.
  *   `monounsaturatedFat` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Monounsaturated fat.
  *   `sodiumDailyPercentage` (*type:* `float()`, *default:* `nil`) - Sodium daily percentage.
  *   `polyunsaturatedFat` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Polyunsaturated fat.
  *   `polyols` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Polyols.
  *   `nutritionFactMeasure` (*type:* `String.t`, *default:* `nil`) - Nutrition fact measure.
  *   `cholesterol` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Cholesterol.
  *   `transFat` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Trans fat.
  *   `addedSugars` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Added sugars.
  *   `calciumDailyPercentage` (*type:* `float()`, *default:* `nil`) - Calcium daily percentage.
  *   `preparedSizeDescription` (*type:* `String.t`, *default:* `nil`) - Prepared size description.
  *   `dietaryFiber` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Dietary fiber.
  *   `potassium` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Potassium.
  *   `saturatedFatDailyPercentage` (*type:* `float()`, *default:* `nil`) - Saturated fat daily percentage.
  *   `sodium` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Sodium.
  *   `servingSizeMeasure` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Serving size measure.
  *   `totalCarbohydrate` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Total carbohydrate.
  *   `ironDailyPercentage` (*type:* `float()`, *default:* `nil`) - Iron daily percentage.
  *   `folateMcgDfe` (*type:* `float()`, *default:* `nil`) - Folate mcg DFE.
  *   `energyFromFat` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Energy from fat.
  *   `potassiumDailyPercentage` (*type:* `float()`, *default:* `nil`) - Potassium daily percentage.
  *   `addedSugarsDailyPercentage` (*type:* `float()`, *default:* `nil`) - Added sugars daily percentage.
  *   `folateDailyPercentage` (*type:* `float()`, *default:* `nil`) - Folate daily percentage.
  *   `vitaminDDailyPercentage` (*type:* `float()`, *default:* `nil`) - Vitamin D daily percentage.
  *   `totalCarbohydrateDailyPercentage` (*type:* `float()`, *default:* `nil`) - Total carbohydrate daily percentage.
  *   `starch` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Starch.
  *   `transFatDailyPercentage` (*type:* `float()`, *default:* `nil`) - Trans fat daily percentage.
  *   `calcium` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Calcium.
  *   `iron` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Iron.
  *   `servingSizeDescription` (*type:* `String.t`, *default:* `nil`) - Food Serving Size. Serving size description.
  *   `proteinDailyPercentage` (*type:* `float()`, *default:* `nil`) - Protein daily percentage.
  *   `energy` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Mandatory Nutrition Facts. Energy.
  *   `cholesterolDailyPercentage` (*type:* `float()`, *default:* `nil`) - Cholesterol daily percentage.
  *   `folateFolicAcid` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Folate folic acid.
  *   `totalSugars` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Total sugars.
  *   `totalFatDailyPercentage` (*type:* `float()`, *default:* `nil`) - Total fat daily percentage.
  *   `totalFat` (*type:* `GoogleApi.Manufacturers.V1.Model.FloatUnit.t`, *default:* `nil`) - Total fat.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :voluntaryNutritionFact =>
            list(GoogleApi.Manufacturers.V1.Model.VoluntaryNutritionFact.t()) | nil,
          :saturatedFat => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :dietaryFiberDailyPercentage => float() | nil,
          :vitaminD => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :totalSugarsDailyPercentage => float() | nil,
          :servingsPerContainer => String.t() | nil,
          :protein => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :monounsaturatedFat => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :sodiumDailyPercentage => float() | nil,
          :polyunsaturatedFat => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :polyols => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :nutritionFactMeasure => String.t() | nil,
          :cholesterol => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :transFat => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :addedSugars => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :calciumDailyPercentage => float() | nil,
          :preparedSizeDescription => String.t() | nil,
          :dietaryFiber => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :potassium => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :saturatedFatDailyPercentage => float() | nil,
          :sodium => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :servingSizeMeasure => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :totalCarbohydrate => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :ironDailyPercentage => float() | nil,
          :folateMcgDfe => float() | nil,
          :energyFromFat => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :potassiumDailyPercentage => float() | nil,
          :addedSugarsDailyPercentage => float() | nil,
          :folateDailyPercentage => float() | nil,
          :vitaminDDailyPercentage => float() | nil,
          :totalCarbohydrateDailyPercentage => float() | nil,
          :starch => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :transFatDailyPercentage => float() | nil,
          :calcium => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :iron => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :servingSizeDescription => String.t() | nil,
          :proteinDailyPercentage => float() | nil,
          :energy => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :cholesterolDailyPercentage => float() | nil,
          :folateFolicAcid => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :totalSugars => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil,
          :totalFatDailyPercentage => float() | nil,
          :totalFat => GoogleApi.Manufacturers.V1.Model.FloatUnit.t() | nil
        }

  field(:voluntaryNutritionFact,
    as: GoogleApi.Manufacturers.V1.Model.VoluntaryNutritionFact,
    type: :list
  )

  field(:saturatedFat, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:dietaryFiberDailyPercentage)
  field(:vitaminD, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:totalSugarsDailyPercentage)
  field(:servingsPerContainer)
  field(:protein, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:monounsaturatedFat, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:sodiumDailyPercentage)
  field(:polyunsaturatedFat, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:polyols, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:nutritionFactMeasure)
  field(:cholesterol, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:transFat, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:addedSugars, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:calciumDailyPercentage)
  field(:preparedSizeDescription)
  field(:dietaryFiber, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:potassium, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:saturatedFatDailyPercentage)
  field(:sodium, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:servingSizeMeasure, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:totalCarbohydrate, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:ironDailyPercentage)
  field(:folateMcgDfe)
  field(:energyFromFat, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:potassiumDailyPercentage)
  field(:addedSugarsDailyPercentage)
  field(:folateDailyPercentage)
  field(:vitaminDDailyPercentage)
  field(:totalCarbohydrateDailyPercentage)
  field(:starch, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:transFatDailyPercentage)
  field(:calcium, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:iron, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:servingSizeDescription)
  field(:proteinDailyPercentage)
  field(:energy, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:cholesterolDailyPercentage)
  field(:folateFolicAcid, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:totalSugars, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
  field(:totalFatDailyPercentage)
  field(:totalFat, as: GoogleApi.Manufacturers.V1.Model.FloatUnit)
end

defimpl Poison.Decoder, for: GoogleApi.Manufacturers.V1.Model.Nutrition do
  def decode(value, options) do
    GoogleApi.Manufacturers.V1.Model.Nutrition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Manufacturers.V1.Model.Nutrition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
