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

defmodule GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails do
  @moduledoc """
  Video player size targeting option details. This will be populated in the video_player_size_details field when targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`. Explicitly targeting all options is not supported. Remove all video player size targeting options to achieve this effect.

  ## Attributes

  *   `targetingOptionId` (*type:* `String.t`, *default:* `nil`) - Required. The targeting_option_id field when targeting_type is `TARGETING_TYPE_VIDEO_PLAYER_SIZE`.
  *   `videoPlayerSize` (*type:* `String.t`, *default:* `nil`) - Output only. The video player size.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :targetingOptionId => String.t(),
          :videoPlayerSize => String.t()
        }

  field(:targetingOptionId)
  field(:videoPlayerSize)
end

defimpl Poison.Decoder,
  for: GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
