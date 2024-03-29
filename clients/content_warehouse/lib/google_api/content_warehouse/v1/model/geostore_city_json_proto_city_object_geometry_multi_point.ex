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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreCityJsonProtoCityObjectGeometryMultiPoint do
  @moduledoc """
  A single line, loop, or set of points.

  ## Attributes

  *   `xIndices` (*type:* `list(integer())`, *default:* `nil`) - A collection of references to vertices in `CityJsonProto.flattened_vertices`. `CityJsonProto.flattened_vertices` is a flattened list of vertex coordinates. A value in `x_indices` should be the index of the x-coordinate of the desired vertex V; the full coordinates of vertex V can then be found at indices [V,V+1,V+2]. For example, an `x_indices` containing 3, 0, and 12 references three vertices, whose complete x,y,z coordinates can respectively be found at `CityJsonProto.flattened_vertices` indices [3,4,5], [0,1,2], and [12,13,14].
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :xIndices => list(integer()) | nil
        }

  field(:xIndices, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreCityJsonProtoCityObjectGeometryMultiPoint do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreCityJsonProtoCityObjectGeometryMultiPoint.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreCityJsonProtoCityObjectGeometryMultiPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
