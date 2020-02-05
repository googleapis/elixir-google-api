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

defmodule GoogleApi.Sheets.V4.Model.InterpolationPoint do
  @moduledoc """
  A single interpolation point on a gradient conditional format.
  These pin the gradient color scale according to the color,
  type and value chosen.

  ## Attributes

  *   `color` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - The color this interpolation point should use.
  *   `colorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The color this interpolation point should use.
      If color is also set, this field takes precedence.
  *   `type` (*type:* `String.t`, *default:* `nil`) - How the value should be interpreted.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value this interpolation point uses.  May be a formula.
      Unused if type is MIN or
      MAX.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :color => GoogleApi.Sheets.V4.Model.Color.t(),
          :colorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :type => String.t(),
          :value => String.t()
        }

  field(:color, as: GoogleApi.Sheets.V4.Model.Color)
  field(:colorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.InterpolationPoint do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.InterpolationPoint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.InterpolationPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
