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

defmodule GoogleApi.Poly.V1.Model.Quaternion do
  @moduledoc """
  A [Quaternion](//en.wikipedia.org/wiki/Quaternion). Please note: if in the
  response you see "w: 1" and nothing else this is the default value of
  [0, 0, 0, 1] where x,y, and z are 0.

  ## Attributes

  *   `w` (*type:* `float()`, *default:* `nil`) - The scalar component.
  *   `x` (*type:* `float()`, *default:* `nil`) - The x component.
  *   `y` (*type:* `float()`, *default:* `nil`) - The y component.
  *   `z` (*type:* `float()`, *default:* `nil`) - The z component.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :w => float(),
          :x => float(),
          :y => float(),
          :z => float()
        }

  field(:w)
  field(:x)
  field(:y)
  field(:z)
end

defimpl Poison.Decoder, for: GoogleApi.Poly.V1.Model.Quaternion do
  def decode(value, options) do
    GoogleApi.Poly.V1.Model.Quaternion.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Poly.V1.Model.Quaternion do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
