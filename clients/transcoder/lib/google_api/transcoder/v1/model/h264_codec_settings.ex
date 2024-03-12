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

defmodule GoogleApi.Transcoder.V1.Model.H264CodecSettings do
  @moduledoc """
  H264 codec settings.

  ## Attributes

  *   `allowOpenGop` (*type:* `boolean()`, *default:* `nil`) - Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.
  *   `aqStrength` (*type:* `float()`, *default:* `nil`) - Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.
  *   `bFrameCount` (*type:* `integer()`, *default:* `nil`) - The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than H264CodecSettings.gop_frame_count if set. The default is 0.
  *   `bPyramid` (*type:* `boolean()`, *default:* `nil`) - Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.
  *   `bitrateBps` (*type:* `integer()`, *default:* `nil`) - Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.
  *   `crfLevel` (*type:* `integer()`, *default:* `nil`) - Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.
  *   `enableTwoPass` (*type:* `boolean()`, *default:* `nil`) - Use two-pass encoding strategy to achieve better video quality. H264CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  *   `entropyCoder` (*type:* `String.t`, *default:* `nil`) - The entropy coder to use. The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac`
  *   `frameRate` (*type:* `float()`, *default:* `nil`) - Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120.
  *   `frameRateConversionStrategy` (*type:* `String.t`, *default:* `nil`) - Optional. Frame rate conversion strategy for desired frame rate. The default is `DOWNSAMPLE`.
  *   `gopDuration` (*type:* `String.t`, *default:* `nil`) - Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.
  *   `gopFrameCount` (*type:* `integer()`, *default:* `nil`) - Select the GOP size based on the specified frame count. Must be greater than zero.
  *   `heightPixels` (*type:* `integer()`, *default:* `nil`) - The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  *   `hlg` (*type:* `GoogleApi.Transcoder.V1.Model.H264ColorFormatHLG.t`, *default:* `nil`) - Optional. HLG color format setting for H264.
  *   `pixelFormat` (*type:* `String.t`, *default:* `nil`) - Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format
  *   `preset` (*type:* `String.t`, *default:* `nil`) - Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Preset). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  *   `profile` (*type:* `String.t`, *default:* `nil`) - Enforces the specified codec profile. The following profiles are supported: * `baseline` * `main` * `high` (default) The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  *   `rateControlMode` (*type:* `String.t`, *default:* `nil`) - Specify the mode. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor
  *   `sdr` (*type:* `GoogleApi.Transcoder.V1.Model.H264ColorFormatSDR.t`, *default:* `nil`) - Optional. SDR color format setting for H264.
  *   `tune` (*type:* `String.t`, *default:* `nil`) - Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.
  *   `vbvFullnessBits` (*type:* `integer()`, *default:* `nil`) - Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of H264CodecSettings.vbv_size_bits.
  *   `vbvSizeBits` (*type:* `integer()`, *default:* `nil`) - Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to H264CodecSettings.bitrate_bps.
  *   `widthPixels` (*type:* `integer()`, *default:* `nil`) - The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowOpenGop => boolean() | nil,
          :aqStrength => float() | nil,
          :bFrameCount => integer() | nil,
          :bPyramid => boolean() | nil,
          :bitrateBps => integer() | nil,
          :crfLevel => integer() | nil,
          :enableTwoPass => boolean() | nil,
          :entropyCoder => String.t() | nil,
          :frameRate => float() | nil,
          :frameRateConversionStrategy => String.t() | nil,
          :gopDuration => String.t() | nil,
          :gopFrameCount => integer() | nil,
          :heightPixels => integer() | nil,
          :hlg => GoogleApi.Transcoder.V1.Model.H264ColorFormatHLG.t() | nil,
          :pixelFormat => String.t() | nil,
          :preset => String.t() | nil,
          :profile => String.t() | nil,
          :rateControlMode => String.t() | nil,
          :sdr => GoogleApi.Transcoder.V1.Model.H264ColorFormatSDR.t() | nil,
          :tune => String.t() | nil,
          :vbvFullnessBits => integer() | nil,
          :vbvSizeBits => integer() | nil,
          :widthPixels => integer() | nil
        }

  field(:allowOpenGop)
  field(:aqStrength)
  field(:bFrameCount)
  field(:bPyramid)
  field(:bitrateBps)
  field(:crfLevel)
  field(:enableTwoPass)
  field(:entropyCoder)
  field(:frameRate)
  field(:frameRateConversionStrategy)
  field(:gopDuration)
  field(:gopFrameCount)
  field(:heightPixels)
  field(:hlg, as: GoogleApi.Transcoder.V1.Model.H264ColorFormatHLG)
  field(:pixelFormat)
  field(:preset)
  field(:profile)
  field(:rateControlMode)
  field(:sdr, as: GoogleApi.Transcoder.V1.Model.H264ColorFormatSDR)
  field(:tune)
  field(:vbvFullnessBits)
  field(:vbvSizeBits)
  field(:widthPixels)
end

defimpl Poison.Decoder, for: GoogleApi.Transcoder.V1.Model.H264CodecSettings do
  def decode(value, options) do
    GoogleApi.Transcoder.V1.Model.H264CodecSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Transcoder.V1.Model.H264CodecSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
