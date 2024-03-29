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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobInputConfig do
  @moduledoc """
  Configures the input to BatchPredictionJob. See Model.supported_input_storage_formats for Model's supported input formats, and how instances should be expressed via any of them.

  ## Attributes

  *   `bigquerySource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t`, *default:* `nil`) - The BigQuery location of the input table. The schema of the table should be in the format described by the given context OpenAPI Schema, if one is provided. The table may contain additional columns that are not described by the schema, and they will be ignored.
  *   `gcsSource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsSource.t`, *default:* `nil`) - The Cloud Storage location for the input instances.
  *   `instancesFormat` (*type:* `String.t`, *default:* `nil`) - Required. The format in which instances are given, must be one of the Model's supported_input_storage_formats.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigquerySource =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t() | nil,
          :gcsSource => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsSource.t() | nil,
          :instancesFormat => String.t() | nil
        }

  field(:bigquerySource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource)
  field(:gcsSource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsSource)
  field(:instancesFormat)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobInputConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobInputConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BatchPredictionJobInputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
