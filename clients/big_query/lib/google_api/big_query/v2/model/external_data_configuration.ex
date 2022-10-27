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
  *   `avroOptions` (*type:* `GoogleApi.BigQuery.V2.Model.AvroOptions.t`, *default:* `nil`) - Additional properties to set if sourceFormat is set to Avro.
  *   `bigtableOptions` (*type:* `GoogleApi.BigQuery.V2.Model.BigtableOptions.t`, *default:* `nil`) - [Optional] Additional options if sourceFormat is set to BIGTABLE.
  *   `compression` (*type:* `String.t`, *default:* `nil`) - [Optional] The compression type of the data source. Possible values include GZIP and NONE. The default value is NONE. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  *   `connectionId` (*type:* `String.t`, *default:* `nil`) - [Optional, Trusted Tester] Connection for external data source.
  *   `csvOptions` (*type:* `GoogleApi.BigQuery.V2.Model.CsvOptions.t`, *default:* `nil`) - Additional properties to set if sourceFormat is set to CSV.
  *   `decimalTargetTypes` (*type:* `list(String.t)`, *default:* `nil`) - [Optional] Defines the list of possible SQL data types to which the source decimal values are converted. This list and the precision and the scale parameters of the decimal field determine the target type. In the order of NUMERIC, BIGNUMERIC, and STRING, a type is picked if it is in the specified list and if it supports the precision and the scale. STRING supports all precision and scale values. If none of the listed types supports the precision and the scale, the type supporting the widest range in the specified list is picked, and if a value exceeds the supported range when reading the data, an error will be thrown. Example: Suppose the value of this field is ["NUMERIC", "BIGNUMERIC"]. If (precision,scale) is: (38,9) -> NUMERIC; (39,9) -> BIGNUMERIC (NUMERIC cannot hold 30 integer digits); (38,10) -> BIGNUMERIC (NUMERIC cannot hold 10 fractional digits); (76,38) -> BIGNUMERIC; (77,38) -> BIGNUMERIC (error if value exeeds supported range). This field cannot contain duplicate types. The order of the types in this field is ignored. For example, ["BIGNUMERIC", "NUMERIC"] is the same as ["NUMERIC", "BIGNUMERIC"] and NUMERIC always takes precedence over BIGNUMERIC. Defaults to ["NUMERIC", "STRING"] for ORC and ["NUMERIC"] for the other file formats.
  *   `googleSheetsOptions` (*type:* `GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions.t`, *default:* `nil`) - [Optional] Additional options if sourceFormat is set to GOOGLE_SHEETS.
  *   `hivePartitioningOptions` (*type:* `GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t`, *default:* `nil`) - [Optional] Options to configure hive partitioning support.
  *   `ignoreUnknownValues` (*type:* `boolean()`, *default:* `nil`) - [Optional] Indicates if BigQuery should allow extra values that are not represented in the table schema. If true, the extra values are ignored. If false, records with extra columns are treated as bad records, and if there are too many bad records, an invalid error is returned in the job result. The default value is false. The sourceFormat property determines what BigQuery treats as an extra value: CSV: Trailing columns JSON: Named values that don't match any column names Google Cloud Bigtable: This setting is ignored. Google Cloud Datastore backups: This setting is ignored. Avro: This setting is ignored.
  *   `maxBadRecords` (*type:* `integer()`, *default:* `nil`) - [Optional] The maximum number of bad records that BigQuery can ignore when reading data. If the number of bad records exceeds this value, an invalid error is returned in the job result. This is only valid for CSV, JSON, and Google Sheets. The default value is 0, which requires that all records are valid. This setting is ignored for Google Cloud Bigtable, Google Cloud Datastore backups and Avro formats.
  *   `metadataCacheMode` (*type:* `String.t`, *default:* `nil`) - [Optional] Metadata Cache Mode for the table. Set this to enable caching of metadata from external data source.
  *   `objectMetadata` (*type:* `String.t`, *default:* `nil`) - ObjectMetadata is used to create Object Tables. Object Tables contain a listing of objects (with their metadata) found at the source_uris. If ObjectMetadata is set, source_format should be omitted. Currently SIMPLE is the only supported Object Metadata type.
  *   `parquetOptions` (*type:* `GoogleApi.BigQuery.V2.Model.ParquetOptions.t`, *default:* `nil`) - Additional properties to set if sourceFormat is set to Parquet.
  *   `referenceFileSchemaUri` (*type:* `String.t`, *default:* `nil`) - [Optional] Provide a referencing file with the expected table schema. Enabled for the format: AVRO, PARQUET, ORC.
  *   `schema` (*type:* `GoogleApi.BigQuery.V2.Model.TableSchema.t`, *default:* `nil`) - [Optional] The schema for the data. Schema is required for CSV and JSON formats. Schema is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats.
  *   `sourceFormat` (*type:* `String.t`, *default:* `nil`) - [Required] The data format. For CSV files, specify "CSV". For Google sheets, specify "GOOGLE_SHEETS". For newline-delimited JSON, specify "NEWLINE_DELIMITED_JSON". For Avro files, specify "AVRO". For Google Cloud Datastore backups, specify "DATASTORE_BACKUP". [Beta] For Google Cloud Bigtable, specify "BIGTABLE".
  *   `sourceUris` (*type:* `list(String.t)`, *default:* `nil`) - [Required] The fully-qualified URIs that point to your data in Google Cloud. For Google Cloud Storage URIs: Each URI can contain one '*' wildcard character and it must come after the 'bucket' name. Size limits related to load jobs apply to external data sources. For Google Cloud Bigtable URIs: Exactly one URI can be specified and it has be a fully specified and valid HTTPS URL for a Google Cloud Bigtable table. For Google Cloud Datastore backups, exactly one URI can be specified. Also, the '*' wildcard character is not allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autodetect => boolean() | nil,
          :avroOptions => GoogleApi.BigQuery.V2.Model.AvroOptions.t() | nil,
          :bigtableOptions => GoogleApi.BigQuery.V2.Model.BigtableOptions.t() | nil,
          :compression => String.t() | nil,
          :connectionId => String.t() | nil,
          :csvOptions => GoogleApi.BigQuery.V2.Model.CsvOptions.t() | nil,
          :decimalTargetTypes => list(String.t()) | nil,
          :googleSheetsOptions => GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions.t() | nil,
          :hivePartitioningOptions =>
            GoogleApi.BigQuery.V2.Model.HivePartitioningOptions.t() | nil,
          :ignoreUnknownValues => boolean() | nil,
          :maxBadRecords => integer() | nil,
          :metadataCacheMode => String.t() | nil,
          :objectMetadata => String.t() | nil,
          :parquetOptions => GoogleApi.BigQuery.V2.Model.ParquetOptions.t() | nil,
          :referenceFileSchemaUri => String.t() | nil,
          :schema => GoogleApi.BigQuery.V2.Model.TableSchema.t() | nil,
          :sourceFormat => String.t() | nil,
          :sourceUris => list(String.t()) | nil
        }

  field(:autodetect)
  field(:avroOptions, as: GoogleApi.BigQuery.V2.Model.AvroOptions)
  field(:bigtableOptions, as: GoogleApi.BigQuery.V2.Model.BigtableOptions)
  field(:compression)
  field(:connectionId)
  field(:csvOptions, as: GoogleApi.BigQuery.V2.Model.CsvOptions)
  field(:decimalTargetTypes, type: :list)
  field(:googleSheetsOptions, as: GoogleApi.BigQuery.V2.Model.GoogleSheetsOptions)
  field(:hivePartitioningOptions, as: GoogleApi.BigQuery.V2.Model.HivePartitioningOptions)
  field(:ignoreUnknownValues)
  field(:maxBadRecords)
  field(:metadataCacheMode)
  field(:objectMetadata)
  field(:parquetOptions, as: GoogleApi.BigQuery.V2.Model.ParquetOptions)
  field(:referenceFileSchemaUri)
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
