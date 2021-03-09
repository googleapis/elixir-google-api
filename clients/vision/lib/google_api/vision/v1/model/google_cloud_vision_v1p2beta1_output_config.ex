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

defmodule GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1OutputConfig do
  @moduledoc """
  The desired output location and metadata.

  ## Attributes

  *   `batchSize` (*type:* `integer()`, *default:* `nil`) - The max number of response protos to put into each output JSON file on Google Cloud Storage. The valid range is [1, 100]. If not specified, the default value is 20. For example, for one pdf file with 100 pages, 100 response protos will be generated. If `batch_size` = 20, then 5 json files each containing 20 response protos will be written under the prefix `gcs_destination`.`uri`. Currently, batch_size only applies to GcsDestination, with potential future support for other output configurations.
  *   `gcsDestination` (*type:* `GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1GcsDestination.t`, *default:* `nil`) - The Google Cloud Storage location to write the output(s) to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batchSize => integer() | nil,
          :gcsDestination =>
            GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1GcsDestination.t() | nil
        }

  field(:batchSize)
  field(:gcsDestination, as: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1GcsDestination)
end

defimpl Poison.Decoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1OutputConfig do
  def decode(value, options) do
    GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1OutputConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Vision.V1.Model.GoogleCloudVisionV1p2beta1OutputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
