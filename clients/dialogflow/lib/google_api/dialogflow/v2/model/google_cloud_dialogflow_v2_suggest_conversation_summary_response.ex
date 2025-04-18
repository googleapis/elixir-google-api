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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponse do
  @moduledoc """
  The response message for Conversations.SuggestConversationSummary.

  ## Attributes

  *   `contextSize` (*type:* `integer()`, *default:* `nil`) - Number of messages prior to and including latest_message used to compile the suggestion. It may be smaller than the SuggestConversationSummaryRequest.context_size field in the request if there weren't that many messages in the conversation.
  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - The name of the latest conversation message used as context for compiling suggestion. Format: `projects//locations//conversations//messages/`.
  *   `summary` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary.t`, *default:* `nil`) - Generated summary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contextSize => integer() | nil,
          :latestMessage => String.t() | nil,
          :summary =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary.t()
            | nil
        }

  field(:contextSize)
  field(:latestMessage)

  field(:summary,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponseSummary
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestConversationSummaryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
