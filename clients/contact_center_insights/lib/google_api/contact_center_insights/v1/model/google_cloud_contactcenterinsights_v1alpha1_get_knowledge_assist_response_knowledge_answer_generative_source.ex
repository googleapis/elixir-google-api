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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource do
  @moduledoc """
  Details about source of Generative answer.

  ## Attributes

  *   `snippets` (*type:* `list(GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet.t)`, *default:* `nil`) - All snippets used for this Generative Prediction, with their source URI and data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :snippets =>
            list(
              GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet.t()
            )
            | nil
        }

  field(:snippets,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSourceSnippet,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1GetKnowledgeAssistResponseKnowledgeAnswerGenerativeSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
