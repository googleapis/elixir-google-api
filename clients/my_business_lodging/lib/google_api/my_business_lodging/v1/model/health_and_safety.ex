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

defmodule GoogleApi.MyBusinessLodging.V1.Model.HealthAndSafety do
  @moduledoc """
  Health and safety measures implemented by the hotel during COVID-19.

  ## Attributes

  *   `enhancedCleaning` (*type:* `GoogleApi.MyBusinessLodging.V1.Model.EnhancedCleaning.t`, *default:* `nil`) - Enhanced cleaning measures implemented by the hotel during COVID-19.
  *   `increasedFoodSafety` (*type:* `GoogleApi.MyBusinessLodging.V1.Model.IncreasedFoodSafety.t`, *default:* `nil`) - Increased food safety measures implemented by the hotel during COVID-19.
  *   `minimizedContact` (*type:* `GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact.t`, *default:* `nil`) - Minimized contact measures implemented by the hotel during COVID-19.
  *   `personalProtection` (*type:* `GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection.t`, *default:* `nil`) - Personal protection measures implemented by the hotel during COVID-19.
  *   `physicalDistancing` (*type:* `GoogleApi.MyBusinessLodging.V1.Model.PhysicalDistancing.t`, *default:* `nil`) - Physical distancing measures implemented by the hotel during COVID-19.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enhancedCleaning => GoogleApi.MyBusinessLodging.V1.Model.EnhancedCleaning.t() | nil,
          :increasedFoodSafety =>
            GoogleApi.MyBusinessLodging.V1.Model.IncreasedFoodSafety.t() | nil,
          :minimizedContact => GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact.t() | nil,
          :personalProtection =>
            GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection.t() | nil,
          :physicalDistancing => GoogleApi.MyBusinessLodging.V1.Model.PhysicalDistancing.t() | nil
        }

  field(:enhancedCleaning, as: GoogleApi.MyBusinessLodging.V1.Model.EnhancedCleaning)
  field(:increasedFoodSafety, as: GoogleApi.MyBusinessLodging.V1.Model.IncreasedFoodSafety)
  field(:minimizedContact, as: GoogleApi.MyBusinessLodging.V1.Model.MinimizedContact)
  field(:personalProtection, as: GoogleApi.MyBusinessLodging.V1.Model.PersonalProtection)
  field(:physicalDistancing, as: GoogleApi.MyBusinessLodging.V1.Model.PhysicalDistancing)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessLodging.V1.Model.HealthAndSafety do
  def decode(value, options) do
    GoogleApi.MyBusinessLodging.V1.Model.HealthAndSafety.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessLodging.V1.Model.HealthAndSafety do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
