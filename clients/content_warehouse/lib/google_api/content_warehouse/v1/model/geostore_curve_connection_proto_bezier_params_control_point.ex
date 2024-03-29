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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProtoBezierParamsControlPoint do
  @moduledoc """


  ## Attributes

  *   `angleDegrees` (*type:* `float()`, *default:* `nil`) - We use this parameterization to make curves change predictable when endpoints move. Each point P is defined in terms of the straight edge [S, E] between the start point of the curve S and its end point E. *P / / / S *------------* E Counter-clockwise angle between vector SE and vector SP.
  *   `distanceMultiplier` (*type:* `float()`, *default:* `nil`) - Distance(S, P) in units of Distance(S, E).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :angleDegrees => float() | nil,
          :distanceMultiplier => float() | nil
        }

  field(:angleDegrees)
  field(:distanceMultiplier)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProtoBezierParamsControlPoint do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProtoBezierParamsControlPoint.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreCurveConnectionProtoBezierParamsControlPoint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
