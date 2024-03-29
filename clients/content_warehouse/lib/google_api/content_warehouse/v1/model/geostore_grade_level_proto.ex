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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreGradeLevelProto do
  @moduledoc """
  The grade level of a segment represents the relative altitude of the segment at a particular point along the segment. This level is in relation to other segments at the same point. For example, you might have a freeway at level = 0 and an overpass at level = 2. Vertical segments are represented by a polyline containing only 1 vertex and exactly two grade_level in segment.proto whose indices are 0. grade_level(0) represents the relative height at the start point of the segments, and grade_level(1) represents the one at the end point.

  ## Attributes

  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of the point along the segment, where 0 is the starting point. This means that the index of a point along a segment and its sibling will be different.
  *   `level` (*type:* `integer()`, *default:* `nil`) - The grade level of the indexed point. The grade level can be thought of as a relative vertical ordering with respect to other segments at the same point, where larger/more positive numbers are "higher". Negative grade level values are allowed and are typically used for points below grade level (0 is a common choice to represent the level of points at the ground level). For vertical segments, the height, i.e. the vertical length, is represented by difference of levels in millimeters. For example, feature.segment().grade_level(0).level() == 0 and feature.segment().grade_level(1).level() == 5000, then the length of the vertical segment feature is 5000 millimeters (5 meters).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => integer() | nil,
          :level => integer() | nil
        }

  field(:index)
  field(:level)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGradeLevelProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreGradeLevelProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreGradeLevelProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
