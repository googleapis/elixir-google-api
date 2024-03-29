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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse do
  @moduledoc """
  The response message for EntityTypes.ImportEntityTypes.

  ## Attributes

  *   `conflictingResources` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources.t`, *default:* `nil`) - Info which resources have conflicts when REPORT_CONFLICT merge_option is set in ImportEntityTypesRequest.
  *   `entityTypes` (*type:* `list(String.t)`, *default:* `nil`) - The unique identifier of the imported entity types. Format: `projects//locations//agents//entity_types/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conflictingResources =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources.t()
            | nil,
          :entityTypes => list(String.t()) | nil
        }

  field(:conflictingResources,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponseConflictingResources
  )

  field(:entityTypes, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ImportEntityTypesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
