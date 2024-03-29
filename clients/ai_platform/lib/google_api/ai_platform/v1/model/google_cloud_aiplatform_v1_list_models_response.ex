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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListModelsResponse do
  @moduledoc """
  Response message for ModelService.ListModels

  ## Attributes

  *   `models` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model.t)`, *default:* `nil`) - List of Models in the requested page.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve next page of results. Pass to ListModelsRequest.page_token to obtain that page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :models => list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:models, as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Model, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListModelsResponse do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListModelsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ListModelsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
