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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse do
  @moduledoc """
  The response message for Participants.SuggestSmartReplies.

  ## Attributes

  *   `contextSize` (*type:* `integer()`, *default:* `nil`) - Number of messages prior to and including latest_message to compile the suggestion. It may be smaller than the SuggestSmartRepliesRequest.context_size field in the request if there aren't that many messages in the conversation.
  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - The name of the latest conversation message used to compile suggestion for. Format: `projects//locations//conversations//messages/`.
  *   `smartReplyAnswers` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SmartReplyAnswer.t)`, *default:* `nil`) - Output only. Multiple reply options provided by smart reply service. The order is based on the rank of the model prediction. The maximum number of the returned replies is set in SmartReplyConfig.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contextSize => integer() | nil,
          :latestMessage => String.t() | nil,
          :smartReplyAnswers =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SmartReplyAnswer.t())
            | nil
        }

  field(:contextSize)
  field(:latestMessage)

  field(:smartReplyAnswers,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SmartReplyAnswer,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SuggestSmartRepliesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
