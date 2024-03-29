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

defmodule GoogleApi.ContentWarehouse.V1.Model.MediaIndexBoundingbox do
  @moduledoc """
  Stores coordinates corresponding to the dimensions of the box surrounding the region of interest. Coordinates may be normalized or absolute depending on the implementation and signal corresponding to this field.

  ## Attributes

  *   `areaFraction` (*type:* `number()`, *default:* `nil`) - The area of the region as a fraction of the image. The value is in the range (0, 1).
  *   `xmax` (*type:* `number()`, *default:* `nil`) - 
  *   `xmin` (*type:* `number()`, *default:* `nil`) - 
  *   `ymax` (*type:* `number()`, *default:* `nil`) - 
  *   `ymin` (*type:* `number()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :areaFraction => number() | nil,
          :xmax => number() | nil,
          :xmin => number() | nil,
          :ymax => number() | nil,
          :ymin => number() | nil
        }

  field(:areaFraction)
  field(:xmax)
  field(:xmin)
  field(:ymax)
  field(:ymin)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.MediaIndexBoundingbox do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.MediaIndexBoundingbox.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.MediaIndexBoundingbox do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
