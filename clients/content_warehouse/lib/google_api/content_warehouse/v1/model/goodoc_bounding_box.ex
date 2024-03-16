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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox do
  @moduledoc """
  Bounding box for page structural elements: pictures, paragraphs, characters, etc.

  ## Attributes

  *   `Height` (*type:* `integer()`, *default:* `nil`) - 
  *   `Label` (*type:* `integer()`, *default:* `nil`) - Optional magic label, so objects can be sorted on bounding box dimensions easily
  *   `Left` (*type:* `integer()`, *default:* `nil`) - BoundingBox coordinates and sizes are expressed in pixels
  *   `Top` (*type:* `integer()`, *default:* `nil`) - 
  *   `Width` (*type:* `integer()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :Height => integer() | nil,
          :Label => integer() | nil,
          :Left => integer() | nil,
          :Top => integer() | nil,
          :Width => integer() | nil
        }

  field(:Height)
  field(:Label)
  field(:Left)
  field(:Top)
  field(:Width)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GoodocBoundingBox do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end