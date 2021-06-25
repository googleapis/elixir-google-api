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

defmodule GoogleApi.BigQuery.V2.Model.JobStatistics2 do
  @moduledoc """


  ## Attributes

  *   `biEngineStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.BiEngineStatistics.t`, *default:* `nil`) - BI Engine specific Statistics. [Output-only] BI Engine specific Statistics.
  *   `billingTier` (*type:* `integer()`, *default:* `nil`) - [Output-only] Billing tier for the job.
  *   `cacheHit` (*type:* `boolean()`, *default:* `nil`) - [Output-only] Whether the query result was fetched from the query cache.
  *   `ddlAffectedRowAccessPolicyCount` (*type:* `String.t`, *default:* `nil`) - [Output-only] [Preview] The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
  *   `ddlDestinationTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - [Output-only] The DDL destination table. Present only for ALTER TABLE RENAME TO queries. Note that ddl_target_table is used just for its type information.
  *   `ddlOperationPerformed` (*type:* `String.t`, *default:* `nil`) - The DDL operation performed, possibly dependent on the pre-existence of the DDL target. Possible values (new values might be added in the future): "CREATE": The query created the DDL target. "SKIP": No-op. Example cases: the query is CREATE TABLE IF NOT EXISTS while the table already exists, or the query is DROP TABLE IF EXISTS while the table does not exist. "REPLACE": The query replaced the DDL target. Example case: the query is CREATE OR REPLACE TABLE, and the table already exists. "DROP": The query deleted the DDL target.
  *   `ddlTargetDataset` (*type:* `GoogleApi.BigQuery.V2.Model.DatasetReference.t`, *default:* `nil`) - [Output-only] The DDL target dataset. Present only for CREATE/ALTER/DROP SCHEMA queries.
  *   `ddlTargetRoutine` (*type:* `GoogleApi.BigQuery.V2.Model.RoutineReference.t`, *default:* `nil`) - The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  *   `ddlTargetRowAccessPolicy` (*type:* `GoogleApi.BigQuery.V2.Model.RowAccessPolicyReference.t`, *default:* `nil`) - [Output-only] [Preview] The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.
  *   `ddlTargetTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - [Output-only] The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.
  *   `dmlStats` (*type:* `GoogleApi.BigQuery.V2.Model.DmlStatistics.t`, *default:* `nil`) - [Output-only] Detailed statistics for DML statements Present only for DML statements INSERT, UPDATE, DELETE or TRUNCATE.
  *   `estimatedBytesProcessed` (*type:* `String.t`, *default:* `nil`) - [Output-only] The original estimate of bytes processed for the job.
  *   `modelTraining` (*type:* `GoogleApi.BigQuery.V2.Model.BigQueryModelTraining.t`, *default:* `nil`) - [Output-only, Beta] Information about create model query job progress.
  *   `modelTrainingCurrentIteration` (*type:* `integer()`, *default:* `nil`) - [Output-only, Beta] Deprecated; do not use.
  *   `modelTrainingExpectedTotalIteration` (*type:* `String.t`, *default:* `nil`) - [Output-only, Beta] Deprecated; do not use.
  *   `numDmlAffectedRows` (*type:* `String.t`, *default:* `nil`) - [Output-only] The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  *   `queryPlan` (*type:* `list(GoogleApi.BigQuery.V2.Model.ExplainQueryStage.t)`, *default:* `nil`) - [Output-only] Describes execution plan for the query.
  *   `referencedRoutines` (*type:* `list(GoogleApi.BigQuery.V2.Model.RoutineReference.t)`, *default:* `nil`) - [Output-only] Referenced routines (persistent user-defined functions and stored procedures) for the job.
  *   `referencedTables` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableReference.t)`, *default:* `nil`) - [Output-only] Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
  *   `reservationUsage` (*type:* `list(GoogleApi.BigQuery.V2.Model.JobStatistics2ReservationUsage.t)`, *default:* `nil`) - [Output-only] Job resource usage breakdown by reservation.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - [Output-only] The schema of the results. Present only for successful dry run of non-legacy SQL queries.
  *   `statementType` (*type:* `String.t`, *default:* `nil`) - The type of query statement, if valid. Possible values (new values might be added in the future): "SELECT": SELECT query. "INSERT": INSERT query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "UPDATE": UPDATE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "DELETE": DELETE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "MERGE": MERGE query; see https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language. "ALTER_TABLE": ALTER TABLE query. "ALTER_VIEW": ALTER VIEW query. "ASSERT": ASSERT condition AS 'description'. "CREATE_FUNCTION": CREATE FUNCTION query. "CREATE_MODEL": CREATE [OR REPLACE] MODEL ... AS SELECT ... . "CREATE_PROCEDURE": CREATE PROCEDURE query. "CREATE_TABLE": CREATE [OR REPLACE] TABLE without AS SELECT. "CREATE_TABLE_AS_SELECT": CREATE [OR REPLACE] TABLE ... AS SELECT ... . "CREATE_VIEW": CREATE [OR REPLACE] VIEW ... AS SELECT ... . "DROP_FUNCTION" : DROP FUNCTION query. "DROP_PROCEDURE": DROP PROCEDURE query. "DROP_TABLE": DROP TABLE query. "DROP_VIEW": DROP VIEW query.
  *   `timeline` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryTimelineSample.t)`, *default:* `nil`) - [Output-only] [Beta] Describes a timeline of job execution.
  *   `totalBytesBilled` (*type:* `String.t`, *default:* `nil`) - [Output-only] Total bytes billed for the job.
  *   `totalBytesProcessed` (*type:* `String.t`, *default:* `nil`) - [Output-only] Total bytes processed for the job.
  *   `totalBytesProcessedAccuracy` (*type:* `String.t`, *default:* `nil`) - [Output-only] For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
  *   `totalPartitionsProcessed` (*type:* `String.t`, *default:* `nil`) - [Output-only] Total number of partitions processed from all partitioned tables referenced in the job.
  *   `totalSlotMs` (*type:* `String.t`, *default:* `nil`) - [Output-only] Slot-milliseconds for the job.
  *   `undeclaredQueryParameters` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryParameter.t)`, *default:* `nil`) - Standard SQL only: list of undeclared query parameters detected during a dry run validation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :biEngineStatistics => GoogleApi.BigQuery.V2.Model.BiEngineStatistics.t() | nil,
          :billingTier => integer() | nil,
          :cacheHit => boolean() | nil,
          :ddlAffectedRowAccessPolicyCount => String.t() | nil,
          :ddlDestinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :ddlOperationPerformed => String.t() | nil,
          :ddlTargetDataset => GoogleApi.BigQuery.V2.Model.DatasetReference.t() | nil,
          :ddlTargetRoutine => GoogleApi.BigQuery.V2.Model.RoutineReference.t() | nil,
          :ddlTargetRowAccessPolicy =>
            GoogleApi.BigQuery.V2.Model.RowAccessPolicyReference.t() | nil,
          :ddlTargetTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :dmlStats => GoogleApi.BigQuery.V2.Model.DmlStatistics.t() | nil,
          :estimatedBytesProcessed => String.t() | nil,
          :modelTraining => GoogleApi.BigQuery.V2.Model.BigQueryModelTraining.t() | nil,
          :modelTrainingCurrentIteration => integer() | nil,
          :modelTrainingExpectedTotalIteration => String.t() | nil,
          :numDmlAffectedRows => String.t() | nil,
          :queryPlan => list(GoogleApi.BigQuery.V2.Model.ExplainQueryStage.t()) | nil,
          :referencedRoutines => list(GoogleApi.BigQuery.V2.Model.RoutineReference.t()) | nil,
          :referencedTables => list(GoogleApi.BigQuery.V2.Model.TableReference.t()) | nil,
          :reservationUsage =>
            list(GoogleApi.BigQuery.V2.Model.JobStatistics2ReservationUsage.t()) | nil,
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t() | nil,
          :statementType => String.t() | nil,
          :timeline => list(GoogleApi.BigQuery.V2.Model.QueryTimelineSample.t()) | nil,
          :totalBytesBilled => String.t() | nil,
          :totalBytesProcessed => String.t() | nil,
          :totalBytesProcessedAccuracy => String.t() | nil,
          :totalPartitionsProcessed => String.t() | nil,
          :totalSlotMs => String.t() | nil,
          :undeclaredQueryParameters => list(GoogleApi.BigQuery.V2.Model.QueryParameter.t()) | nil
        }

  field(:biEngineStatistics, as: GoogleApi.BigQuery.V2.Model.BiEngineStatistics)
  field(:billingTier)
  field(:cacheHit)
  field(:ddlAffectedRowAccessPolicyCount)
  field(:ddlDestinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:ddlOperationPerformed)
  field(:ddlTargetDataset, as: GoogleApi.BigQuery.V2.Model.DatasetReference)
  field(:ddlTargetRoutine, as: GoogleApi.BigQuery.V2.Model.RoutineReference)
  field(:ddlTargetRowAccessPolicy, as: GoogleApi.BigQuery.V2.Model.RowAccessPolicyReference)
  field(:ddlTargetTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:dmlStats, as: GoogleApi.BigQuery.V2.Model.DmlStatistics)
  field(:estimatedBytesProcessed)
  field(:modelTraining, as: GoogleApi.BigQuery.V2.Model.BigQueryModelTraining)
  field(:modelTrainingCurrentIteration)
  field(:modelTrainingExpectedTotalIteration)
  field(:numDmlAffectedRows)
  field(:queryPlan, as: GoogleApi.BigQuery.V2.Model.ExplainQueryStage, type: :list)
  field(:referencedRoutines, as: GoogleApi.BigQuery.V2.Model.RoutineReference, type: :list)
  field(:referencedTables, as: GoogleApi.BigQuery.V2.Model.TableReference, type: :list)

  field(:reservationUsage,
    as: GoogleApi.BigQuery.V2.Model.JobStatistics2ReservationUsage,
    type: :list
  )

  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:statementType)
  field(:timeline, as: GoogleApi.BigQuery.V2.Model.QueryTimelineSample, type: :list)
  field(:totalBytesBilled)
  field(:totalBytesProcessed)
  field(:totalBytesProcessedAccuracy)
  field(:totalPartitionsProcessed)
  field(:totalSlotMs)
  field(:undeclaredQueryParameters, as: GoogleApi.BigQuery.V2.Model.QueryParameter, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.JobStatistics2 do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.JobStatistics2.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.JobStatistics2 do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
