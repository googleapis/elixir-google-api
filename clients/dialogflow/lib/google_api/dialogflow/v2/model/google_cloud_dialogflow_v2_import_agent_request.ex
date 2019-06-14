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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportAgentRequest do
  @moduledoc """
  The request message for Agents.ImportAgent.

  ## Attributes

  - agentContent (String.t): The agent to import.

  Example for how to import an agent via the command line:
  <pre>curl \
  'https://dialogflow.googleapis.com/v2/projects/&lt;project_name&gt;/agent:import\
   -X POST \
   -H 'Authorization: Bearer '$(gcloud auth application-default
   print-access-token) \
   -H 'Accept: application/json' \
   -H 'Content-Type: application/json' \
   --compressed \
   --data-binary "{
      'agentContent': '$(cat &lt;agent zip file&gt; | base64 -w 0)'
   }"</pre> Defaults to `nil`.
  - agentUri (String.t): The URI to a Google Cloud Storage file containing the agent to import.
  Note: The URI must start with "gs://". Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentContent => String.t(),
          :agentUri => String.t()
        }

  field(:agentContent)
  field(:agentUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportAgentRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportAgentRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2ImportAgentRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
