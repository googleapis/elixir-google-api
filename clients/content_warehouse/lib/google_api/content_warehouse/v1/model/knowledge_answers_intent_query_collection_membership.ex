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

defmodule GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership do
  @moduledoc """
  A message representing the collection membership of an entity.

  ## Attributes

  *   `collectionId` (*type:* `String.t`, *default:* `nil`) - Human readable id of the collection.
  *   `collectionMid` (*type:* `String.t`, *default:* `nil`) - Identifier of the collection, usually a MID (/m/xyz or /g/zyw).
  *   `collectionScore` (*type:* `number()`, *default:* `nil`) - The collection score for a entity.
  *   `score` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionScore.t)`, *default:* `nil`) - Different types of scores for the collection. Each score type has at most one score.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionId => String.t() | nil,
          :collectionMid => String.t() | nil,
          :collectionScore => number() | nil,
          :score =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionScore.t()
            )
            | nil
        }

  field(:collectionId)
  field(:collectionMid)
  field(:collectionScore)

  field(:score,
    as: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionScore,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.KnowledgeAnswersIntentQueryCollectionMembership do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
