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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SentimentAnalysisResult do
  @moduledoc """
  The result of sentiment analysis. Sentiment analysis inspects user input and identifies the prevailing subjective opinion, especially to determine a user's attitude as positive, negative, or neutral. For Participants.DetectIntent, it needs to be configured in DetectIntentRequest.query_params. For Participants.StreamingDetectIntent, it needs to be configured in StreamingDetectIntentRequest.query_params. And for Participants.AnalyzeContent and Participants.StreamingAnalyzeContent, it needs to be configured in ConversationProfile.human_agent_assistant_config

  ## Attributes

  *   `queryTextSentiment` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1Sentiment.t`, *default:* `nil`) - The sentiment analysis result for `query_text`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :queryTextSentiment =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1Sentiment.t() | nil
        }

  field(:queryTextSentiment,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1Sentiment
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SentimentAnalysisResult do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SentimentAnalysisResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1SentimentAnalysisResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
