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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset do
  @moduledoc """
  Training Dataset information.

  ## Attributes

  *   `bigquerySource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t`, *default:* `nil`) - The BigQuery table of the unmanaged Dataset used to train this Model.
  *   `dataFormat` (*type:* `String.t`, *default:* `nil`) - Data format of the dataset, only applicable if the input is from Google Cloud Storage. The possible formats are: "tf-record" The source file is a TFRecord file. "csv" The source file is a CSV file. "jsonl" The source file is a JSONL file.
  *   `dataset` (*type:* `String.t`, *default:* `nil`) - The resource name of the Dataset used to train this Model.
  *   `gcsSource` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsSource.t`, *default:* `nil`) - The Google Cloud Storage uri of the unmanaged Dataset used to train this Model.
  *   `loggingSamplingStrategy` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SamplingStrategy.t`, *default:* `nil`) - Strategy to sample data from Training Dataset. If not set, we process the whole dataset.
  *   `targetField` (*type:* `String.t`, *default:* `nil`) - The target field name the model is to predict. This field will be excluded when doing Predict and (or) Explain for the training data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigquerySource =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource.t() | nil,
          :dataFormat => String.t() | nil,
          :dataset => String.t() | nil,
          :gcsSource => GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsSource.t() | nil,
          :loggingSamplingStrategy =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SamplingStrategy.t() | nil,
          :targetField => String.t() | nil
        }

  field(:bigquerySource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1BigQuerySource)
  field(:dataFormat)
  field(:dataset)
  field(:gcsSource, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1GcsSource)

  field(:loggingSamplingStrategy,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1SamplingStrategy
  )

  field(:targetField)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingDataset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
