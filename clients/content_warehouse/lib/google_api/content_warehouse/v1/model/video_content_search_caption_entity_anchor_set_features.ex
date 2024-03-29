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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures do
  @moduledoc """
  Features and debug info for clusters of caption entity video anchors.

  ## Attributes

  *   `aggregateScore` (*type:* `number()`, *default:* `nil`) - The total score used for filtering and selecting entity sets.
  *   `clusterSize` (*type:* `integer()`, *default:* `nil`) - The prefiltered size of the entity set.
  *   `entitiesInWebrefEntities` (*type:* `integer()`, *default:* `nil`) - The number of entities in the anchor set that are in the webref entities.
  *   `entityMentionInDescriptionCount` (*type:* `boolean()`, *default:* `nil`) - The number of anchors where the entity mention text appears in the description of the video.
  *   `groupCohesion` (*type:* `number()`, *default:* `nil`) - The average cosine similarity between hypernyms of members of the set.
  *   `hypernym` (*type:* `String.t`, *default:* `nil`) - The most prominent hypernym across the entities in the set.
  *   `hypernymSalience` (*type:* `number()`, *default:* `nil`) - The salience of the best hypernym for the set.
  *   `medianMentions` (*type:* `integer()`, *default:* `nil`) - Median number of times any member of the set was mentioned in the ASR transcript.
  *   `mentionSalience` (*type:* `number()`, *default:* `nil`) - Mentions divided by the total number of entity mentions in the video.
  *   `salience` (*type:* `number()`, *default:* `nil`) - Salience of the set computed by aggregating the hypernyms from each member and calculating the cosine similarity with the salient terms.
  *   `topHypernym` (*type:* `list(String.t)`, *default:* `nil`) - The top N hypernyms for the entities in the set.
  *   `totalMentions` (*type:* `integer()`, *default:* `nil`) - Number of times any member of the group was mentioned in the ASR transcript.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aggregateScore => number() | nil,
          :clusterSize => integer() | nil,
          :entitiesInWebrefEntities => integer() | nil,
          :entityMentionInDescriptionCount => boolean() | nil,
          :groupCohesion => number() | nil,
          :hypernym => String.t() | nil,
          :hypernymSalience => number() | nil,
          :medianMentions => integer() | nil,
          :mentionSalience => number() | nil,
          :salience => number() | nil,
          :topHypernym => list(String.t()) | nil,
          :totalMentions => integer() | nil
        }

  field(:aggregateScore)
  field(:clusterSize)
  field(:entitiesInWebrefEntities)
  field(:entityMentionInDescriptionCount)
  field(:groupCohesion)
  field(:hypernym)
  field(:hypernymSalience)
  field(:medianMentions)
  field(:mentionSalience)
  field(:salience)
  field(:topHypernym, type: :list)
  field(:totalMentions)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchCaptionEntityAnchorSetFeatures do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
