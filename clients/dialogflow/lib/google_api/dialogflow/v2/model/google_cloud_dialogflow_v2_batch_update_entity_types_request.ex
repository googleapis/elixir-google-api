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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest do
  @moduledoc """
  The request message for EntityTypes.BatchUpdateEntityTypes.

  ## Attributes

  - entityTypeBatchInline (GoogleCloudDialogflowV2EntityTypeBatch): The collection of entity type to update or create. Defaults to: `null`.
  - entityTypeBatchUri (String.t): The URI to a Google Cloud Storage file containing entity types to update or create. The file format can either be a serialized proto (of EntityBatch type) or a JSON object. Note: The URI must start with \&quot;gs://\&quot;. Defaults to: `null`.
  - languageCode (String.t): Optional. The language of entity synonyms defined in &#x60;entity_types&#x60;. If not specified, the agent&#39;s default language is used. [More than a dozen languages](https://dialogflow.com/docs/reference/language) are supported. Note: languages must be enabled in the agent, before they can be used. Defaults to: `null`.
  - updateMask (String.t): Optional. The mask to control which fields get updated. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityTypeBatchInline =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EntityTypeBatch.t(),
          :entityTypeBatchUri => any(),
          :languageCode => any(),
          :updateMask => any()
        }

  field(
    :entityTypeBatchInline,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2EntityTypeBatch
  )

  field(:entityTypeBatchUri)
  field(:languageCode)
  field(:updateMask)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateEntityTypesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
