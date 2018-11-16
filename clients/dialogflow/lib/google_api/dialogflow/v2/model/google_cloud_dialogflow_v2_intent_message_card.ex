# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard do
  @moduledoc """
  The card response message.

  ## Attributes

  - buttons ([GoogleCloudDialogflowV2IntentMessageCardButton]): Optional. The collection of card buttons. Defaults to: `null`.
  - imageUri (String.t): Optional. The public URI to an image file for the card. Defaults to: `null`.
  - subtitle (String.t): Optional. The subtitle of the card. Defaults to: `null`.
  - title (String.t): Optional. The title of the card. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttons =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCardButton.t()),
          :imageUri => any(),
          :subtitle => any(),
          :title => any()
        }

  field(:buttons,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCardButton,
    type: :list
  )

  field(:imageUri)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
