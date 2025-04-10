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

defmodule GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponse do
  @moduledoc """
  Generate video response.

  ## Attributes

  *   `generatedSamples` (*type:* `list(GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionMedia.t)`, *default:* `nil`) - The generates samples.
  *   `raiMediaFilteredCount` (*type:* `integer()`, *default:* `nil`) - Returns if any videos were filtered due to RAI policies.
  *   `raiMediaFilteredReasons` (*type:* `list(String.t)`, *default:* `nil`) - Returns rai failure reasons if any.
  *   `videos` (*type:* `list(GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponseVideo.t)`, *default:* `nil`) - List of videos, used to align naming with the external response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :generatedSamples =>
            list(GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionMedia.t()) | nil,
          :raiMediaFilteredCount => integer() | nil,
          :raiMediaFilteredReasons => list(String.t()) | nil,
          :videos =>
            list(
              GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponseVideo.t()
            )
            | nil
        }

  field(:generatedSamples,
    as: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionMedia,
    type: :list
  )

  field(:raiMediaFilteredCount)
  field(:raiMediaFilteredReasons, type: :list)

  field(:videos,
    as: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponseVideo,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.CloudAiLargeModelsVisionGenerateVideoResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
