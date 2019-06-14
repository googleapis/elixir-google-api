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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest do
  @moduledoc """
  Represents the contents of the original request that was passed to
  the `[Streaming]DetectIntent` call.

  ## Attributes

  - payload (map()): Optional. This field is set to the value of the `QueryParameters.payload`
  field passed in the request. Some integrations that query a Dialogflow
  agent may provide additional information in the payload.

  In particular for the Telephony Gateway this field has the form:
  <pre>{
  "telephony": {
   "caller_id": "+18558363987"
  }
  }</pre>
  Note: The caller ID field (`caller_id`) will be redacted for Standard
  Edition agents and populated with the caller ID in [E.164
  format](https://en.wikipedia.org/wiki/E.164) for Enterprise Edition agents. Defaults to `nil`.
  - source (String.t): The source of this request, e.g., `google`, `facebook`, `slack`. It is set
  by Dialogflow-owned servers. Defaults to `nil`.
  - version (String.t): Optional. The version of the protocol used for this request.
  This field is AoG-specific. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :payload => map(),
          :source => String.t(),
          :version => String.t()
        }

  field(:payload, type: :map)
  field(:source)
  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OriginalDetectIntentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
