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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback do
  @moduledoc """
  Feedback for conversation summarization.

  ## Attributes

  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when composing of the summary starts.
  *   `submitTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp when the summary was submitted.
  *   `summaryText` (*type:* `String.t`, *default:* `nil`) - Text of actual submitted summary.
  *   `textSections` (*type:* `map()`, *default:* `nil`) - Optional. Actual text sections of submitted summary.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :startTime => DateTime.t() | nil,
          :submitTime => DateTime.t() | nil,
          :summaryText => String.t() | nil,
          :textSections => map() | nil
        }

  field(:startTime, as: DateTime)
  field(:submitTime, as: DateTime)
  field(:summaryText)
  field(:textSections, type: :map)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AgentAssistantFeedbackSummarizationFeedback do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
