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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDevicesRequest do
  @moduledoc """
  Request to unclaim devices asynchronously in batch.

  ## Attributes

  - unclaims (list(GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerUnclaim.t)): Required. The list of devices to unclaim. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :unclaims => list(GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerUnclaim.t())
        }

  field(:unclaims, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerUnclaim, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDevicesRequest do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDevicesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.UnclaimDevicesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
