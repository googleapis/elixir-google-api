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

defmodule GoogleApi.MigrationCenter.V1.Model.ReportSummaryAssetAggregateStats do
  @moduledoc """
  Aggregate statistics for a collection of assets.

  ## Attributes

  *   `coreCountHistogram` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData.t`, *default:* `nil`) - Histogram showing a distribution of CPU core counts.
  *   `memoryBytesHistogram` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData.t`, *default:* `nil`) - Histogram showing a distribution of memory sizes.
  *   `memoryUtilizationChart` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryUtilizationChartData.t`, *default:* `nil`) - Total memory split into Used/Free buckets.
  *   `operatingSystem` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryChartData.t`, *default:* `nil`) - Count of assets grouped by Operating System families.
  *   `storageBytesHistogram` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData.t`, *default:* `nil`) - Histogram showing a distribution of storage sizes.
  *   `storageUtilizationChart` (*type:* `GoogleApi.MigrationCenter.V1.Model.ReportSummaryUtilizationChartData.t`, *default:* `nil`) - Total memory split into Used/Free buckets.
  *   `totalAssets` (*type:* `String.t`, *default:* `nil`) - Count of the number of unique assets in this collection.
  *   `totalCores` (*type:* `String.t`, *default:* `nil`) - Sum of the CPU core count of all the assets in this collection.
  *   `totalMemoryBytes` (*type:* `String.t`, *default:* `nil`) - Sum of the memory in bytes of all the assets in this collection.
  *   `totalStorageBytes` (*type:* `String.t`, *default:* `nil`) - Sum of persistent storage in bytes of all the assets in this collection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coreCountHistogram =>
            GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData.t() | nil,
          :memoryBytesHistogram =>
            GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData.t() | nil,
          :memoryUtilizationChart =>
            GoogleApi.MigrationCenter.V1.Model.ReportSummaryUtilizationChartData.t() | nil,
          :operatingSystem => GoogleApi.MigrationCenter.V1.Model.ReportSummaryChartData.t() | nil,
          :storageBytesHistogram =>
            GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData.t() | nil,
          :storageUtilizationChart =>
            GoogleApi.MigrationCenter.V1.Model.ReportSummaryUtilizationChartData.t() | nil,
          :totalAssets => String.t() | nil,
          :totalCores => String.t() | nil,
          :totalMemoryBytes => String.t() | nil,
          :totalStorageBytes => String.t() | nil
        }

  field(:coreCountHistogram,
    as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData
  )

  field(:memoryBytesHistogram,
    as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData
  )

  field(:memoryUtilizationChart,
    as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryUtilizationChartData
  )

  field(:operatingSystem, as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryChartData)

  field(:storageBytesHistogram,
    as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryHistogramChartData
  )

  field(:storageUtilizationChart,
    as: GoogleApi.MigrationCenter.V1.Model.ReportSummaryUtilizationChartData
  )

  field(:totalAssets)
  field(:totalCores)
  field(:totalMemoryBytes)
  field(:totalStorageBytes)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.ReportSummaryAssetAggregateStats do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.ReportSummaryAssetAggregateStats.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.ReportSummaryAssetAggregateStats do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end