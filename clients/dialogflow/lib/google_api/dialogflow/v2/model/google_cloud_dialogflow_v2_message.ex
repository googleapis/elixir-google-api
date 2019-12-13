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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message do
  @moduledoc """
  Represents a message posted into a conversation.

  ## Attributes

  *   `content` (*type:* `String.t`, *default:* `nil`) - Required. The message content.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the message was created.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The message language.
      This should be a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt)
      language tag. Example: "en-US".
  *   `messageAnnotation` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation.t`, *default:* `nil`) - Output only. The annotation for the message.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the message.
      Format: `projects/<Project ID>/conversations/<Conversation
      ID>/messages/<Message ID>`.
  *   `participant` (*type:* `String.t`, *default:* `nil`) - Output only. The participant that sends this message.
  *   `participantRole` (*type:* `String.t`, *default:* `nil`) - Output only. The role of the participant.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :content => String.t(),
          :createTime => DateTime.t(),
          :languageCode => String.t(),
          :messageAnnotation =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation.t(),
          :name => String.t(),
          :participant => String.t(),
          :participantRole => String.t()
        }

  field(:content)
  field(:createTime, as: DateTime)
  field(:languageCode)

  field(:messageAnnotation,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation
  )

  field(:name)
  field(:participant)
  field(:participantRole)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
