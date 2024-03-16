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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit do
  @moduledoc """
  Assigns input data to training, validation, and test sets based on a provided timestamps. The youngest data pieces are assigned to training set, next to validation set, and the oldest to the test set. Supported only for tabular Datasets.

  ## Attributes

  *   `key` (*type:* `String.t`, *default:* `nil`) - Required. The key is a name of one of the Dataset's data columns. The values of the key (the values in the column) must be in RFC 3339 `date-time` format, where `time-offset` = `"Z"` (e.g. 1985-04-12T23:20:50.52Z). If for a piece of data the key is not present or has an invalid value, that piece is ignored by the pipeline.
  *   `testFraction` (*type:* `float()`, *default:* `nil`) - The fraction of the input data that is to be used to evaluate the Model.
  *   `trainingFraction` (*type:* `float()`, *default:* `nil`) - The fraction of the input data that is to be used to train the Model.
  *   `validationFraction` (*type:* `float()`, *default:* `nil`) - The fraction of the input data that is to be used to validate the Model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => String.t() | nil,
          :testFraction => float() | nil,
          :trainingFraction => float() | nil,
          :validationFraction => float() | nil
        }

  field(:key)
  field(:testFraction)
  field(:trainingFraction)
  field(:validationFraction)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TimestampSplit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end