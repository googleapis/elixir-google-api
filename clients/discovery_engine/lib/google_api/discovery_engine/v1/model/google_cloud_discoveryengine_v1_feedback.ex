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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Feedback do
  @moduledoc """
  Information about the user feedback. This information will be used for logging and metrics purpose.

  ## Attributes

  *   `comment` (*type:* `String.t`, *default:* `nil`) - Optional. The additional user comment of the feedback if user gives a thumb down.
  *   `conversationInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1FeedbackConversationInfo.t`, *default:* `nil`) - The related conversation information when user gives feedback.
  *   `feedbackType` (*type:* `String.t`, *default:* `nil`) - Required. Indicate whether the user gives a positive or negative feedback. If the user gives a negative feedback, there might be more feedback details.
  *   `llmModelVersion` (*type:* `String.t`, *default:* `nil`) - The version of the LLM model that was used to generate the response.
  *   `reasons` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The reason if user gives a thumb down.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comment => String.t() | nil,
          :conversationInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1FeedbackConversationInfo.t()
            | nil,
          :feedbackType => String.t() | nil,
          :llmModelVersion => String.t() | nil,
          :reasons => list(String.t()) | nil
        }

  field(:comment)

  field(:conversationInfo,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1FeedbackConversationInfo
  )

  field(:feedbackType)
  field(:llmModelVersion)
  field(:reasons, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Feedback do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Feedback.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Feedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
