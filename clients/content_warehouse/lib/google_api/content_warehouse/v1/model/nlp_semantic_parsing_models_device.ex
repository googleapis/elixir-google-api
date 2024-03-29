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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDevice do
  @moduledoc """
  The device to perform an action. Both device_type and device_name are optional and they can coexist: [on my phone]: device_type = PHONE [on my nexus 4]: device_name = "nexus 4" [on my nexus phone]: device_type = PHONE, device_name = "nexus"

  ## Attributes

  *   `deviceName` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDeviceName.t`, *default:* `nil`) - The name of the device (Nexus 5, Nexus 10, etc).
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - The type of the device (phone, tablet, watch, etc).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceName =>
            GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDeviceName.t() | nil,
          :deviceType => String.t() | nil
        }

  field(:deviceName, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDeviceName)
  field(:deviceType)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDevice do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDevice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingModelsDevice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
