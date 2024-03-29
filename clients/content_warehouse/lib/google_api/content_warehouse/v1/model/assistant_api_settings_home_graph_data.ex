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

defmodule GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsHomeGraphData do
  @moduledoc """
  Next ID: 8

  ## Attributes

  *   `agentId` (*type:* `String.t`, *default:* `nil`) - Agent ID, aka project ID. Used as the AgentDeviceId.agent_id of device when calling Home Graph Service.
  *   `attributes` (*type:* `map()`, *default:* `nil`) - See go/ha-dev-guide and HomeGraphItem.attribute in //assistant/verticals/homeautomation/proto/home_graph.proto
  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - Device ID, used as AgentDeviceId.device_id of device when calling Home Graph Service.
  *   `deviceType` (*type:* `String.t`, *default:* `nil`) - HGS device type. See java/com/google/home/graph/service/config/protoconf.pi for the exhaustive list of type strings.
  *   `shouldWriteToHomeGraph` (*type:* `boolean()`, *default:* `nil`) - Whether device data should be written to Home Graph via Assistant device_settings. Assistant SDK and Google Home write their devices into Home Graph through AssistantSettingsService, while Home Automation Partner devices (e.g. SmartThings, Philips Hue, Nest, TP-Link, etc.) don't need to be written to Home Graph through AssistantSettingsService. This field decides whether AssistantSettingsService writes devices to Home Graph or not.
  *   `supportedTraits` (*type:* `list(String.t)`, *default:* `nil`) - Supported traits of the device. See java/com/google/home/graph/service/config/protoconf.pi for the exhaustive list of trait-strings.
  *   `supportsDirectResponse` (*type:* `boolean()`, *default:* `nil`) - Whether the device supports direct response. See HomeGraphItem.supports_direct_response in //assistant/verticals/homeautomation/proto/home_graph.proto
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentId => String.t() | nil,
          :attributes => map() | nil,
          :deviceId => String.t() | nil,
          :deviceType => String.t() | nil,
          :shouldWriteToHomeGraph => boolean() | nil,
          :supportedTraits => list(String.t()) | nil,
          :supportsDirectResponse => boolean() | nil
        }

  field(:agentId)
  field(:attributes, type: :map)
  field(:deviceId)
  field(:deviceType)
  field(:shouldWriteToHomeGraph)
  field(:supportedTraits, type: :list)
  field(:supportsDirectResponse)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsHomeGraphData do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsHomeGraphData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.AssistantApiSettingsHomeGraphData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
