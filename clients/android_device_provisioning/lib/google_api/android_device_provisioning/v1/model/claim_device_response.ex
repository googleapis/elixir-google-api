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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse do
  @moduledoc """
  Response message containing device id of the claim.

  ## Attributes

  - deviceId (String.t): The device ID of the claimed device. Defaults to `nil`.
  - deviceName (String.t): The resource name of the device in the format
  `partners/[PARTNER_ID]/devices/[DEVICE_ID]`. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deviceId => String.t(),
          :deviceName => String.t()
        }

  field(:deviceId)
  field(:deviceName)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.ClaimDeviceResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
