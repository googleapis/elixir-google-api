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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfile do
  @moduledoc """


  ## Attributes

  *   `alloNotificationProfile` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfileAlloNotificationProfile.t`, *default:* `nil`) - Each device can have only one type of notification profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alloNotificationProfile =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfileAlloNotificationProfile.t()
            | nil
        }

  field(:alloNotificationProfile,
    as:
      GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfileAlloNotificationProfile
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfile do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfile.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsNotificationProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
