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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantEvent do
  @moduledoc """
  Represents a notification sent to Cloud Pub/Sub subscribers for
  human agent assistant events in a specific conversation.

  ## Attributes

  *   `conversation` (*type:* `String.t`, *default:* `nil`) - The conversation this notification refers to.
      Format: `projects/<Project ID>/conversations/<Conversation ID>`.
  *   `participant` (*type:* `String.t`, *default:* `nil`) - The participant that the suggestion is compiled for. And This field is used
      to call Participants.ListSuggestions API. Format:
      `projects/<Project ID>/conversations/<Conversation
      ID>/participants/<Participant ID>`.
      It will not be set in legacy workflow.
      HumanAgentAssistantConfig.name for more
      information.
  *   `suggestionResults` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestionResult.t)`, *default:* `nil`) - The suggestion results payload that this notification refers to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversation => String.t(),
          :participant => String.t(),
          :suggestionResults =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestionResult.t())
        }

  field(:conversation)
  field(:participant)

  field(
    :suggestionResults,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestionResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantEvent do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2HumanAgentAssistantEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
