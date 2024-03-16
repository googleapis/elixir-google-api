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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1InputDataConfig do
  @moduledoc """
  Specifies Vertex AI owned input data to be used for training, and possibly evaluating, the Model.

  ## Attributes

  *   `annotationSchemaUri` (*type:* `String.t`, *default:* `nil`) - Applicable only to custom training with Datasets that have DataItems and Annotations. Cloud Storage URI that points to a YAML file describing the annotation schema. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/annotation/ , note that the chosen schema must be consistent with metadata of the Dataset specified by dataset_id. Only Annotations that both match this schema and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both annotations_filter and annotation_schema_uri.
  *   `annotationsFilter` (*type:* `String.t`, *default:* `nil`) - Applicable only to Datasets that have DataItems and Annotations. A filter on Annotations of the Dataset. Only Annotations that both match this filter and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on (for the auto-assigned that role is decided by Vertex AI). A filter with same syntax as the one used in ListAnnotations may be used, but note here it filters across all Annotations of the Dataset, and not just within a single DataItem.
  *   `bigqueryDestination` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQueryDestination.t`, *default:* `nil`) - Only applicable to custom training with tabular Dataset with BigQuery source. The BigQuery project location where the training data is to be written to. In the given project a new dataset is created with name `dataset___` where timestamp is in YYYY_MM_DDThh_mm_ss_sssZ format. All training input data is written into that dataset. In the dataset three tables are created, `training`, `validation` and `test`. * AIP_DATA_FORMAT = "bigquery". * AIP_TRAINING_DATA_URI = "bigquery_destination.dataset___.training" * AIP_VALIDATION_DATA_URI = "bigquery_destination.dataset___.validation" * AIP_TEST_DATA_URI = "bigquery_destination.dataset___.test"
  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the Dataset in the same Project and Location which data will be used to train the Model. The Dataset must use schema compatible with Model being trained, and what is compatible should be described in the used TrainingPipeline's training_task_definition. For tabular Datasets, all their data is exported to training, to pick and choose from.
  *   `filterSplit` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FilterSplit.t`, *default:* `nil`) - Split based on the provided filters for each set.
  *   `fractionSplit` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit.t`, *default:* `nil`) - Split based on fractions defining the size of each set.
  *   `gcsDestination` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination.t`, *default:* `nil`) - The Cloud Storage location where the training data is to be written to. In the given directory a new directory is created with name: `dataset---` where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. All training input data is written into that directory. The Vertex AI environment variables representing Cloud Storage data URIs are represented in the Cloud Storage wildcard format to support sharded data. e.g.: "gs://.../training-*.jsonl" * AIP_DATA_FORMAT = "jsonl" for non-tabular data, "csv" for tabular data * AIP_TRAINING_DATA_URI = "gcs_destination/dataset---/training-*.${AIP_DATA_FORMAT}" * AIP_VALIDATION_DATA_URI = "gcs_destination/dataset---/validation-*.${AIP_DATA_FORMAT}" * AIP_TEST_DATA_URI = "gcs_destination/dataset---/test-*.${AIP_DATA_FORMAT}"
  *   `persistMlUseAssignment` (*type:* `boolean()`, *default:* `nil`) - Whether to persist the ML use assignment to data item system labels.
  *   `predefinedSplit` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredefinedSplit.t`, *default:* `nil`) - Supported only for tabular Datasets. Split based on a predefined key.
  *   `savedQueryId` (*type:* `String.t`, *default:* `nil`) - Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery (annotation set) under the Dataset specified by dataset_id used for filtering Annotations for training. Only Annotations that are associated with this SavedQuery are used in respectively training. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both saved_query_id and annotations_filter. Only one of saved_query_id and annotation_schema_uri should be specified as both of them represent the same thing: problem type.
  *   `stratifiedSplit` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StratifiedSplit.t`, *default:* `nil`) - Supported only for tabular Datasets. Split based on the distribution of the specified column.
  *   `timestampSplit` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit.t`, *default:* `nil`) - Supported only for tabular Datasets. Split based on the timestamp of the input data pieces.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :annotationSchemaUri => String.t() | nil,
          :annotationsFilter => String.t() | nil,
          :bigqueryDestination =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQueryDestination.t() | nil,
          :datasetId => String.t() | nil,
          :filterSplit =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FilterSplit.t() | nil,
          :fractionSplit =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit.t() | nil,
          :gcsDestination =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination.t() | nil,
          :persistMlUseAssignment => boolean() | nil,
          :predefinedSplit =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredefinedSplit.t() | nil,
          :savedQueryId => String.t() | nil,
          :stratifiedSplit =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StratifiedSplit.t() | nil,
          :timestampSplit =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit.t() | nil
        }

  field(:annotationSchemaUri)
  field(:annotationsFilter)

  field(:bigqueryDestination,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQueryDestination
  )

  field(:datasetId)
  field(:filterSplit, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FilterSplit)
  field(:fractionSplit, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FractionSplit)
  field(:gcsDestination, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsDestination)
  field(:persistMlUseAssignment)

  field(:predefinedSplit, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PredefinedSplit)

  field(:savedQueryId)

  field(:stratifiedSplit, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1StratifiedSplit)

  field(:timestampSplit, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1InputDataConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1InputDataConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1InputDataConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end