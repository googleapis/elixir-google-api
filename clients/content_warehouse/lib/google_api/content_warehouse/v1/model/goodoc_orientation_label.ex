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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocOrientationLabel do
  @moduledoc """
  OrientationLabel groups the details about orientation and reading order.

  ## Attributes

  *   `deskewAngle` (*type:* `number()`, *default:* `nil`) - After rotating so that the text orientation is upright, how many radians does one have to rotate the block anti-clockwise for it to be level? We guarantee: -Pi/4 <= deskew_angle <= Pi/4
  *   `mirrored` (*type:* `boolean()`, *default:* `nil`) - Whether a text line is mirrored (e.g. reflected in a shiny surface or seen through the opposite side of a storefront window). The intent is that this is a quality of the text line image. It needs to be reflected according to a vertical axis along the direction of upright characters to make it readable. This does not affect the shape of the bounding box. A mirrored line with top to bottom writing remains top to bottom. A mirrored horizontal line will flip left to right. However any child entities (symbols) will remain in the same order, and the writing direction imposed by the language (ltr or rtl) will remain the same.
  *   `orientation` (*type:* `String.t`, *default:* `nil`) - 
  *   `textlineOrder` (*type:* `String.t`, *default:* `nil`) - 
  *   `writingDirection` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deskewAngle => number() | nil,
          :mirrored => boolean() | nil,
          :orientation => String.t() | nil,
          :textlineOrder => String.t() | nil,
          :writingDirection => String.t() | nil
        }

  field(:deskewAngle)
  field(:mirrored)
  field(:orientation)
  field(:textlineOrder)
  field(:writingDirection)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocOrientationLabel do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocOrientationLabel.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocOrientationLabel do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
