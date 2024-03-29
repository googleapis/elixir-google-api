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

defmodule GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1DataflowJobDetails do
  @moduledoc """
  Pipeline job details specific to the Dataflow API. This is encapsulated here to allow for more executors to store their specific details separately.

  ## Attributes

  *   `currentWorkers` (*type:* `integer()`, *default:* `nil`) - Output only. The current number of workers used to run the jobs. Only set to a value if the job is still running.
  *   `resourceInfo` (*type:* `map()`, *default:* `nil`) - Cached version of all the metrics of interest for the job. This value gets stored here when the job is terminated. As long as the job is running, this field is populated from the Dataflow API.
  *   `sdkVersion` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1SdkVersion.t`, *default:* `nil`) - Output only. The SDK version used to run the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentWorkers => integer() | nil,
          :resourceInfo => map() | nil,
          :sdkVersion =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1SdkVersion.t() | nil
        }

  field(:currentWorkers)
  field(:resourceInfo, type: :map)
  field(:sdkVersion, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1SdkVersion)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1DataflowJobDetails do
  def decode(value, options) do
    GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1DataflowJobDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1DataflowJobDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
