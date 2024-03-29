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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.GoogleLocation do
  @moduledoc """
  Represents a Location that is present on Google. This can be a location that has been claimed by the user, someone else, or could be unclaimed.

  ## Attributes

  *   `location` (*type:* `GoogleApi.MyBusinessBusinessInformation.V1.Model.Location.t`, *default:* `nil`) - The sparsely populated Location information. This field can be re-used in CreateLocation if it is not currently claimed by a user.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of this GoogleLocation, in the format `googleLocations/{googleLocationId}`.
  *   `requestAdminRightsUri` (*type:* `String.t`, *default:* `nil`) - A URL that will redirect the user to the request admin rights UI. This field is only present if the location has already been claimed by any user, including the current user.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :location => GoogleApi.MyBusinessBusinessInformation.V1.Model.Location.t() | nil,
          :name => String.t() | nil,
          :requestAdminRightsUri => String.t() | nil
        }

  field(:location, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.Location)
  field(:name)
  field(:requestAdminRightsUri)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.GoogleLocation do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.GoogleLocation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.GoogleLocation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
