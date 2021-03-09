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

defmodule GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration do
  @moduledoc """


  ## Attributes

  *   `autodetect` (*type:* `boolean()`, *default:* `nil`) - Try to detect schema and format options automatically. Any option specified explicitly will be honored.
  *   `bigtableOptions` (*type:* `GoogleApi.BigQuery.V2.Model.BigtableOptions.t`, *default:* `nil`) - [Optional] Additional options if sourceFormat is set to BIGTABLE.
  *   `compression` (*type:* `String.t`, *default:* `nil`) - [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  *   `connectionId` (*type:* `String.t`, *default:* `nil`) - [Optional, Trusted Tester] Connection for external data source.
  *   `csvOptions` (*type:* `GoogleApi.BigQuery.V2.Model.CsvOptions.t`, *default:* `nil`) - Additional properties to set if sourceFormat is set to CSV.
  *   `googleSheetsOptions` (*type:* `GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions.t`, *default:* `nil`) - [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  *   `hivePartitioningOptions` (*type:* `GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t`, *default:* `nil`) - [Optional] Options to configure hive partitioning support.
  *   `ignoreUnknownValues` (*type:* `boolean()`, *default:* `nil`) - [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  *   `maxBadRecords` (*type:* `integer()`, *default:* `nil`) - [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  *   `parquetOptions` (*type:* `GoogleApi.BigQuery.V2.Model.ParquetOptions.t`, *default:* `nil`) - Additional properties to set if sourceFormat is set to Parquet.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  *   `sourceFormat` (*type:* `String.t`, *default:* `nil`) - [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  *   `sourceUris` (*type:* `list(String.t)`, *default:* `nil`) - [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autodetect => boolean() | nil,
          :bigtableOptions => GoogleApi.BigQuery.V2.Model.BigtableOptions.t() | nil,
          :compression => String.t() | nil,
          :connectionId => String.t() | nil,
          :csvOptions => GoogleApi.BigQuery.V2.Model.CsvOptions.t() | nil,
          :googleSheetsOptions => GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions.t() | nil,
          :hivePartitioningOptions =>
            GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t() | nil,
          :ignoreUnknownValues => boolean() | nil,
          :maxBadRecords => integer() | nil,
          :parquetOptions => GoogleApi.BigQuery.V2.Model.ParquetOptions.t() | nil,
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t() | nil,
          :sourceFormat => String.t() | nil,
          :sourceUris => list(String.t()) | nil
        }

  field(:autodetect)
  field(:bigtableOptions, as: GoogleApi.BigQuery.V2.Model.BigtableOptions)
  field(:compression)
  field(:connectionId)
  field(:csvOptions, as: GoogleApi.BigQuery.V2.Model.CsvOptions)
  field(:googleSheetsOptions, as: GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions)
  field(:hivePartitioningOptions, as: GoogleApi.BigQuery.V2.Model.HivePartitioningOptions)
  field(:ignoreUnknownValues)
  field(:maxBadRecords)
  field(:parquetOptions, as: GoogleApi.BigQuery.V2.Model.ParquetOptions)
  field(:schema, as: GoogleApi.BigQuery.V2.Model.TableSchema)
  field(:sourceFormat)
  field(:sourceUris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ExternalDataConfiguration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
