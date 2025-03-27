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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Generator do
  @moduledoc """
  LLM generator.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of this generator.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Human readable description of the generator.
  *   `freeFormContext` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FreeFormContext.t`, *default:* `nil`) - Input of free from generator to LLM.
  *   `inferenceParameter` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InferenceParameter.t`, *default:* `nil`) - Optional. Inference parameters for this generator.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Identifier. The resource name of the generator. Format: `projects//locations//generators/`
  *   `publishedModel` (*type:* `String.t`, *default:* `nil`) - Optional. The published Large Language Model name. * To use the latest model version, specify the model name without version number. Example: `text-bison` * To use a stable model version, specify the version number as well. Example: `text-bison@002`.
  *   `summarizationContext` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SummarizationContext.t`, *default:* `nil`) - Input of prebuilt Summarization feature.
  *   `tools` (*type:* `list(String.t)`, *default:* `nil`) - Optional. Resource names of the tools that the generator can choose from. Format: `projects//locations//tools/`.
  *   `triggerEvent` (*type:* `String.t`, *default:* `nil`) - Optional. The trigger event of the generator. It defines when the generator is triggered in a conversation.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time of this generator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :freeFormContext =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FreeFormContext.t() | nil,
          :inferenceParameter =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InferenceParameter.t() | nil,
          :name => String.t() | nil,
          :publishedModel => String.t() | nil,
          :summarizationContext =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SummarizationContext.t() | nil,
          :tools => list(String.t()) | nil,
          :triggerEvent => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)

  field(:freeFormContext, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2FreeFormContext)

  field(:inferenceParameter,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2InferenceParameter
  )

  field(:name)
  field(:publishedModel)

  field(:summarizationContext,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SummarizationContext
  )

  field(:tools, type: :list)
  field(:triggerEvent)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Generator do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Generator.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Generator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
