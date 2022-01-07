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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestArticlesRequest do
  @moduledoc """
  The request message for Participants.SuggestArticles.

  ## Attributes

  *   `assistQueryParams` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AssistQueryParameters.t`, *default:* `nil`) - Parameters for a human assist query.
  *   `contextSize` (*type:* `integer()`, *default:* `nil`) - Optional. Max number of messages prior to and including latest_message to use as context when compiling the suggestion. By default 20 and at most 50.
  *   `latestMessage` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the latest conversation message to compile suggestion for. If empty, it will be the latest message of the conversation. Format: `projects//locations//conversations//messages/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assistQueryParams =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AssistQueryParameters.t() | nil,
          :contextSize => integer() | nil,
          :latestMessage => String.t() | nil
        }

  field(:assistQueryParams,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2AssistQueryParameters
  )

  field(:contextSize)
  field(:latestMessage)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestArticlesRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestArticlesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SuggestArticlesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
