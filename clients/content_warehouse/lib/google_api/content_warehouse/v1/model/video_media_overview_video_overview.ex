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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview do
  @moduledoc """
  Video stream description with no PII.

  ## Attributes

  *   `aspectRatio` (*type:* `String.t`, *default:* `nil`) - 
  *   `averageFps` (*type:* `float()`, *default:* `nil`) - Prefer average_fps to match the logic used in transcoder for format profile frame rate checks. First added for Photos, see b/165839654.
  *   `codecId` (*type:* `integer()`, *default:* `nil`) - 
  *   `colorDynamicRange` (*type:* `String.t`, *default:* `nil`) - 
  *   `fps` (*type:* `float()`, *default:* `nil`) - 
  *   `height` (*type:* `integer()`, *default:* `nil`) - 
  *   `resolution` (*type:* `String.t`, *default:* `nil`) - 
  *   `roundedUpOriginalDurationSec` (*type:* `integer()`, *default:* `nil`) - Approximate video length. Data is rounded up to the next second, to avoid being PII. (Long ago, YTFE set a precedent of rounding up durations, rather than rounding to the closest second.) This value is derived from metadata in the source video, and often differs from the actual duration of any given transcode. In videos without valid timestamps, this value is not calculable, and is reported as zero. Prefer the value from MediaInfo::VideoStream over this value, which was added to resolve b/202864365.
  *   `videoHasClosedCaptions` (*type:* `boolean()`, *default:* `nil`) - 
  *   `width` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aspectRatio => String.t() | nil,
          :averageFps => float() | nil,
          :codecId => integer() | nil,
          :colorDynamicRange => String.t() | nil,
          :fps => float() | nil,
          :height => integer() | nil,
          :resolution => String.t() | nil,
          :roundedUpOriginalDurationSec => integer() | nil,
          :videoHasClosedCaptions => boolean() | nil,
          :width => integer() | nil
        }

  field(:aspectRatio)
  field(:averageFps)
  field(:codecId)
  field(:colorDynamicRange)
  field(:fps)
  field(:height)
  field(:resolution)
  field(:roundedUpOriginalDurationSec)
  field(:videoHasClosedCaptions)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoMediaOverviewVideoOverview do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
