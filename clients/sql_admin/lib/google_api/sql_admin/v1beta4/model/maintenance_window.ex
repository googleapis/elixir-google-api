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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow do
  @moduledoc """
  Maintenance window. This specifies when a Cloud SQL instance is restarted for system maintenance purposes.

  ## Attributes

  *   `day` (*type:* `integer()`, *default:* `nil`) - day of week (1-7), starting on Monday.
  *   `hour` (*type:* `integer()`, *default:* `nil`) - hour of day - 0 to 23.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always *sql#maintenanceWindow*.
  *   `updateTrack` (*type:* `String.t`, *default:* `nil`) - Maintenance timing setting: *canary* (Earlier) or *stable* (Later). Learn more.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :day => integer() | nil,
          :hour => integer() | nil,
          :kind => String.t() | nil,
          :updateTrack => String.t() | nil
        }

  field(:day)
  field(:hour)
  field(:kind)
  field(:updateTrack)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.MaintenanceWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
