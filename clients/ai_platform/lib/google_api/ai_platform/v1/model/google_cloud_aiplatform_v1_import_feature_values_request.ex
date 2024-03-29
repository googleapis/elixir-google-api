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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequest do
  @moduledoc """
  Request message for FeaturestoreService.ImportFeatureValues.

  ## Attributes

  *   `avroSource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AvroSource.t`, *default:* `nil`) - 
  *   `bigquerySource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t`, *default:* `nil`) - 
  *   `csvSource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CsvSource.t`, *default:* `nil`) - 
  *   `disableIngestionAnalysis` (*type:* `boolean()`, *default:* `nil`) - If true, API doesn't start ingestion analysis pipeline.
  *   `disableOnlineServing` (*type:* `boolean()`, *default:* `nil`) - If set, data will not be imported for online serving. This is typically used for backfilling, where Feature generation timestamps are not in the timestamp range needed for online serving.
  *   `entityIdField` (*type:* `String.t`, *default:* `nil`) - Source column that holds entity IDs. If not provided, entity IDs are extracted from the column named entity_id.
  *   `featureSpecs` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec.t)`, *default:* `nil`) - Required. Specifications defining which Feature values to import from the entity. The request fails if no feature_specs are provided, and having multiple feature_specs for one Feature is not allowed.
  *   `featureTime` (*type:* `DateTime.t`, *default:* `nil`) - Single Feature timestamp for all entities being imported. The timestamp must not have higher than millisecond precision.
  *   `featureTimeField` (*type:* `String.t`, *default:* `nil`) - Source column that holds the Feature timestamp for all Feature values in each entity.
  *   `workerCount` (*type:* `integer()`, *default:* `nil`) - Specifies the number of workers that are used to write data to the Featurestore. Consider the online serving capacity that you require to achieve the desired import throughput without interfering with online serving. The value must be positive, and less than or equal to 100. If not set, defaults to using 1 worker. The low count ensures minimal impact on online serving performance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :avroSource =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AvroSource.t() | nil,
          :bigquerySource =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t() | nil,
          :csvSource => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CsvSource.t() | nil,
          :disableIngestionAnalysis => boolean() | nil,
          :disableOnlineServing => boolean() | nil,
          :entityIdField => String.t() | nil,
          :featureSpecs =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec.t()
            )
            | nil,
          :featureTime => DateTime.t() | nil,
          :featureTimeField => String.t() | nil,
          :workerCount => integer() | nil
        }

  field(:avroSource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AvroSource)
  field(:bigquerySource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource)
  field(:csvSource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CsvSource)
  field(:disableIngestionAnalysis)
  field(:disableOnlineServing)
  field(:entityIdField)

  field(:featureSpecs,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequestFeatureSpec,
    type: :list
  )

  field(:featureTime, as: DateTime)
  field(:featureTimeField)
  field(:workerCount)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ImportFeatureValuesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
