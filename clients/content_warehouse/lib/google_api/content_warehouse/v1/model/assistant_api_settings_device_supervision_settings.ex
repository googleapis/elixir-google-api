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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceSupervisionSettings do
  @moduledoc """


  ## Attributes

  *   `downtimeSettings` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceDowntimeSettings.t`, *default:* `nil`) - Specification of times that a device shouldn't respond to certain users. See go/home-ft-prd.
  *   `featureFilters` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceFeatureFilters.t`, *default:* `nil`) - Restrictions on features that certain users can access on a device. See go/home-ft-prd.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :downtimeSettings =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceDowntimeSettings.t()
            | nil,
          :featureFilters =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceFeatureFilters.t() | nil
        }

  field(:downtimeSettings,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceDowntimeSettings
  )

  field(:featureFilters,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceFeatureFilters
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceSupervisionSettings do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceSupervisionSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsDeviceSupervisionSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end