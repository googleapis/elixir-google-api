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

defmodule GoogleApi.ContentWarehouse.V1.Model.GeostoreLevelProto do
  @moduledoc """
  A feature used to represent a logical level, e.g. floor. A feature belonging to a given level should point to the level feature using relation RELATION_ON_LEVEL. The standard feature properties are interpreted as follows: name - Levels should have names according to the following: * Short, elevator-style names, such as "L" for "Lobby" and "2" for "Second floor", must be included and must be tagged with FLAG_ABBREVIATED. There must be an unambiguous "best" abbreviated name. * Longer names such as "Ticketing" or "Upper Level" may be present when the level has a specific name. * Non-abbreviated names should only be added if they are known to meaningfully expand upon the abbreviated name. For example, the long name "Observation Deck 2" for the abbreviated name "OD2" is a good additional name. In contrast, the name "Level 2" for the abbreviated name "2" is not desired. address - This should always be empty. point, polyline, polygon, center - These should never be set (since we are representing a logical entity). preferred_viewport - This should be the approximate extent of the level. child - This should always be empty.

  ## Attributes

  *   `building` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t)`, *default:* `nil`) - The building(s) to which this level belongs. A level will typically belong to a single building, but it is valid for a single level to be shared by multiple buildings (for example, a large underground parking lot). These buildings refer back to the level via another strong reference (the BuildingProto.level field).
  *   `number` (*type:* `number()`, *default:* `nil`) - The elevation of this level relative to the ground level, in levels. 0 = ground floor (even in locales that call the ground floor "1st floor"); 0.5 = between ground and first floor, eg mezzanine; 1 = first floor (one level above ground floor); -3 = three levels below ground floor.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :building => list(GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto.t()) | nil,
          :number => number() | nil
        }

  field(:building, as: GoogleApi.ContentWarehouse.V1.Model.GeostoreFeatureIdProto, type: :list)
  field(:number)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreLevelProto do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GeostoreLevelProto.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.GeostoreLevelProto do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end