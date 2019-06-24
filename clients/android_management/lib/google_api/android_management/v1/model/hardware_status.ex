# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidManagement.V1.Model.HardwareStatus do
  @moduledoc """
  Hardware status. Temperatures may be compared to the temperature thresholds available in hardwareInfo to determine hardware health.

  ## Attributes

  *   `batteryTemperatures` (*type:* `list(number())`, *default:* `nil`) - Current battery temperatures in Celsius for each battery on the device.
  *   `cpuTemperatures` (*type:* `list(number())`, *default:* `nil`) - Current CPU temperatures in Celsius for each CPU on the device.
  *   `cpuUsages` (*type:* `list(number())`, *default:* `nil`) - CPU usages in percentage for each core available on the device. Usage is 0 for each unplugged core. Empty array implies that CPU usage is not supported in the system.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the measurements were taken.
  *   `fanSpeeds` (*type:* `list(number())`, *default:* `nil`) - Fan speeds in RPM for each fan on the device. Empty array means that there are no fans or fan speed is not supported on the system.
  *   `gpuTemperatures` (*type:* `list(number())`, *default:* `nil`) - Current GPU temperatures in Celsius for each GPU on the device.
  *   `skinTemperatures` (*type:* `list(number())`, *default:* `nil`) - Current device skin temperatures in Celsius.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batteryTemperatures => list(number()),
          :cpuTemperatures => list(number()),
          :cpuUsages => list(number()),
          :createTime => DateTime.t(),
          :fanSpeeds => list(number()),
          :gpuTemperatures => list(number()),
          :skinTemperatures => list(number())
        }

  field(:batteryTemperatures, type: :list)
  field(:cpuTemperatures, type: :list)
  field(:cpuUsages, type: :list)
  field(:createTime, as: DateTime)
  field(:fanSpeeds, type: :list)
  field(:gpuTemperatures, type: :list)
  field(:skinTemperatures, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.HardwareStatus do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.HardwareStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.HardwareStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
