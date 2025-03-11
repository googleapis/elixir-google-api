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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestionResult do
  @moduledoc """
  One response of different type of suggestion response which is used in the response of Participants.AnalyzeContent and Participants.AnalyzeContent, as well as HumanAgentAssistantEvent.

  ## Attributes

  *   `error` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleRpcStatus.t`, *default:* `nil`) - Error status if the request failed.
  *   `generateSuggestionsResponse` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2GenerateSuggestionsResponse.t`, *default:* `nil`) - Suggestions generated using generators triggered by customer or agent messages.
  *   `suggestArticlesResponse` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestArticlesResponse.t`, *default:* `nil`) - SuggestArticlesResponse if request is for ARTICLE_SUGGESTION.
  *   `suggestFaqAnswersResponse` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestFaqAnswersResponse.t`, *default:* `nil`) - SuggestFaqAnswersResponse if request is for FAQ_ANSWER.
  *   `suggestKnowledgeAssistResponse` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse.t`, *default:* `nil`) - SuggestKnowledgeAssistResponse if request is for KNOWLEDGE_ASSIST.
  *   `suggestSmartRepliesResponse` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestSmartRepliesResponse.t`, *default:* `nil`) - SuggestSmartRepliesResponse if request is for SMART_REPLY.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :error => GoogleApi.Dialogflow.V3.Model.GoogleRpcStatus.t() | nil,
          :generateSuggestionsResponse =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2GenerateSuggestionsResponse.t()
            | nil,
          :suggestArticlesResponse =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestArticlesResponse.t() | nil,
          :suggestFaqAnswersResponse =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestFaqAnswersResponse.t()
            | nil,
          :suggestKnowledgeAssistResponse =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse.t()
            | nil,
          :suggestSmartRepliesResponse =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestSmartRepliesResponse.t()
            | nil
        }

  field(:error, as: GoogleApi.Dialogflow.V3.Model.GoogleRpcStatus)

  field(:generateSuggestionsResponse,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2GenerateSuggestionsResponse
  )

  field(:suggestArticlesResponse,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestArticlesResponse
  )

  field(:suggestFaqAnswersResponse,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestFaqAnswersResponse
  )

  field(:suggestKnowledgeAssistResponse,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestKnowledgeAssistResponse
  )

  field(:suggestSmartRepliesResponse,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestSmartRepliesResponse
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestionResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestionResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2SuggestionResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
