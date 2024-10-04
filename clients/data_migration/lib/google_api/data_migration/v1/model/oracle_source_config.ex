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

defmodule GoogleApi.DataMigration.V1.Model.OracleSourceConfig do
  @moduledoc """
  Configuration for Oracle as a source in a migration.

  ## Attributes

  *   `binaryLogParser` (*type:* `GoogleApi.DataMigration.V1.Model.BinaryLogParser.t`, *default:* `nil`) - Use Binary Log Parser.
  *   `cdcStartPosition` (*type:* `String.t`, *default:* `nil`) - Optional. The schema change number (SCN) to start CDC data migration from.
  *   `logMiner` (*type:* `GoogleApi.DataMigration.V1.Model.LogMiner.t`, *default:* `nil`) - Use LogMiner.
  *   `maxConcurrentCdcConnections` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum number of connections Database Migration Service will open to the source for CDC phase.
  *   `maxConcurrentFullDumpConnections` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum number of connections Database Migration Service will open to the source for full dump phase.
  *   `skipFullDump` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to skip full dump or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binaryLogParser => GoogleApi.DataMigration.V1.Model.BinaryLogParser.t() | nil,
          :cdcStartPosition => String.t() | nil,
          :logMiner => GoogleApi.DataMigration.V1.Model.LogMiner.t() | nil,
          :maxConcurrentCdcConnections => integer() | nil,
          :maxConcurrentFullDumpConnections => integer() | nil,
          :skipFullDump => boolean() | nil
        }

  field(:binaryLogParser, as: GoogleApi.DataMigration.V1.Model.BinaryLogParser)
  field(:cdcStartPosition)
  field(:logMiner, as: GoogleApi.DataMigration.V1.Model.LogMiner)
  field(:maxConcurrentCdcConnections)
  field(:maxConcurrentFullDumpConnections)
  field(:skipFullDump)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.OracleSourceConfig do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.OracleSourceConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.OracleSourceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
