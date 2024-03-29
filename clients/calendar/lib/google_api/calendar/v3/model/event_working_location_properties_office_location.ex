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

defmodule GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation do
  @moduledoc """
  If present, specifies that the user is working from an office.

  ## Attributes

  *   `buildingId` (*type:* `String.t`, *default:* `nil`) - An optional building identifier. This should reference a building ID in the organization's Resources database.
  *   `deskId` (*type:* `String.t`, *default:* `nil`) - An optional desk identifier.
  *   `floorId` (*type:* `String.t`, *default:* `nil`) - An optional floor identifier.
  *   `floorSectionId` (*type:* `String.t`, *default:* `nil`) - An optional floor section identifier.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The office name that's displayed in Calendar Web and Mobile clients. We recommend you reference a building name in the organization's Resources database.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildingId => String.t() | nil,
          :deskId => String.t() | nil,
          :floorId => String.t() | nil,
          :floorSectionId => String.t() | nil,
          :label => String.t() | nil
        }

  field(:buildingId)
  field(:deskId)
  field(:floorId)
  field(:floorSectionId)
  field(:label)
end

defimpl Poison.Decoder,
  for: GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation do
  def decode(value, options) do
    GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Calendar.V3.Model.EventWorkingLocationPropertiesOfficeLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
