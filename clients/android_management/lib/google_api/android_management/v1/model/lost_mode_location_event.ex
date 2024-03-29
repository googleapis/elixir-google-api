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

defmodule GoogleApi.AndroidManagement.V1.Model.LostModeLocationEvent do
  @moduledoc """
  A lost mode event containing the device location and battery level as a percentage.

  ## Attributes

  *   `batteryLevel` (*type:* `integer()`, *default:* `nil`) - The battery level as a number between 0 and 100 inclusive
  *   `location` (*type:* `GoogleApi.AndroidManagement.V1.Model.Location.t`, *default:* `nil`) - The device location
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batteryLevel => integer() | nil,
          :location => GoogleApi.AndroidManagement.V1.Model.Location.t() | nil
        }

  field(:batteryLevel)
  field(:location, as: GoogleApi.AndroidManagement.V1.Model.Location)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.LostModeLocationEvent do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.LostModeLocationEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.LostModeLocationEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
