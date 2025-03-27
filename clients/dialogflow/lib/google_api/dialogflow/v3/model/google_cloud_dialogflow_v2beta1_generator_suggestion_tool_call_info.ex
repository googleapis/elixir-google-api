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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo do
  @moduledoc """
  Request and response for a tool call.

  ## Attributes

  *   `toolCall` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ToolCall.t`, *default:* `nil`) - Required. Request for a tool call.
  *   `toolCallResult` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ToolCallResult.t`, *default:* `nil`) - Required. Response for a tool call.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :toolCall =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ToolCall.t() | nil,
          :toolCallResult =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ToolCallResult.t() | nil
        }

  field(:toolCall, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ToolCall)

  field(:toolCallResult,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1ToolCallResult
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2beta1GeneratorSuggestionToolCallInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
