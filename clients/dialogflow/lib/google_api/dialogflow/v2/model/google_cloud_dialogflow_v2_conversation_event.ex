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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationEvent do
  @moduledoc """
  Represents a notification sent to Pub/Sub subscribers for conversation lifecycle events.

  ## Attributes

  *   `conversation` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the conversation this notification refers to. Format: `projects//conversations/`.
  *   `errorStatus` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t`, *default:* `nil`) - More detailed information about an error. Only set for type UNRECOVERABLE_ERROR_IN_PHONE_CALL.
  *   `newMessagePayload` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message.t`, *default:* `nil`) - Payload of NEW_MESSAGE event.
  *   `newRecognitionResultPayload` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2StreamingRecognitionResult.t`, *default:* `nil`) - Payload of NEW_RECOGNITION_RESULT event.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the event that this notification refers to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversation => String.t() | nil,
          :errorStatus => GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus.t() | nil,
          :newMessagePayload =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message.t() | nil,
          :newRecognitionResultPayload =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2StreamingRecognitionResult.t()
            | nil,
          :type => String.t() | nil
        }

  field(:conversation)
  field(:errorStatus, as: GoogleApi.Dialogflow.V2.Model.GoogleRpcStatus)
  field(:newMessagePayload, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message)

  field(:newRecognitionResultPayload,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2StreamingRecognitionResult
  )

  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationEvent do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationEvent.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ConversationEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
