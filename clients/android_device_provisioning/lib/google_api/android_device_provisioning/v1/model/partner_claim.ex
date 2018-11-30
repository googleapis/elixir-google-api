# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim do
  @moduledoc """
  Identifies one claim request.

  ## Attributes

  - customerId (String.t): Required. The ID of the customer for whom the device is being claimed. Defaults to: `null`.
  - deviceIdentifier (DeviceIdentifier): Required. Device identifier of the device. Defaults to: `null`.
  - deviceMetadata (DeviceMetadata): Required. The metadata to attach to the device at claim. Defaults to: `null`.
  - sectionType (String.t): Required. The section type of the device&#39;s provisioning record. Defaults to: `null`.
    - Enum - one of [SECTION_TYPE_UNSPECIFIED, SECTION_TYPE_SIM_LOCK, SECTION_TYPE_ZERO_TOUCH]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customerId => any(),
          :deviceIdentifier => GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier.t(),
          :deviceMetadata => GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata.t(),
          :sectionType => any()
        }

  field(:customerId)
  field(:deviceIdentifier, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceIdentifier)
  field(:deviceMetadata, as: GoogleApi.AndroidDeviceProvisioning.V1.Model.DeviceMetadata)
  field(:sectionType)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.PartnerClaim do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
