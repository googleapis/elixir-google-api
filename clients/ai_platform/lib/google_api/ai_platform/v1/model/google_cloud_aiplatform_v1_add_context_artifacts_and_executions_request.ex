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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsRequest do
  @moduledoc """
  Request message for MetadataService.AddContextArtifactsAndExecutions.

  ## Attributes

  *   `artifacts` (*type:* `list(String.t)`, *default:* `nil`) - The resource names of the Artifacts to attribute to the Context. Format: `projects/{project}/locations/{location}/metadataStores/{metadatastore}/artifacts/{artifact}`
  *   `executions` (*type:* `list(String.t)`, *default:* `nil`) - The resource names of the Executions to associate with the Context. Format: `projects/{project}/locations/{location}/metadataStores/{metadatastore}/executions/{execution}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :artifacts => list(String.t()) | nil,
          :executions => list(String.t()) | nil
        }

  field(:artifacts, type: :list)
  field(:executions, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsRequest do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1AddContextArtifactsAndExecutionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
