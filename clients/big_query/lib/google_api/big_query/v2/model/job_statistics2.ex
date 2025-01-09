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
  Statistics for a query job.

  ## Attributes

  *   `billingTier` (*type:* `integer()`, *default:* `nil`) - Output only. Billing tier for the job. This is a BigQuery-specific concept which is not related to the Google Cloud notion of "free tier". The value here is a measure of the query's resource consumption relative to the amount of data scanned. For on-demand queries, the limit is 100, and all queries within this limit are billed at the standard on-demand rates. On-demand queries that exceed this limit will fail with a billingTierLimitExceeded error.
  *   `statementType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of query statement, if valid. Possible values: * `SELECT`: [`SELECT`](https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax#select_list) statement. * `ASSERT`: [`ASSERT`](https://cloud.google.com/bigquery/docs/reference/standard-sql/debugging-statements#assert) statement. * `INSERT`: [`INSERT`](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#insert_statement) statement. * `UPDATE`: [`UPDATE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#update_statement) statement. * `DELETE`: [`DELETE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language) statement. * `MERGE`: [`MERGE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-manipulation-language) statement. * `CREATE_TABLE`: [`CREATE TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement) statement, without `AS SELECT`. * `CREATE_TABLE_AS_SELECT`: [`CREATE TABLE AS SELECT`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_statement) statement. * `CREATE_VIEW`: [`CREATE VIEW`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_view_statement) statement. * `CREATE_MODEL`: [`CREATE MODEL`](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-create#create_model_statement) statement. * `CREATE_MATERIALIZED_VIEW`: [`CREATE MATERIALIZED VIEW`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_materialized_view_statement) statement. * `CREATE_FUNCTION`: [`CREATE FUNCTION`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_function_statement) statement. * `CREATE_TABLE_FUNCTION`: [`CREATE TABLE FUNCTION`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_table_function_statement) statement. * `CREATE_PROCEDURE`: [`CREATE PROCEDURE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_procedure) statement. * `CREATE_ROW_ACCESS_POLICY`: [`CREATE ROW ACCESS POLICY`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_row_access_policy_statement) statement. * `CREATE_SCHEMA`: [`CREATE SCHEMA`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_schema_statement) statement. * `CREATE_SNAPSHOT_TABLE`: [`CREATE SNAPSHOT TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_snapshot_table_statement) statement. * `CREATE_SEARCH_INDEX`: [`CREATE SEARCH INDEX`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_search_index_statement) statement. * `DROP_TABLE`: [`DROP TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_statement) statement. * `DROP_EXTERNAL_TABLE`: [`DROP EXTERNAL TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_external_table_statement) statement. * `DROP_VIEW`: [`DROP VIEW`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_view_statement) statement. * `DROP_MODEL`: [`DROP MODEL`](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-drop-model) statement. * `DROP_MATERIALIZED_VIEW`: [`DROP MATERIALIZED VIEW`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_materialized_view_statement) statement. * `DROP_FUNCTION` : [`DROP FUNCTION`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_function_statement) statement. * `DROP_TABLE_FUNCTION` : [`DROP TABLE FUNCTION`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_table_function) statement. * `DROP_PROCEDURE`: [`DROP PROCEDURE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_procedure_statement) statement. * `DROP_SEARCH_INDEX`: [`DROP SEARCH INDEX`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_search_index) statement. * `DROP_SCHEMA`: [`DROP SCHEMA`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_schema_statement) statement. * `DROP_SNAPSHOT_TABLE`: [`DROP SNAPSHOT TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_snapshot_table_statement) statement. * `DROP_ROW_ACCESS_POLICY`: [`DROP [ALL] ROW ACCESS POLICY|POLICIES`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#drop_row_access_policy_statement) statement. * `ALTER_TABLE`: [`ALTER TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_table_set_options_statement) statement. * `ALTER_VIEW`: [`ALTER VIEW`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_view_set_options_statement) statement. * `ALTER_MATERIALIZED_VIEW`: [`ALTER MATERIALIZED VIEW`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_materialized_view_set_options_statement) statement. * `ALTER_SCHEMA`: [`ALTER SCHEMA`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#alter_schema_set_options_statement) statement. * `SCRIPT`: [`SCRIPT`](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language). * `TRUNCATE_TABLE`: [`TRUNCATE TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/dml-syntax#truncate_table_statement) statement. * `CREATE_EXTERNAL_TABLE`: [`CREATE EXTERNAL TABLE`](https://cloud.google.com/bigquery/docs/reference/standard-sql/data-definition-language#create_external_table_statement) statement. * `EXPORT_DATA`: [`EXPORT DATA`](https://cloud.google.com/bigquery/docs/reference/standard-sql/other-statements#export_data_statement) statement. * `EXPORT_MODEL`: [`EXPORT MODEL`](https://cloud.google.com/bigquery-ml/docs/reference/standard-sql/bigqueryml-syntax-export-model) statement. * `LOAD_DATA`: [`LOAD DATA`](https://cloud.google.com/bigquery/docs/reference/standard-sql/other-statements#load_data_statement) statement. * `CALL`: [`CALL`](https://cloud.google.com/bigquery/docs/reference/standard-sql/procedural-language#call) statement.
  *   `modelTrainingCurrentIteration` (*type:* `integer()`, *default:* `nil`) - Deprecated.
  *   `dclTargetDataset` (*type:* `GoogleApi.BigQuery.V2.Model.DatasetReference.t`, *default:* `nil`) - Output only. Referenced dataset for DCL statement.
  *   `estimatedBytesProcessed` (*type:* `String.t`, *default:* `nil`) - Output only. The original estimate of bytes processed for the job.
  *   `ddlOperationPerformed` (*type:* `String.t`, *default:* `nil`) - Output only. The DDL operation performed, possibly dependent on the pre-existence of the DDL target.
  *   `sparkStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.SparkStatistics.t`, *default:* `nil`) - Output only. Statistics of a Spark procedure job.
  *   `totalSlotMs` (*type:* `String.t`, *default:* `nil`) - Output only. Slot-milliseconds for the job.
  *   `exportDataStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.ExportDataStatistics.t`, *default:* `nil`) - Output only. Stats for EXPORT DATA statement.
  *   `loadQueryStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.LoadQueryStatistics.t`, *default:* `nil`) - Output only. Statistics for a LOAD query.
  *   `ddlTargetTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Output only. The DDL target table. Present only for CREATE/DROP TABLE/VIEW and DROP ALL ROW ACCESS POLICIES queries.
  *   `mlStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.MlStatistics.t`, *default:* `nil`) - Output only. Statistics of a BigQuery ML training job.
  *   `biEngineStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.BiEngineStatistics.t`, *default:* `nil`) - Output only. BI Engine specific Statistics.
  *   `totalBytesBilled` (*type:* `String.t`, *default:* `nil`) - Output only. If the project is configured to use on-demand pricing, then this field contains the total bytes billed for the job. If the project is configured to use flat-rate pricing, then you are not billed for bytes and this field is informational only.
  *   `ddlTargetRowAccessPolicy` (*type:* `GoogleApi.BigQuery.V2.Model.RowAccessPolicyReference.t`, *default:* `nil`) - Output only. The DDL target row access policy. Present only for CREATE/DROP ROW ACCESS POLICY queries.
  *   `externalServiceCosts` (*type:* `list(GoogleApi.BigQuery.V2.Model.ExternalServiceCost.t)`, *default:* `nil`) - Output only. Job cost breakdown as bigquery internal cost and external service costs.
  *   `totalBytesProcessed` (*type:* `String.t`, *default:* `nil`) - Output only. Total bytes processed for the job.
  *   `totalPartitionsProcessed` (*type:* `String.t`, *default:* `nil`) - Output only. Total number of partitions processed from all partitioned tables referenced in the job.
  *   `timeline` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryTimelineSample.t)`, *default:* `nil`) - Output only. Describes a timeline of job execution.
  *   `totalBytesProcessedAccuracy` (*type:* `String.t`, *default:* `nil`) - Output only. For dry-run jobs, totalBytesProcessed is an estimate and this field specifies the accuracy of the estimate. Possible values can be: UNKNOWN: accuracy of the estimate is unknown. PRECISE: estimate is precise. LOWER_BOUND: estimate is lower bound of what the query would cost. UPPER_BOUND: estimate is upper bound of what the query would cost.
  *   `queryPlan` (*type:* `list(GoogleApi.BigQuery.V2.Model.ExplainQueryStage.t)`, *default:* `nil`) - Output only. Describes execution plan for the query.
  *   `dclTargetView` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Output only. Referenced view for DCL statement.
  *   `modelTraining` (*type:* `GoogleApi.BigQuery.V2.Model.BigQueryModelTraining.t`, *default:* `nil`) - Deprecated.
  *   `ddlTargetDataset` (*type:* `GoogleApi.BigQuery.V2.Model.DatasetReference.t`, *default:* `nil`) - Output only. The DDL target dataset. Present only for CREATE/ALTER/DROP SCHEMA(dataset) queries.
  *   `numDmlAffectedRows` (*type:* `String.t`, *default:* `nil`) - Output only. The number of rows affected by a DML statement. Present only for DML statements INSERT, UPDATE or DELETE.
  *   `metadataCacheStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.MetadataCacheStatistics.t`, *default:* `nil`) - Output only. Statistics of metadata cache usage in a query for BigLake tables.
  *   `cacheHit` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the query result was fetched from the query cache.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - Output only. The schema of the results. Present only for successful dry run of non-legacy SQL queries.
  *   `dclTargetTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Output only. Referenced table for DCL statement.
  *   `materializedViewStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.MaterializedViewStatistics.t`, *default:* `nil`) - Output only. Statistics of materialized views of a query job.
  *   `undeclaredQueryParameters` (*type:* `list(GoogleApi.BigQuery.V2.Model.QueryParameter.t)`, *default:* `nil`) - Output only. GoogleSQL only: list of undeclared query parameters detected during a dry run validation.
  *   `ddlDestinationTable` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - Output only. The table after rename. Present only for ALTER TABLE RENAME TO query.
  *   `queryInfo` (*type:* `GoogleApi.BigQuery.V2.Model.QueryInfo.t`, *default:* `nil`) - Output only. Query optimization information for a QUERY job.
  *   `ddlAffectedRowAccessPolicyCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of row access policies affected by a DDL statement. Present only for DROP ALL ROW ACCESS POLICIES queries.
  *   `reservationUsage` (*type:* `list(GoogleApi.BigQuery.V2.Model.JobStatistics2ReservationUsage.t)`, *default:* `nil`) - Output only. Job resource usage breakdown by reservation. This field reported misleading information and will no longer be populated.
  *   `referencedRoutines` (*type:* `list(GoogleApi.BigQuery.V2.Model.RoutineReference.t)`, *default:* `nil`) - Output only. Referenced routines for the job.
  *   `transferredBytes` (*type:* `String.t`, *default:* `nil`) - Output only. Total bytes transferred for cross-cloud queries such as Cross Cloud Transfer and CREATE TABLE AS SELECT (CTAS).
  *   `searchStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.SearchStatistics.t`, *default:* `nil`) - Output only. Search query specific statistics.
  *   `vectorSearchStatistics` (*type:* `GoogleApi.BigQuery.V2.Model.VectorSearchStatistics.t`, *default:* `nil`) - Output only. Vector Search query specific statistics.
  *   `referencedTables` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableReference.t)`, *default:* `nil`) - Output only. Referenced tables for the job. Queries that reference more than 50 tables will not have a complete list.
  *   `ddlTargetRoutine` (*type:* `GoogleApi.BigQuery.V2.Model.RoutineReference.t`, *default:* `nil`) - Output only. [Beta] The DDL target routine. Present only for CREATE/DROP FUNCTION/PROCEDURE queries.
  *   `modelTrainingExpectedTotalIteration` (*type:* `String.t`, *default:* `nil`) - Deprecated.
  *   `performanceInsights` (*type:* `GoogleApi.BigQuery.V2.Model.PerformanceInsights.t`, *default:* `nil`) - Output only. Performance insights.
  *   `dmlStats` (*type:* `GoogleApi.BigQuery.V2.Model.DmlStatistics.t`, *default:* `nil`) - Output only. Detailed statistics for DML statements INSERT, UPDATE, DELETE, MERGE or TRUNCATE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingTier => integer() | nil,
          :statementType => String.t() | nil,
          :modelTrainingCurrentIteration => integer() | nil,
          :dclTargetDataset => GoogleApi.BigQuery.V2.Model.DatasetReference.t() | nil,
          :estimatedBytesProcessed => String.t() | nil,
          :ddlOperationPerformed => String.t() | nil,
          :sparkStatistics => GoogleApi.BigQuery.V2.Model.SparkStatistics.t() | nil,
          :totalSlotMs => String.t() | nil,
          :exportDataStatistics => GoogleApi.BigQuery.V2.Model.ExportDataStatistics.t() | nil,
          :loadQueryStatistics => GoogleApi.BigQuery.V2.Model.LoadQueryStatistics.t() | nil,
          :ddlTargetTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :mlStatistics => GoogleApi.BigQuery.V2.Model.MlStatistics.t() | nil,
          :biEngineStatistics => GoogleApi.BigQuery.V2.Model.BiEngineStatistics.t() | nil,
          :totalBytesBilled => String.t() | nil,
          :ddlTargetRowAccessPolicy =>
            GoogleApi.BigQuery.V2.Model.RowAccessPolicyReference.t() | nil,
          :externalServiceCosts =>
            list(GoogleApi.BigQuery.V2.Model.ExternalServiceCost.t()) | nil,
          :totalBytesProcessed => String.t() | nil,
          :totalPartitionsProcessed => String.t() | nil,
          :timeline => list(GoogleApi.BigQuery.V2.Model.QueryTimelineSample.t()) | nil,
          :totalBytesProcessedAccuracy => String.t() | nil,
          :queryPlan => list(GoogleApi.BigQuery.V2.Model.ExplainQueryStage.t()) | nil,
          :dclTargetView => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :modelTraining => GoogleApi.BigQuery.V2.Model.BigQueryModelTraining.t() | nil,
          :ddlTargetDataset => GoogleApi.BigQuery.V2.Model.DatasetReference.t() | nil,
          :numDmlAffectedRows => String.t() | nil,
          :metadataCacheStatistics =>
            GoogleApi.BigQuery.V2.Model.MetadataCacheStatistics.t() | nil,
          :cacheHit => boolean() | nil,
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t() | nil,
          :dclTargetTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :materializedViewStatistics =>
            GoogleApi.BigQuery.V2.Model.MaterializedViewStatistics.t() | nil,
          :undeclaredQueryParameters =>
            list(GoogleApi.BigQuery.V2.Model.QueryParameter.t()) | nil,
          :ddlDestinationTable => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil,
          :queryInfo => GoogleApi.BigQuery.V2.Model.QueryInfo.t() | nil,
          :ddlAffectedRowAccessPolicyCount => String.t() | nil,
          :reservationUsage =>
            list(GoogleApi.BigQuery.V2.Model.JobStatistics2ReservationUsage.t()) | nil,
          :referencedRoutines => list(GoogleApi.BigQuery.V2.Model.RoutineReference.t()) | nil,
          :transferredBytes => String.t() | nil,
          :searchStatistics => GoogleApi.BigQuery.V2.Model.SearchStatistics.t() | nil,
          :vectorSearchStatistics => GoogleApi.BigQuery.V2.Model.VectorSearchStatistics.t() | nil,
          :referencedTables => list(GoogleApi.BigQuery.V2.Model.TableReference.t()) | nil,
          :ddlTargetRoutine => GoogleApi.BigQuery.V2.Model.RoutineReference.t() | nil,
          :modelTrainingExpectedTotalIteration => String.t() | nil,
          :performanceInsights => GoogleApi.BigQuery.V2.Model.PerformanceInsights.t() | nil,
          :dmlStats => GoogleApi.BigQuery.V2.Model.DmlStatistics.t() | nil
        }

  field(:billingTier)
  field(:statementType)
  field(:modelTrainingCurrentIteration)
  field(:dclTargetDataset, as: GoogleApi.BigQuery.V2.Model.DatasetReference)
  field(:estimatedBytesProcessed)
  field(:ddlOperationPerformed)
  field(:sparkStatistics, as: GoogleApi.BigQuery.V2.Model.SparkStatistics)
  field(:totalSlotMs)
  field(:exportDataStatistics, as: GoogleApi.BigQuery.V2.Model.ExportDataStatistics)
  field(:loadQueryStatistics, as: GoogleApi.BigQuery.V2.Model.LoadQueryStatistics)
  field(:ddlTargetTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:mlStatistics, as: GoogleApi.BigQuery.V2.Model.MlStatistics)
  field(:biEngineStatistics, as: GoogleApi.BigQuery.V2.Model.BiEngineStatistics)
  field(:totalBytesBilled)
  field(:ddlTargetRowAccessPolicy, as: GoogleApi.BigQuery.V2.Model.RowAccessPolicyReference)
  field(:externalServiceCosts, as: GoogleApi.BigQuery.V2.Model.ExternalServiceCost, type: :list)
  field(:totalBytesProcessed)
  field(:totalPartitionsProcessed)
  field(:timeline, as: GoogleApi.BigQuery.V2.Model.QueryTimelineSample, type: :list)
  field(:totalBytesProcessedAccuracy)
  field(:queryPlan, as: GoogleApi.BigQuery.V2.Model.ExplainQueryStage, type: :list)
  field(:dclTargetView, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:modelTraining, as: GoogleApi.BigQuery.V2.Model.BigQueryModelTraining)
  field(:ddlTargetDataset, as: GoogleApi.BigQuery.V2.Model.DatasetReference)
  field(:numDmlAffectedRows)
  field(:metadataCacheStatistics, as: GoogleApi.BigQuery.V2.Model.MetadataCacheStatistics)
  field(:cacheHit)
  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:dclTargetTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:materializedViewStatistics, as: GoogleApi.BigQuery.V2.Model.MaterializedViewStatistics)
  field(:undeclaredQueryParameters, as: GoogleApi.BigQuery.V2.Model.QueryParameter, type: :list)
  field(:ddlDestinationTable, as: GoogleApi.BigQuery.V2.Model.TableReference)
  field(:queryInfo, as: GoogleApi.BigQuery.V2.Model.QueryInfo)
  field(:ddlAffectedRowAccessPolicyCount)

  field(:reservationUsage,
    as: GoogleApi.BigQuery.V2.Model.JobStatistics2ReservationUsage,
    type: :list
  )

  field(:referencedRoutines, as: GoogleApi.BigQuery.V2.Model.RoutineReference, type: :list)
  field(:transferredBytes)
  field(:searchStatistics, as: GoogleApi.BigQuery.V2.Model.SearchStatistics)
  field(:vectorSearchStatistics, as: GoogleApi.BigQuery.V2.Model.VectorSearchStatistics)
  field(:referencedTables, as: GoogleApi.BigQuery.V2.Model.TableReference, type: :list)
  field(:ddlTargetRoutine, as: GoogleApi.BigQuery.V2.Model.RoutineReference)
  field(:modelTrainingExpectedTotalIteration)
  field(:performanceInsights, as: GoogleApi.BigQuery.V2.Model.PerformanceInsights)
  field(:dmlStats, as: GoogleApi.BigQuery.V2.Model.DmlStatistics)
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
