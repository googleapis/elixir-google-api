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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaProviderInfo do
  @moduledoc """
  A media provider and the deeplinks provided by the provider. MediaProviderInfo is an abstraction for topics of multiple media related KG types under /base/mediaasset domain and /media_common. It's often eligible for topics of media related KG types like /broadcast/radio_station, /film/film, /music/artist, /music/album, /music/recording_cluster, /music/recording, /tv/tv_program, etc. See go/media-pq for design details. Next ID: 6

  ## Attributes

  *   `deeplinkInfo` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaDeeplinkInfo.t)`, *default:* `nil`) - Deeplinks provided by the provider. If empty it indicates that the media is unavailable with the provider, e.g. due to country restrictions or limited catalog.
  *   `kgProviderKey` (*type:* `String.t`, *default:* `nil`) - The unique and reverse unique provider enumerator in KG (e.g., "ORANGE_SPAIN" for /g/11h6nkfyrm). It is more stable than the KG mid. See go/kema-api#keys. Some mids cannot have the enumerator property due to historical reason (e.g., multiple media providers were created for iTunes and only ""/g/11fhyxjwt5" has provider enumerator as "ITUNES_NEW" in KG). These entities need to have hard-coded key (e.g., "/m/019g58" has key "ITUNES") kept outside of KG.
  *   `mediaId` (*type:* `String.t`, *default:* `nil`) - Media ID of a MediaItem in a MediaBrowseTree (MBT). This field is used to play a specific media item from MBT using playFromMediaId API.
  *   `providerMid` (*type:* `String.t`, *default:* `nil`) - The machine ID (MID) of the media provider.
  *   `providerName` (*type:* `String.t`, *default:* `nil`) - The name of the media provider.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deeplinkInfo =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaDeeplinkInfo.t()
            )
            | nil,
          :kgProviderKey => String.t() | nil,
          :mediaId => String.t() | nil,
          :providerMid => String.t() | nil,
          :providerName => String.t() | nil
        }

  field(:deeplinkInfo,
    as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaDeeplinkInfo,
    type: :list
  )

  field(:kgProviderKey)
  field(:mediaId)
  field(:providerMid)
  field(:providerName)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaProviderInfo do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaProviderInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsMediaMediaProviderInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
