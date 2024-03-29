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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardRunRequest do
  @moduledoc """
  Request message for TensorboardService.CreateTensorboardRun.

  ## Attributes

  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the TensorboardExperiment to create the TensorboardRun in. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}/experiments/{experiment}`
  *   `tensorboardRun` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardRun.t`, *default:* `nil`) - Required. The TensorboardRun to create.
  *   `tensorboardRunId` (*type:* `String.t`, *default:* `nil`) - Required. The ID to use for the Tensorboard run, which becomes the final component of the Tensorboard run's resource name. This value should be 1-128 characters, and valid characters are `/a-z-/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parent => String.t() | nil,
          :tensorboardRun =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardRun.t() | nil,
          :tensorboardRunId => String.t() | nil
        }

  field(:parent)
  field(:tensorboardRun, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1TensorboardRun)
  field(:tensorboardRunId)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardRunRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardRunRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreateTensorboardRunRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
