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

defmodule GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed do
  @moduledoc """
  DatabaseResourceFeed is the top level proto to be used to ingest different database resource level events into Condor platform.

  ## Attributes

  *   `feedTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Required. Timestamp when feed is generated.
  *   `feedType` (*type:* `String.t`, *default:* `nil`) - Required. Type feed to be ingested into condor
  *   `observabilityMetricData` (*type:* `GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainObservabilityMetricData.t`, *default:* `nil`) - 
  *   `recommendationSignalData` (*type:* `GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData.t`, *default:* `nil`) - 
  *   `resourceHealthSignalData` (*type:* `GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData.t`, *default:* `nil`) - 
  *   `resourceId` (*type:* `GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceId.t`, *default:* `nil`) - Primary key associated with the Resource. resource_id is available in individual feed level as well.
  *   `resourceMetadata` (*type:* `GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :feedTimestamp => DateTime.t() | nil,
          :feedType => String.t() | nil,
          :observabilityMetricData =>
            GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainObservabilityMetricData.t()
            | nil,
          :recommendationSignalData =>
            GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData.t()
            | nil,
          :resourceHealthSignalData =>
            GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData.t()
            | nil,
          :resourceId =>
            GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceId.t()
            | nil,
          :resourceMetadata =>
            GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata.t()
            | nil
        }

  field(:feedTimestamp, as: DateTime)
  field(:feedType)

  field(:observabilityMetricData,
    as: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainObservabilityMetricData
  )

  field(:recommendationSignalData,
    as:
      GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceRecommendationSignalData
  )

  field(:resourceHealthSignalData,
    as:
      GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceHealthSignalData
  )

  field(:resourceId,
    as: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceId
  )

  field(:resourceMetadata,
    as: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceMetadata
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AlloyDB.V1.Model.StorageDatabasecenterPartnerapiV1mainDatabaseResourceFeed do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
