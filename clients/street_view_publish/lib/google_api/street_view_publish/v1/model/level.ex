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

defmodule GoogleApi.StreetViewPublish.V1.Model.Level do
  @moduledoc """
  Level information containing level number and its corresponding name.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. A name assigned to this Level, restricted to 3 characters. Consider how the elevator buttons would be labeled for this level if there was an elevator.
  *   `number` (*type:* `float()`, *default:* `nil`) - Optional. Floor number, used for ordering. 0 indicates the ground level, 1 indicates the first level above ground level, -1 indicates the first level under ground level. Non-integer values are OK.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :number => float() | nil
        }

  field(:name)
  field(:number)
end

defimpl Poison.Decoder, for: GoogleApi.StreetViewPublish.V1.Model.Level do
  def decode(value, options) do
    GoogleApi.StreetViewPublish.V1.Model.Level.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.StreetViewPublish.V1.Model.Level do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
