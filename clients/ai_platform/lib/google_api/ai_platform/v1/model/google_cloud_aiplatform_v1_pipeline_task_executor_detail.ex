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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail do
  @moduledoc """
  The runtime detail of a pipeline executor.

  ## Attributes

  *   `containerDetail` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail.t`, *default:* `nil`) - Output only. The detailed info for a container executor.
  *   `customJobDetail` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail.t`, *default:* `nil`) - Output only. The detailed info for a custom job executor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerDetail =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail.t()
            | nil,
          :customJobDetail =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail.t()
            | nil
        }

  field(:containerDetail,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetailContainerDetail
  )

  field(:customJobDetail,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetailCustomJobDetail
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1PipelineTaskExecutorDetail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
