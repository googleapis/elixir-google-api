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

defmodule GoogleApi.Sheets.V4.Model.PointStyle do
  @moduledoc """
  The style of a point on the chart.

  ## Attributes

  *   `shape` (*type:* `String.t`, *default:* `nil`) - The point shape. If empty or unspecified, a default shape is used.
  *   `size` (*type:* `float()`, *default:* `nil`) - The point size. If empty, a default size is used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :shape => String.t() | nil,
          :size => float() | nil
        }

  field(:shape)
  field(:size)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PointStyle do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.PointStyle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PointStyle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
