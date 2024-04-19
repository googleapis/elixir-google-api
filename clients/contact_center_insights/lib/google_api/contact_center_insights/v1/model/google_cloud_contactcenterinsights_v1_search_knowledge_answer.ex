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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer do
  @moduledoc """
  Represents a SearchKnowledge answer.

  ## Attributes

  *   `answer` (*type:* `String.t`, *default:* `nil`) - The piece of text from the knowledge base documents that answers the search query
  *   `answerRecord` (*type:* `String.t`, *default:* `nil`) - The name of the answer record. Format: `projects//locations//answer Records/`
  *   `answerSources` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource.t)`, *default:* `nil`) - All sources used to generate the answer.
  *   `answerType` (*type:* `String.t`, *default:* `nil`) - The type of the answer.
  *   `confidenceScore` (*type:* `number()`, *default:* `nil`) - The confidence score in [0.0, 1.0] range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answer => String.t() | nil,
          :answerRecord => String.t() | nil,
          :answerSources =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource.t()
            )
            | nil,
          :answerType => String.t() | nil,
          :confidenceScore => number() | nil
        }

  field(:answer)
  field(:answerRecord)

  field(:answerSources,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswerAnswerSource,
    type: :list
  )

  field(:answerType)
  field(:confidenceScore)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1SearchKnowledgeAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
