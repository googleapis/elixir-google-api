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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModelEvaluation do
  @moduledoc """
  Represents evaluation result of a conversation model.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this model.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. The display name of the model evaluation. At most 64 bytes long.
  *   `evaluationConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EvaluationConfig.t`, *default:* `nil`) - Optional. The configuration of the evaluation task.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the evaluation. Format: `projects//conversationModels//evaluations/`
  *   `rawHumanEvalTemplateCsv` (*type:* `String.t`, *default:* `nil`) - Output only. Human eval template in csv format. It takes real-world conversations provided through input dataset, generates example suggestions for customer to verify quality of the model. For Smart Reply, the generated csv file contains columns of Context, (Suggestions,Q1,Q2)*3, Actual reply. Context contains at most 10 latest messages in the conversation prior to the current suggestion. Q1: "Would you send it as the next message of agent?" Evaluated based on whether the suggest is appropriate to be sent by agent in current context. Q2: "Does the suggestion move the conversation closer to resolution?" Evaluated based on whether the suggestion provide solutions, or answers customer's question or collect information from customer to resolve the customer's issue. Actual reply column contains the actual agent reply sent in the context.
  *   `smartReplyMetrics` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics.t`, *default:* `nil`) - Output only. Only available when model is for smart reply.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :evaluationConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EvaluationConfig.t() | nil,
          :name => String.t() | nil,
          :rawHumanEvalTemplateCsv => String.t() | nil,
          :smartReplyMetrics =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)

  field(:evaluationConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EvaluationConfig
  )

  field(:name)
  field(:rawHumanEvalTemplateCsv)

  field(:smartReplyMetrics,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SmartReplyMetrics
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModelEvaluation do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModelEvaluation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationModelEvaluation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
