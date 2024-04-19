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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer do
  @moduledoc """
  Represents an answer from Knowledge. Cuurently supports FAQ and Generative answers.

  ## Attributes

  *   `answerText` (*type:* `String.t`, *default:* `nil`) - The piece of text from the `source` that answers this suggested query.
  *   `faqSource` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource.t`, *default:* `nil`) - Populated if the prediction came from FAQ.
  *   `generativeSource` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource.t`, *default:* `nil`) - Populated if the prediction was Generative.
  *   `intentMatchingSource` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource.t`, *default:* `nil`) - Populated if the prediction was from intent matching.
  *   `matchConfidence` (*type:* `number()`, *default:* `nil`) - The system's confidence score that this answer is a good match for this conversational query. The range is from 0.0 (completely uncertain) to 1.0 (completely certain).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerText => String.t() | nil,
          :faqSource =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource.t()
            | nil,
          :generativeSource =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource.t()
            | nil,
          :intentMatchingSource =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource.t()
            | nil,
          :matchConfidence => number() | nil
        }

  field(:answerText)

  field(:faqSource,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerFaqSource
  )

  field(:generativeSource,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource
  )

  field(:intentMatchingSource,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerIntentMatchingSource
  )

  field(:matchConfidence)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
