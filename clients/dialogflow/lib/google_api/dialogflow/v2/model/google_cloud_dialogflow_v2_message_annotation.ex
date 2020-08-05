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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation do
  @moduledoc """
  Represents the result of annotation for the message.

  ## Attributes

  *   `containEntities` (*type:* `boolean()`, *default:* `nil`) - Indicates whether the text message contains entities.
  *   `parts` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AnnotatedMessagePart.t)`, *default:* `nil`) - The collection of annotated message parts ordered by their position in the message. You can recover the annotated message by concatenating [AnnotatedMessagePart.text].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containEntities => boolean(),
          :parts =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AnnotatedMessagePart.t())
        }

  field(:containEntities)

  field(:parts,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AnnotatedMessagePart,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2MessageAnnotation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
