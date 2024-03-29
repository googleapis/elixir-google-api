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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantRecord do
  @moduledoc """
  Represents a record of a human agent assist answer.

  ## Attributes

  *   `articleSuggestionAnswer` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ArticleAnswer.t`, *default:* `nil`) - Output only. The article suggestion answer.
  *   `dialogflowAssistAnswer` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DialogflowAssistAnswer.t`, *default:* `nil`) - Output only. Dialogflow assist answer.
  *   `faqAnswer` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FaqAnswer.t`, *default:* `nil`) - Output only. The FAQ answer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :articleSuggestionAnswer =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ArticleAnswer.t() | nil,
          :dialogflowAssistAnswer =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DialogflowAssistAnswer.t() | nil,
          :faqAnswer => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FaqAnswer.t() | nil
        }

  field(:articleSuggestionAnswer,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ArticleAnswer
  )

  field(:dialogflowAssistAnswer,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2DialogflowAssistAnswer
  )

  field(:faqAnswer, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FaqAnswer)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantRecord do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantRecord.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantRecord do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
