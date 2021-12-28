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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2WebhookRequest do
  @moduledoc """
  The request message for a webhook call.

  ## Attributes

  *   `originalDetectIntentRequest` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest.t`, *default:* `nil`) - Optional. The contents of the original request that was passed to `[Streaming]DetectIntent` call.
  *   `queryResult` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2QueryResult.t`, *default:* `nil`) - The result of the conversational query or event processing. Contains the same value as `[Streaming]DetectIntentResponse.query_result`.
  *   `responseId` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the response. Contains the same value as `[Streaming]DetectIntentResponse.response_id`.
  *   `session` (*type:* `String.t`, *default:* `nil`) - The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Format: `projects//agent/sessions/`, or `projects//agent/environments//users//sessions/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :originalDetectIntentRequest =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest.t()
            | nil,
          :queryResult =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2QueryResult.t() | nil,
          :responseId => String.t() | nil,
          :session => String.t() | nil
        }

  field(:originalDetectIntentRequest,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest
  )

  field(:queryResult, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2QueryResult)
  field(:responseId)
  field(:session)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2WebhookRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2WebhookRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowV2WebhookRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
