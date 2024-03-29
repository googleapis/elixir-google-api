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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreSweepProto do
  @moduledoc """
  This protocol buffer represents the 2D polygon connecting two segments at an intersection. Collectively, sweep polygons represent intersections for real road width rendering. Notes: - Sweeps represent geometry between the *end* of one segment and the *end* of the other segment (modulo retraction values). - Sweeps are strongly referenced, meaning geometry is stored on both segments involved in the sweep. For example, in the diagram below, the sweep between A and B would be stored on both segment A and segment B. | B | v --A--> - Sweeps are not strictly stored on adjacent segments. Disconnected segments (e.g., segments separated by an intersection group) may also contain sweeps.

  ## Attributes

  *   `otherSegmentFeatureId` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t`, *default:* `nil`) - The segment feature connected to this segment via the sweep geometry.
  *   `polygon` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t`, *default:* `nil`) - Polygonal geometry representing the area between this segment and the other segment.
  *   `sweepCurve` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProto.t`, *default:* `nil`) - Describes parameters for generating the edge of this sweep that starts at edge_follows_segment_end_fraction. The other side of the sweep should be described on the sweep present on the sibling pair.
  *   `sweepToken` (*type:* `String.t`, *default:* `nil`) - A token that can be used to identify the version of the data about this sweep.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :otherSegmentFeatureId =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t() | nil,
          :polygon => GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto.t() | nil,
          :sweepCurve =>
            GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProto.t() | nil,
          :sweepToken => String.t() | nil
        }

  field(:otherSegmentFeatureId, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto)
  field(:polygon, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePolygonProto)
  field(:sweepCurve, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProto)
  field(:sweepToken)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreSweepProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreSweepProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreSweepProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
