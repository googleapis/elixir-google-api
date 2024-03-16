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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAdaptiveIntervalData do
  @moduledoc """
  State data for AdaptiveFrequencyEstimator

  ## Attributes

  *   `clicksGoodInterval` (*type:* `float()`, *default:* `nil`) - 
  *   `clicksGoodPriorWeight` (*type:* `float()`, *default:* `nil`) - 
  *   `clicksTotalInterval` (*type:* `float()`, *default:* `nil`) - 
  *   `clicksTotalPriorWeight` (*type:* `float()`, *default:* `nil`) - 
  *   `ctrwiInterval` (*type:* `float()`, *default:* `nil`) - 
  *   `ctrwiPriorWeight` (*type:* `float()`, *default:* `nil`) - 
  *   `dwellsInterval` (*type:* `float()`, *default:* `nil`) - 
  *   `dwellsPriorWeight` (*type:* `float()`, *default:* `nil`) - 
  *   `luDwellsInterval` (*type:* `float()`, *default:* `nil`) - 
  *   `luDwellsPriorWeight` (*type:* `float()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clicksGoodInterval => float() | nil,
          :clicksGoodPriorWeight => float() | nil,
          :clicksTotalInterval => float() | nil,
          :clicksTotalPriorWeight => float() | nil,
          :ctrwiInterval => float() | nil,
          :ctrwiPriorWeight => float() | nil,
          :dwellsInterval => float() | nil,
          :dwellsPriorWeight => float() | nil,
          :luDwellsInterval => float() | nil,
          :luDwellsPriorWeight => float() | nil
        }

  field(:clicksGoodInterval)
  field(:clicksGoodPriorWeight)
  field(:clicksTotalInterval)
  field(:clicksTotalPriorWeight)
  field(:ctrwiInterval)
  field(:ctrwiPriorWeight)
  field(:dwellsInterval)
  field(:dwellsPriorWeight)
  field(:luDwellsInterval)
  field(:luDwellsPriorWeight)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAdaptiveIntervalData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAdaptiveIntervalData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAdaptiveIntervalData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end