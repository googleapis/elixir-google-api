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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookRequest do
  @moduledoc """
  The request message for a webhook call.

  ## Attributes

  - originalDetectIntentRequest (GoogleCloudDialogflowV2OriginalDetectIntentRequest): Optional. The contents of the original request that was passed to &#x60;[Streaming]DetectIntent&#x60; call. Defaults to: `null`.
  - queryResult (GoogleCloudDialogflowV2QueryResult): The result of the conversational query or event processing. Contains the same value as &#x60;[Streaming]DetectIntentResponse.query_result&#x60;. Defaults to: `null`.
  - responseId (String.t): The unique identifier of the response. Contains the same value as &#x60;[Streaming]DetectIntentResponse.response_id&#x60;. Defaults to: `null`.
  - session (String.t): The unique identifier of detectIntent request session. Can be used to identify end-user inside webhook implementation. Format: &#x60;projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;&#x60;, or &#x60;projects/&lt;Project ID&gt;/agent/environments/&lt;Environment ID&gt;/users/&lt;User ID&gt;/sessions/&lt;Session ID&gt;&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :originalDetectIntentRequest =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest.t(),
          :queryResult => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult.t(),
          :responseId => any(),
          :session => any()
        }

  field(:originalDetectIntentRequest,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest
  )

  field(:queryResult, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2QueryResult)
  field(:responseId)
  field(:session)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2WebhookRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
