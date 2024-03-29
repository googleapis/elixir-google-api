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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoVideoStream do
  @moduledoc """


  ## Attributes

  *   `bitrate` (*type:* `String.t`, *default:* `nil`) - Video bitrate in bits/s.
  *   `codecId` (*type:* `integer()`, *default:* `nil`) - Video codec ID. Uses the numeric value corresponding to the CodecId enum object, in order to avoid the dependency on vsi/videostreaminfo.proto. http://cs/symbol:CodecId%20f:google3/video/vidproc/vsi/videostreaminfo.proto
  *   `fps` (*type:* `float()`, *default:* `nil`) - Video frame per second, obtained by parsing video header information. The value can be inaccurate for some types of codecs. See comments at http://cs/symbol:video_fps%20f:google3/video/vidproc/vsi/videostreaminfo.proto
  *   `height` (*type:* `integer()`, *default:* `nil`) - 
  *   `lengthSec` (*type:* `float()`, *default:* `nil`) - Video length, in seconds. This value is derived from metadata in the source video, and often differs from the actual duration of any given transcode. In videos without valid timestamps, this value is not calculable, and is reported as zero.
  *   `streamIndex` (*type:* `String.t`, *default:* `nil`) - Index of the stream in the file, 0-based.
  *   `width` (*type:* `integer()`, *default:* `nil`) - The video stream's width and height. Important notes: 1) These are the coded dimensions of the video stream and DO NOT take into account any rotation metadata that may be present in the video container. Prefer to use the MediaOverview::resolution and MediaOverview::orientation when possible. 2) In the case you want detailed displayed width/height information, you can use the MediaOverview::orientation to determine the displayed dimensions. E.g., in the case of PORTRAIT orientation: displayed_width = min(width, height) displayed_height = max(width, height) And for LANDSCAPE orientation: displayed_width = max(width, height) displayed_height = min(width, height)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bitrate => String.t() | nil,
          :codecId => integer() | nil,
          :fps => float() | nil,
          :height => integer() | nil,
          :lengthSec => float() | nil,
          :streamIndex => String.t() | nil,
          :width => integer() | nil
        }

  field(:bitrate)
  field(:codecId)
  field(:fps)
  field(:height)
  field(:lengthSec)
  field(:streamIndex)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStream do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoVideoStream.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
