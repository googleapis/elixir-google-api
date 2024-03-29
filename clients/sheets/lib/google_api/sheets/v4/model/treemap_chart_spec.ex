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

defmodule GoogleApi.Sheets.V4.Model.TreemapChartSpec do
  @moduledoc """
  A Treemap chart.

  ## Attributes

  *   `colorData` (*type:* `GoogleApi.Sheets.V4.Model.ChartData.t`, *default:* `nil`) - The data that determines the background color of each treemap data cell. This field is optional. If not specified, size_data is used to determine background colors. If specified, the data is expected to be numeric. color_scale will determine how the values in this data map to data cell background colors.
  *   `colorScale` (*type:* `GoogleApi.Sheets.V4.Model.TreemapChartColorScale.t`, *default:* `nil`) - The color scale for data cells in the treemap chart. Data cells are assigned colors based on their color values. These color values come from color_data, or from size_data if color_data is not specified. Cells with color values less than or equal to min_value will have minValueColor as their background color. Cells with color values greater than or equal to max_value will have maxValueColor as their background color. Cells with color values between min_value and max_value will have background colors on a gradient between minValueColor and maxValueColor, the midpoint of the gradient being midValueColor. Cells with missing or non-numeric color values will have noDataColor as their background color.
  *   `headerColor` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - The background color for header cells. Deprecated: Use header_color_style.
  *   `headerColorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The background color for header cells. If header_color is also set, this field takes precedence.
  *   `hideTooltips` (*type:* `boolean()`, *default:* `nil`) - True to hide tooltips.
  *   `hintedLevels` (*type:* `integer()`, *default:* `nil`) - The number of additional data levels beyond the labeled levels to be shown on the treemap chart. These levels are not interactive and are shown without their labels. Defaults to 0 if not specified.
  *   `labels` (*type:* `GoogleApi.Sheets.V4.Model.ChartData.t`, *default:* `nil`) - The data that contains the treemap cell labels.
  *   `levels` (*type:* `integer()`, *default:* `nil`) - The number of data levels to show on the treemap chart. These levels are interactive and are shown with their labels. Defaults to 2 if not specified.
  *   `maxValue` (*type:* `float()`, *default:* `nil`) - The maximum possible data value. Cells with values greater than this will have the same color as cells with this value. If not specified, defaults to the actual maximum value from color_data, or the maximum value from size_data if color_data is not specified.
  *   `minValue` (*type:* `float()`, *default:* `nil`) - The minimum possible data value. Cells with values less than this will have the same color as cells with this value. If not specified, defaults to the actual minimum value from color_data, or the minimum value from size_data if color_data is not specified.
  *   `parentLabels` (*type:* `GoogleApi.Sheets.V4.Model.ChartData.t`, *default:* `nil`) - The data the contains the treemap cells' parent labels.
  *   `sizeData` (*type:* `GoogleApi.Sheets.V4.Model.ChartData.t`, *default:* `nil`) - The data that determines the size of each treemap data cell. This data is expected to be numeric. The cells corresponding to non-numeric or missing data will not be rendered. If color_data is not specified, this data is used to determine data cell background colors as well.
  *   `textFormat` (*type:* `GoogleApi.Sheets.V4.Model.TextFormat.t`, *default:* `nil`) - The text format for all labels on the chart. The link field is not supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :colorData => GoogleApi.Sheets.V4.Model.ChartData.t() | nil,
          :colorScale => GoogleApi.Sheets.V4.Model.TreemapChartColorScale.t() | nil,
          :headerColor => GoogleApi.Sheets.V4.Model.Color.t() | nil,
          :headerColorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t() | nil,
          :hideTooltips => boolean() | nil,
          :hintedLevels => integer() | nil,
          :labels => GoogleApi.Sheets.V4.Model.ChartData.t() | nil,
          :levels => integer() | nil,
          :maxValue => float() | nil,
          :minValue => float() | nil,
          :parentLabels => GoogleApi.Sheets.V4.Model.ChartData.t() | nil,
          :sizeData => GoogleApi.Sheets.V4.Model.ChartData.t() | nil,
          :textFormat => GoogleApi.Sheets.V4.Model.TextFormat.t() | nil
        }

  field(:colorData, as: GoogleApi.Sheets.V4.Model.ChartData)
  field(:colorScale, as: GoogleApi.Sheets.V4.Model.TreemapChartColorScale)
  field(:headerColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:headerColorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:hideTooltips)
  field(:hintedLevels)
  field(:labels, as: GoogleApi.Sheets.V4.Model.ChartData)
  field(:levels)
  field(:maxValue)
  field(:minValue)
  field(:parentLabels, as: GoogleApi.Sheets.V4.Model.ChartData)
  field(:sizeData, as: GoogleApi.Sheets.V4.Model.ChartData)
  field(:textFormat, as: GoogleApi.Sheets.V4.Model.TextFormat)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.TreemapChartSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.TreemapChartSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.TreemapChartSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
