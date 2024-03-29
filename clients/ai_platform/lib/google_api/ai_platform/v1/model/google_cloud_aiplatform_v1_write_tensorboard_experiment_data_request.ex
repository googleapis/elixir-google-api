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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardExperimentDataRequest do
  @moduledoc """
  Request message for TensorboardService.WriteTensorboardExperimentData.

  ## Attributes

  *   `writeRunDataRequests` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardRunDataRequest.t)`, *default:* `nil`) - Required. Requests containing per-run TensorboardTimeSeries data to write.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :writeRunDataRequests =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardRunDataRequest.t()
            )
            | nil
        }

  field(:writeRunDataRequests,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardRunDataRequest,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardExperimentDataRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardExperimentDataRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1WriteTensorboardExperimentDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
