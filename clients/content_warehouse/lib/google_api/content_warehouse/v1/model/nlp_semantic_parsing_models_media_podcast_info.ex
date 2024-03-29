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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcastInfo do
  @moduledoc """


  ## Attributes

  *   `clusterId` (*type:* `String.t`, *default:* `nil`) - An internal identifier for the wernicke database that identifies a cluster of multiple sources for a particular podcast.
  *   `episodeGuid` (*type:* `String.t`, *default:* `nil`) - GUID of the given podcast episode.
  *   `feedUrl` (*type:* `String.t`, *default:* `nil`) - The url for the rss feed providing this podcast.
  *   `podcastRecsFeatures` (*type:* `GoogleApi.ContentWarehouse.V1.Model.SuperrootPodcastsRecommendationsPodcastRecsFeatures.t`, *default:* `nil`) - Podcast recommendations features. These features are used to train models for reranking podcast recommendations. Full list of features: http://shortn/_bg6NvzYs6F This won't be sent to clients. It will only be annotated for crust results
  *   `title` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterId => String.t() | nil,
          :episodeGuid => String.t() | nil,
          :feedUrl => String.t() | nil,
          :podcastRecsFeatures =>
            GoogleApi.ContentWarehouse.V1.Model.SuperrootPodcastsRecommendationsPodcastRecsFeatures.t()
            | nil,
          :title => String.t() | nil
        }

  field(:clusterId)
  field(:episodeGuid)
  field(:feedUrl)

  field(:podcastRecsFeatures,
    as: GoogleApi.ContentWarehouse.V1.Model.SuperrootPodcastsRecommendationsPodcastRecsFeatures
  )

  field(:title)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcastInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcastInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaPodcastInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
