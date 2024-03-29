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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata do
  @moduledoc """
  Globally allowed spherical meta data.

  ## Attributes

  *   `clampedOptimalFovBounds` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataFOVBounds.t`, *default:* `nil`) - Like above, but with high-pass motion filtering applied and yaw rotation limited to +/- 15-degrees
  *   `cubemap` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataCubemapProjection.t`, *default:* `nil`) - 
  *   `deprecatedCroppedArea` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataCroppedArea.t`, *default:* `nil`) - 
  *   `deprecatedInitialView` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataViewDirection.t`, *default:* `nil`) - InitialView is from v1 spec, and is more or less equivalent to Pose from v2 spec. Therefore, InitialView found in xml metadata would populate the pose field in this proto.
  *   `equirect` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection.t`, *default:* `nil`) - 
  *   `fullPanoHeightPixels` (*type:* `integer()`, *default:* `nil`) - 
  *   `fullPanoWidthPixels` (*type:* `integer()`, *default:* `nil`) - Dimensions of the full video frame.
  *   `mesh` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataMeshProjection.t`, *default:* `nil`) - 
  *   `metadataSource` (*type:* `String.t`, *default:* `nil`) - Metadata source v2(svhd)
  *   `optimalFovBounds` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataFOVBounds.t`, *default:* `nil`) - If video contains Wally-sanitized mesh and camera motion metadata (see go/wally-format ), this contains the optimal FOV (smallest FOV that encompass all combinations of input mesh FOV and rotations). This field will only be present if full FfmpegAnalyze is performed.
  *   `pose` (*type:* `GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose.t`, *default:* `nil`) - 
  *   `projectionType` (*type:* `String.t`, *default:* `nil`) - Mapping type used to map the sphere to the rectangular video E.g., "equirectangular", http://en.wikipedia.org/wiki/Equirectangular_projection This is kept as string so that we can retain values that are unknown to us.
  *   `sourceCount` (*type:* `integer()`, *default:* `nil`) - The number of camera sources used to generate this video.
  *   `spherical` (*type:* `boolean()`, *default:* `nil`) - Whether the video is spherical or not.
  *   `stereoMode` (*type:* `String.t`, *default:* `nil`) - The stereo mode.
  *   `stitched` (*type:* `boolean()`, *default:* `nil`) - Whether the video has already been stitched.
  *   `stitchingSoftware` (*type:* `String.t`, *default:* `nil`) - The stitching software.
  *   `timestamp` (*type:* `String.t`, *default:* `nil`) - Epoch Timestamp of when the first frame in the video was recorded
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clampedOptimalFovBounds =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataFOVBounds.t() | nil,
          :cubemap =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataCubemapProjection.t()
            | nil,
          :deprecatedCroppedArea =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataCroppedArea.t() | nil,
          :deprecatedInitialView =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataViewDirection.t() | nil,
          :equirect =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection.t()
            | nil,
          :fullPanoHeightPixels => integer() | nil,
          :fullPanoWidthPixels => integer() | nil,
          :mesh =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataMeshProjection.t() | nil,
          :metadataSource => String.t() | nil,
          :optimalFovBounds =>
            GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataFOVBounds.t() | nil,
          :pose => GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose.t() | nil,
          :projectionType => String.t() | nil,
          :sourceCount => integer() | nil,
          :spherical => boolean() | nil,
          :stereoMode => String.t() | nil,
          :stitched => boolean() | nil,
          :stitchingSoftware => String.t() | nil,
          :timestamp => String.t() | nil
        }

  field(:clampedOptimalFovBounds,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataFOVBounds
  )

  field(:cubemap,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataCubemapProjection
  )

  field(:deprecatedCroppedArea,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataCroppedArea
  )

  field(:deprecatedInitialView,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataViewDirection
  )

  field(:equirect,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection
  )

  field(:fullPanoHeightPixels)
  field(:fullPanoWidthPixels)
  field(:mesh, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataMeshProjection)
  field(:metadataSource)

  field(:optimalFovBounds,
    as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataFOVBounds
  )

  field(:pose, as: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataPose)
  field(:projectionType)
  field(:sourceCount)
  field(:spherical)
  field(:stereoMode)
  field(:stitched)
  field(:stitchingSoftware)
  field(:timestamp)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
