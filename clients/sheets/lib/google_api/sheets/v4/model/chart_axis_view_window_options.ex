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

defmodule GoogleApi.Sheets.V4.Model.ChartAxisViewWindowOptions do
  @moduledoc """
  The options that define a "view window" for a chart (such as the visible values in an axis).

  ## Attributes

  *   `viewWindowMax` (*type:* `float()`, *default:* `nil`) - The maximum numeric value to be shown in this view window. If unset, will automatically determine a maximum value that looks good for the data.
  *   `viewWindowMin` (*type:* `float()`, *default:* `nil`) - The minimum numeric value to be shown in this view window. If unset, will automatically determine a minimum value that looks good for the data.
  *   `viewWindowMode` (*type:* `String.t`, *default:* `nil`) - The view window's mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :viewWindowMax => float() | nil,
          :viewWindowMin => float() | nil,
          :viewWindowMode => String.t() | nil
        }

  field(:viewWindowMax)
  field(:viewWindowMin)
  field(:viewWindowMode)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.ChartAxisViewWindowOptions do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.ChartAxisViewWindowOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.ChartAxisViewWindowOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
