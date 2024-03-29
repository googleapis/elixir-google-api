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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_YoutubeVideoAsset do
  @moduledoc """
  A YouTube asset.

  ## Attributes

  *   `youtubeVideoId` (*type:* `String.t`, *default:* `nil`) - YouTube video id. This is the 11 character string value used in the YouTube video URL.
  *   `youtubeVideoTitle` (*type:* `String.t`, *default:* `nil`) - YouTube video title.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :youtubeVideoId => String.t() | nil,
          :youtubeVideoTitle => String.t() | nil
        }

  field(:youtubeVideoId)
  field(:youtubeVideoTitle)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_YoutubeVideoAsset do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_YoutubeVideoAsset.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Common_YoutubeVideoAsset do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
