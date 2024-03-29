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

defmodule GoogleApi.DisplayVideo.V3.Model.FloodlightGroup do
  @moduledoc """
  A single Floodlight group.

  ## Attributes

  *   `activeViewConfig` (*type:* `GoogleApi.DisplayVideo.V3.Model.ActiveViewVideoViewabilityMetricConfig.t`, *default:* `nil`) - The Active View video viewability metric configuration for the Floodlight group.
  *   `customVariables` (*type:* `map()`, *default:* `nil`) - User-defined custom variables owned by the Floodlight group. Use custom Floodlight variables to create reporting data that is tailored to your unique business needs. Custom Floodlight variables use the keys `U1=`, `U2=`, and so on, and can take any values that you choose to pass to them. You can use them to track virtually any type of data that you collect about your customers, such as the genre of movie that a customer purchases, the country to which the item is shipped, and so on. Custom Floodlight variables may not be used to pass any data that could be used or recognized as personally identifiable information (PII). Example: `custom_variables { fields { "U1": value { number_value: 123.4 }, "U2": value { string_value: "MyVariable2" }, "U3": value { string_value: "MyVariable3" } } }` Acceptable values for keys are "U1" through "U100", inclusive. String values must be less than 64 characters long, and cannot contain the following characters: `"<>`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the Floodlight group.
  *   `floodlightGroupId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the Floodlight group. Assigned by the system.
  *   `lookbackWindow` (*type:* `GoogleApi.DisplayVideo.V3.Model.LookbackWindow.t`, *default:* `nil`) - Required. The lookback window for the Floodlight group. Both click_days and impression_days are required. Acceptable values for both are `0` to `90`, inclusive.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Floodlight group.
  *   `webTagType` (*type:* `String.t`, *default:* `nil`) - Required. The web tag type enabled for the Floodlight group.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activeViewConfig =>
            GoogleApi.DisplayVideo.V3.Model.ActiveViewVideoViewabilityMetricConfig.t() | nil,
          :customVariables => map() | nil,
          :displayName => String.t() | nil,
          :floodlightGroupId => String.t() | nil,
          :lookbackWindow => GoogleApi.DisplayVideo.V3.Model.LookbackWindow.t() | nil,
          :name => String.t() | nil,
          :webTagType => String.t() | nil
        }

  field(:activeViewConfig,
    as: GoogleApi.DisplayVideo.V3.Model.ActiveViewVideoViewabilityMetricConfig
  )

  field(:customVariables, type: :map)
  field(:displayName)
  field(:floodlightGroupId)
  field(:lookbackWindow, as: GoogleApi.DisplayVideo.V3.Model.LookbackWindow)
  field(:name)
  field(:webTagType)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V3.Model.FloodlightGroup do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V3.Model.FloodlightGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V3.Model.FloodlightGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
