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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  @moduledoc """
  Each intent parameter has a type, called the entity type, which dictates exactly how data from an end-user expression is extracted. Dialogflow provides predefined system entities that can match many common types of data. For example, there are system entities for matching dates, times, colors, email addresses, and so on. You can also create your own custom entities for matching custom data. For example, you could define a vegetable entity that can match the types of vegetables available for purchase with a grocery store agent. For more information, see the [Entity guide](https://cloud.google.com/dialogflow/docs/entities-overview).

  ## Attributes

  *   `autoExpansionMode` (*type:* `String.t`, *default:* `nil`) - Optional. Indicates whether the entity type can be automatically expanded.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the entity type.
  *   `enableFuzzyExtraction` (*type:* `boolean()`, *default:* `nil`) - Optional. Enables fuzzy entity extraction during classification.
  *   `entities` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t)`, *default:* `nil`) - Optional. The collection of entity entries associated with the entity type.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Required. Indicates the kind of entity type.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType and EntityTypes.BatchUpdateEntityTypes methods. Supported formats: - `projects//agent/entityTypes/` - `projects//locations//agent/entityTypes/`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoExpansionMode => String.t(),
          :displayName => String.t(),
          :enableFuzzyExtraction => boolean(),
          :entities =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity.t()),
          :kind => String.t(),
          :name => String.t()
        }

  field(:autoExpansionMode)
  field(:displayName)
  field(:enableFuzzyExtraction)

  field(:entities,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityTypeEntity,
    type: :list
  )

  field(:kind)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1EntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
