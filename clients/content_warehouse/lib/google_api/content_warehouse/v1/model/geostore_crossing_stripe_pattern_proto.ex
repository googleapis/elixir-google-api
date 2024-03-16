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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreCrossingStripePatternProto do
  @moduledoc """
  Possible patterns of a crossing stripe (any element that denotes a point on a segment or lane at which the vehicle must stop or yield). These include crosswalks, stop, and yield lines.

  ## Attributes

  *   `borderLine` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GeostorePhysicalLineProto.t`, *default:* `nil`) - 
  *   `borderPattern` (*type:* `String.t`, *default:* `nil`) - 
  *   `color` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostorePaintedElementLogicalColorProto.t)`, *default:* `nil`) - Colors found on this crossing.
  *   `stripePattern` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :borderLine => GoogleApi.ContentWarehouse.V1.Model.GeostorePhysicalLineProto.t() | nil,
          :borderPattern => String.t() | nil,
          :color =>
            list(GoogleApi.ContentWarehouse.V1.Model.GeostorePaintedElementLogicalColorProto.t())
            | nil,
          :stripePattern => String.t() | nil
        }

  field(:borderLine, as: GoogleApi.ContentWarehouse.V1.Model.GeostorePhysicalLineProto)
  field(:borderPattern)

  field(:color,
    as: GoogleApi.ContentWarehouse.V1.Model.GeostorePaintedElementLogicalColorProto,
    type: :list
  )

  field(:stripePattern)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreCrossingStripePatternProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreCrossingStripePatternProto.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.GeostoreCrossingStripePatternProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end