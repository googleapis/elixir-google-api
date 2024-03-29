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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalProtoRegionalPolygonAdjustmentProto do
  @moduledoc """
  Raw polygon adjustments to apply to this feature's base polygon to construct a specific region's view of this feature's polygon.

  ## Attributes

  *   `polygonToAdd` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t`, *default:* `nil`) - Polygon to add to the feature's base polygon to get the view for the given region. Applied after polygon_to_subtract, such that any region contained in both polygons WILL be part of the final result.
  *   `polygonToSubtract` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t`, *default:* `nil`) - Polygon to subtract from the feature's base polygon to get the view for the given region.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Region code (or other identifier) for the region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :polygonToAdd => GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t() | nil,
          :polygonToSubtract =>
            GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:polygonToAdd, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto)
  field(:polygonToSubtract, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto)
  field(:regionCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalProtoRegionalPolygonAdjustmentProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalProtoRegionalPolygonAdjustmentProto.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGeopoliticalProtoRegionalPolygonAdjustmentProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
