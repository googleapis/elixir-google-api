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

defmodule GoogleApi.Sheets.V4.Model.DimensionGroup do
  @moduledoc """
  A group over an interval of rows or columns on a sheet, which can contain or be contained within other groups. A group can be collapsed or expanded as a unit on the sheet.

  ## Attributes

  *   `collapsed` (*type:* `boolean()`, *default:* `nil`) - This field is true if this group is collapsed. A collapsed group remains collapsed if an overlapping group at a shallower depth is expanded. A true value does not imply that all dimensions within the group are hidden, since a dimension's visibility can change independently from this group property. However, when this property is updated, all dimensions within it are set to hidden if this field is true, or set to visible if this field is false.
  *   `depth` (*type:* `integer()`, *default:* `nil`) - The depth of the group, representing how many groups have a range that wholly contains the range of this group.
  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.DimensionRange.t`, *default:* `nil`) - The range over which this group exists.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collapsed => boolean() | nil,
          :depth => integer() | nil,
          :range => GoogleApi.Sheets.V4.Model.DimensionRange.t() | nil
        }

  field(:collapsed)
  field(:depth)
  field(:range, as: GoogleApi.Sheets.V4.Model.DimensionRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.DimensionGroup do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.DimensionGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.DimensionGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
