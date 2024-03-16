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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection do
  @moduledoc """
  Specifies usage of equirectangular projection. More specifically, these are the proportion of projection cropped from each edge not covered by the video frame. For uncropped frame, all values are 0. For v1 metadata, this contains CroppedArea information (CroppedAreaLeftPixels, CroppedAreaTopPixels, CroppedAreaImageWidthPixels, CroppedAreaImageHeightPixels)

  ## Attributes

  *   `projectionBoundsBottom` (*type:* `integer()`, *default:* `nil`) - 
  *   `projectionBoundsLeft` (*type:* `integer()`, *default:* `nil`) - 
  *   `projectionBoundsRight` (*type:* `integer()`, *default:* `nil`) - 
  *   `projectionBoundsTop` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :projectionBoundsBottom => integer() | nil,
          :projectionBoundsLeft => integer() | nil,
          :projectionBoundsRight => integer() | nil,
          :projectionBoundsTop => integer() | nil
        }

  field(:projectionBoundsBottom)
  field(:projectionBoundsLeft)
  field(:projectionBoundsRight)
  field(:projectionBoundsTop)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoFileSphericalMetadataEquirectProjection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end