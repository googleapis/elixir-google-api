# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard do
  @moduledoc """
  The basic card message. Useful for displaying information.

  ## Attributes

  - buttons (list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCardButton.t)): Optional. The collection of card buttons. Defaults to `nil`.
  - formattedText (String.t): Required, unless image is present. The body text of the card. Defaults to `nil`.
  - image (GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t): Optional. The image for the card. Defaults to `nil`.
  - subtitle (String.t): Optional. The subtitle of the card. Defaults to `nil`.
  - title (String.t): Optional. The title of the card. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buttons =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCardButton.t()
            ),
          :formattedText => String.t(),
          :image => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage.t(),
          :subtitle => String.t(),
          :title => String.t()
        }

  field(
    :buttons,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCardButton,
    type: :list
  )

  field(:formattedText)
  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageImage)
  field(:subtitle)
  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentMessageBasicCard do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
