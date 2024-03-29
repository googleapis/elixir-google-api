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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfig do
  @moduledoc """
  3P Action Metadata. Next ID: 3

  ## Attributes

  *   `deviceActionCapability` (*type:* `GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoDeviceActionCapability.t`, *default:* `nil`) - DeviceActionCapability from DeviceModelPackage.
  *   `projectConfigs` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfigProjectConfig.t)`, *default:* `nil`) - List of Action project capabilities.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceActionCapability =>
            GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoDeviceActionCapability.t()
            | nil,
          :projectConfigs =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfigProjectConfig.t()
            )
            | nil
        }

  field(:deviceActionCapability,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantDevicesPlatformProtoDeviceActionCapability
  )

  field(:projectConfigs,
    as: GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfigProjectConfig,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfig do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiThirdPartyActionConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
