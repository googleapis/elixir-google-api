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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.CloneContext do
  @moduledoc """
  Database instance clone context.

  ## Attributes

  *   `binLogCoordinates` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.BinLogCoordinates.t`, *default:* `nil`) - Binary log coordinates, if specified, identify the position up to which the source instance is cloned. If not specified, the source instance is cloned up to the most recent binary log coordinates.
  *   `destinationInstanceName` (*type:* `String.t`, *default:* `nil`) - Name of the Cloud SQL instance to be created as a clone.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always *sql#cloneContext*.
  *   `pitrTimestampMs` (*type:* `String.t`, *default:* `nil`) - Reserved for future use.
  *   `pointInTime` (*type:* `DateTime.t`, *default:* `nil`) - Reserved for future use.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :binLogCoordinates => GoogleApi.SQLAdmin.V1beta4.Model.BinLogCoordinates.t() | nil,
          :destinationInstanceName => String.t() | nil,
          :kind => String.t() | nil,
          :pitrTimestampMs => String.t() | nil,
          :pointInTime => DateTime.t() | nil
        }

  field(:binLogCoordinates, as: GoogleApi.SQLAdmin.V1beta4.Model.BinLogCoordinates)
  field(:destinationInstanceName)
  field(:kind)
  field(:pitrTimestampMs)
  field(:pointInTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.CloneContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.CloneContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.CloneContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
