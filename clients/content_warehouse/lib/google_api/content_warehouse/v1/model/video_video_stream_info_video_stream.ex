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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream do
  @moduledoc """
  TODO(yanghu) add 25/50/75 percentiles of FPS to have a 5 number summary. Next id: 48

  ## Attributes

  *   `profile` (*type:* `String.t`, *default:* `nil`) - 
  *   `rationalFps` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoRational32.t`, *default:* `nil`) - The nominal frame rate ('fps' field) represented as a fraction.
  *   `pixFmt` (*type:* `String.t`, *default:* `nil`) - Pixel format for the video stream.
  *   `numberOfInvisibleFrames` (*type:* `integer()`, *default:* `nil`) - Invisible frame count Keep a count of frames that are not displayed should the full frame count be needed for the video stream. The only codec currently reporting this value is VP8 with alternate reference frames enabled
  *   `closedCaptions` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoClosedCaptions.t`, *default:* `nil`) - 
  *   `userDataUnregistered` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoUserDataUnregistered.t)`, *default:* `nil`) - User data unregistered SEI message
  *   `bitrate` (*type:* `String.t`, *default:* `nil`) - video bitrate in bits/s
  *   `ituTT35` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoUserDataRegisteredItuTT35.t)`, *default:* `nil`) - User data registered Itu-T T.35 SEI message
  *   `masteringDisplayMetadata` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileMasteringDisplayMetadata.t`, *default:* `nil`) - 
  *   `averageFps` (*type:* `float()`, *default:* `nil`) - This represents the canonical frame rate of the video. This is named average_fps for historical reasons, and may not actually be the arithmetic mean. For variable frame rate videos, the algorithm may change again in future. Currently, full vsi set it with arithmetic mean, and partial vsi set it with median.
  *   `hasBFrames` (*type:* `boolean()`, *default:* `nil`) - video has b frames
  *   `width` (*type:* `integer()`, *default:* `nil`) - source video width and height
  *   `metadata` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo.t)`, *default:* `nil`) - Metadata for video elementary stream;
  *   `interlace` (*type:* `String.t`, *default:* `nil`) - Information on interlaced video.
  *   `height` (*type:* `integer()`, *default:* `nil`) - 
  *   `length` (*type:* `float()`, *default:* `nil`) - video length in seconds Note that when the VSI is from users videos, it is not guaranteed to be the same as transcode lengths and it could be 0 when the full VSI cannot compute the length from the source header and timestamps (for example when header and timestamps are too broken).
  *   `pixelAspectRatio` (*type:* `float()`, *default:* `nil`) - video pixel aspect ratio
  *   `rotation` (*type:* `String.t`, *default:* `nil`) - Is the video rotated ?
  *   `frameSize` (*type:* `String.t`, *default:* `nil`) - video frame size
  *   `numberOfFrames` (*type:* `String.t`, *default:* `nil`) - Number of video frames.
  *   `gopSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamStatistics.t`, *default:* `nil`) - Statistics about gop sizes of the video.
  *   `codecId` (*type:* `String.t`, *default:* `nil`) - Primary video codec information
  *   `contentLightLevel` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileContentLightLevel.t`, *default:* `nil`) - 
  *   `streamCodecTag` (*type:* `String.t`, *default:* `nil`) - 
  *   `doviConfiguration` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoDoViDecoderConfiguration.t`, *default:* `nil`) - Dolby Vision configuration if stream is compatible.
  *   `codecFourcc` (*type:* `String.t`, *default:* `nil`) - 
  *   `isInsaneSize` (*type:* `boolean()`, *default:* `nil`) - Check if a video size insane or not. It is set if the input file is an MOV file.
  *   `fps` (*type:* `float()`, *default:* `nil`) - video frame per second, obtained by parsing video header information. It could be inaccurate for some types of codecs, notably, WMV, ASF, and FLV. It will be inaccurate for videos that does not have constant frame rate since it is the smallest framerate that can accurately represent all timestamps (see ffmpeg doc for AVStream.r_frame_rate). Also frame rate can be parsed from headers and can be wrong if it is not available there since ffmpeg uses a heuristic for determining it.
  *   `minFps` (*type:* `float()`, *default:* `nil`) - Minimum instantaneous frame rate seen from analyzing the entire stream.
  *   `endTimestamp` (*type:* `String.t`, *default:* `nil`) - 
  *   `maxFps` (*type:* `float()`, *default:* `nil`) - Maximum instantaneous frame rate seen from analyzing the entire stream.
  *   `spherical` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata.t`, *default:* `nil`) - Optional spherical video information.
  *   `streamIndex` (*type:* `String.t`, *default:* `nil`) - Index of the stream in the file. it is 0 based.
  *   `clockDiscontinuityUs` (*type:* `String.t`, *default:* `nil`) - some container allows for a clock discontinuity. In this case, the end_timestamp may not be the correct DTS of the stream.
  *   `seiMessage` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.VideoSEIMessage.t)`, *default:* `nil`) - video SEI payload types and total payload size of a type this is only for H.264 and H.265
  *   `level` (*type:* `integer()`, *default:* `nil`) - 
  *   `codecString` (*type:* `String.t`, *default:* `nil`) - RFC6381 Codec string.
  *   `cleanAperture` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamCleanAperture.t`, *default:* `nil`) - 
  *   `flip` (*type:* `String.t`, *default:* `nil`) - Should the video be mirrored horizontally / vertically? When rotation and flip both are present for a video, it is assumed that the flip is applied first, and then the rotation.
  *   `displayHeight` (*type:* `integer()`, *default:* `nil`) - 
  *   `colorInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileColorInfo.t`, *default:* `nil`) - 
  *   `bitstreamColorInfo` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileColorInfo.t`, *default:* `nil`) - Contains the color information obtained after inspection of the bitstream in cases where there may be inconsistencies between container and coded bitstream that are resolved in favor of the container.
  *   `closedGopSize` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamStatistics.t`, *default:* `nil`) - closed_gop_size refers to chunkable boundaries for each specified codec and may actually contain one or more GOPs, e.g. for H.264, closed_gop_size will denote the distance (frame count) between two IDR frames.
  *   `decodeOffset` (*type:* `String.t`, *default:* `nil`) - The bytes offset of the end of the first decodable packet.
  *   `hdr10PlusStats` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileHDR10PlusStats.t`, *default:* `nil`) - Stats on HDR10+ over video frames.
  *   `startTimestamp` (*type:* `String.t`, *default:* `nil`) - Start/end timestamps of audio/video in ms.
  *   `displayWidth` (*type:* `integer()`, *default:* `nil`) - final display video width and height if explicitly set in the video otherwise this can be calculated from source width/height and video_pixel_aspect_ratio
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :profile => String.t() | nil,
          :rationalFps => GoogleApi.ContentWarehouse.V1.Model.VideoRational32.t() | nil,
          :pixFmt => String.t() | nil,
          :numberOfInvisibleFrames => integer() | nil,
          :closedCaptions => GoogleApi.ContentWarehouse.V1.Model.VideoClosedCaptions.t() | nil,
          :userDataUnregistered =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoUserDataUnregistered.t()) | nil,
          :bitrate => String.t() | nil,
          :ituTT35 =>
            list(GoogleApi.ContentWarehouse.V1.Model.VideoUserDataRegisteredItuTT35.t()) | nil,
          :masteringDisplayMetadata =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileMasteringDisplayMetadata.t() | nil,
          :averageFps => float() | nil,
          :hasBFrames => boolean() | nil,
          :width => integer() | nil,
          :metadata => list(GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo.t()) | nil,
          :interlace => String.t() | nil,
          :height => integer() | nil,
          :length => float() | nil,
          :pixelAspectRatio => float() | nil,
          :rotation => String.t() | nil,
          :frameSize => String.t() | nil,
          :numberOfFrames => String.t() | nil,
          :gopSize =>
            GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamStatistics.t()
            | nil,
          :codecId => String.t() | nil,
          :contentLightLevel =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileContentLightLevel.t() | nil,
          :streamCodecTag => String.t() | nil,
          :doviConfiguration =>
            GoogleApi.ContentWarehouse.V1.Model.VideoDoViDecoderConfiguration.t() | nil,
          :codecFourcc => String.t() | nil,
          :isInsaneSize => boolean() | nil,
          :fps => float() | nil,
          :minFps => float() | nil,
          :endTimestamp => String.t() | nil,
          :maxFps => float() | nil,
          :spherical => GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata.t() | nil,
          :streamIndex => String.t() | nil,
          :clockDiscontinuityUs => String.t() | nil,
          :seiMessage => list(GoogleApi.ContentWarehouse.V1.Model.VideoSEIMessage.t()) | nil,
          :level => integer() | nil,
          :codecString => String.t() | nil,
          :cleanAperture =>
            GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamCleanAperture.t()
            | nil,
          :flip => String.t() | nil,
          :displayHeight => integer() | nil,
          :colorInfo => GoogleApi.ContentWarehouse.V1.Model.VideoFileColorInfo.t() | nil,
          :bitstreamColorInfo => GoogleApi.ContentWarehouse.V1.Model.VideoFileColorInfo.t() | nil,
          :closedGopSize =>
            GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamStatistics.t()
            | nil,
          :decodeOffset => String.t() | nil,
          :hdr10PlusStats =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileHDR10PlusStats.t() | nil,
          :startTimestamp => String.t() | nil,
          :displayWidth => integer() | nil
        }

  field(:profile)
  field(:rationalFps, as: GoogleApi.ContentWarehouse.V1.Model.VideoRational32)
  field(:pixFmt)
  field(:numberOfInvisibleFrames)
  field(:closedCaptions, as: GoogleApi.ContentWarehouse.V1.Model.VideoClosedCaptions)

  field(:userDataUnregistered,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoUserDataUnregistered,
    type: :list
  )

  field(:bitrate)

  field(:ituTT35,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoUserDataRegisteredItuTT35,
    type: :list
  )

  field(:masteringDisplayMetadata,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileMasteringDisplayMetadata
  )

  field(:averageFps)
  field(:hasBFrames)
  field(:width)
  field(:metadata, as: GoogleApi.ContentWarehouse.V1.Model.VideoClipInfo, type: :list)
  field(:interlace)
  field(:height)
  field(:length)
  field(:pixelAspectRatio)
  field(:rotation)
  field(:frameSize)
  field(:numberOfFrames)

  field(:gopSize,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamStatistics
  )

  field(:codecId)
  field(:contentLightLevel, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileContentLightLevel)
  field(:streamCodecTag)
  field(:doviConfiguration, as: GoogleApi.ContentWarehouse.V1.Model.VideoDoViDecoderConfiguration)
  field(:codecFourcc)
  field(:isInsaneSize)
  field(:fps)
  field(:minFps)
  field(:endTimestamp)
  field(:maxFps)
  field(:spherical, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata)
  field(:streamIndex)
  field(:clockDiscontinuityUs)
  field(:seiMessage, as: GoogleApi.ContentWarehouse.V1.Model.VideoSEIMessage, type: :list)
  field(:level)
  field(:codecString)

  field(:cleanAperture,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamCleanAperture
  )

  field(:flip)
  field(:displayHeight)
  field(:colorInfo, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileColorInfo)
  field(:bitstreamColorInfo, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileColorInfo)

  field(:closedGopSize,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStreamStatistics
  )

  field(:decodeOffset)
  field(:hdr10PlusStats, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileHDR10PlusStats)
  field(:startTimestamp)
  field(:displayWidth)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoVideoStreamInfoVideoStream do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
