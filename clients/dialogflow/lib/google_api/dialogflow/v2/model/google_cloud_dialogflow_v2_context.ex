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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context do
  @moduledoc """
  Represents a context.

  ## Attributes

  - parameters (%{optional(String.t) &#x3D;&gt; String.t}): Optional. The collection of parameters associated with this context. Refer to [this doc](https://dialogflow.com/docs/actions-and-parameters) for syntax. Defaults to: `null`.
  - lifespanCount (integer()): Optional. The number of conversational query requests after which the context expires. If set to &#x60;0&#x60; (the default) the context expires immediately. Contexts expire automatically after 10 minutes even if there are no matching queries. Defaults to: `null`.
  - name (String.t): Required. The unique identifier of the context. Format: &#x60;projects/&lt;Project ID&gt;/agent/sessions/&lt;Session ID&gt;/contexts/&lt;Context ID&gt;&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => map(),
          :lifespanCount => any(),
          :name => any()
        }

  field(:parameters, type: :map)
  field(:lifespanCount)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2Context do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
