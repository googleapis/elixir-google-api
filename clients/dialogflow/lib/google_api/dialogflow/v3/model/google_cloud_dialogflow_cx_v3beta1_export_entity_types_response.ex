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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse do
  @moduledoc """
  The response message for EntityTypes.ExportEntityTypes.

  ## Attributes

  *   `entityTypesContent` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InlineDestination.t`, *default:* `nil`) - Uncompressed byte content for entity types. This field is populated only if `entity_types_content_inline` is set to true in ExportEntityTypesRequest.
  *   `entityTypesUri` (*type:* `String.t`, *default:* `nil`) - The URI to a file containing the exported entity types. This field is populated only if `entity_types_uri` is specified in ExportEntityTypesRequest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :entityTypesContent =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InlineDestination.t()
            | nil,
          :entityTypesUri => String.t() | nil
        }

  field(:entityTypesContent,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1InlineDestination
  )

  field(:entityTypesUri)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3beta1ExportEntityTypesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
