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

defmodule GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignals do
  @moduledoc """
  Contains only the signals necessary to perform per-URL click prediction. Used by Index Selection for scoring. NEXT ID TO USE: 7

  ## Attributes

  *   `coverage` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAgeWeightedCoverageData.t`, *default:* `nil`) - 
  *   `pagerankScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.t`, *default:* `nil`) - 
  *   `patternScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.t`, *default:* `nil`) - 
  *   `priorSignal` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignalsPriorSignal.t)`, *default:* `nil`) - 
  *   `regexpPatternScore` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.t`, *default:* `nil`) - 
  *   `sccData` (*type:* `GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccData.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coverage =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAgeWeightedCoverageData.t()
            | nil,
          :pagerankScore =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.t() | nil,
          :patternScore =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.t() | nil,
          :priorSignal =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignalsPriorSignal.t()
            )
            | nil,
          :regexpPatternScore =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore.t() | nil,
          :sccData =>
            GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccData.t() | nil
        }

  field(:coverage,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAgeWeightedCoverageData
  )

  field(:pagerankScore,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore
  )

  field(:patternScore,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore
  )

  field(:priorSignal,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignalsPriorSignal,
    type: :list
  )

  field(:regexpPatternScore,
    as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorAggregatedScore
  )

  field(:sccData, as: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorSccData)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignals do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignals.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.IndexingSignalAggregatorUrlPatternSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
