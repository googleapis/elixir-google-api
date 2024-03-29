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

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration do
  @moduledoc """
  A configuration collects the provisioning options for Android devices. Each configuration combines the following: * The EMM device policy controller (DPC) installed on the devices. * EMM policies enforced on the devices. * Metadata displayed on the device to help users during setup. Customers can add as many configurations as they need. However, zero-touch enrollment works best when a customer sets a default configuration that's applied to any new devices the organization purchases.

  ## Attributes

  *   `companyName` (*type:* `String.t`, *default:* `nil`) - Required. The name of the organization. Zero-touch enrollment shows this organization name to device users during device provisioning.
  *   `configurationId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the configuration. Assigned by the server.
  *   `configurationName` (*type:* `String.t`, *default:* `nil`) - Required. A short name that describes the configuration's purpose. For example, _Sales team_ or _Temporary employees_. The zero-touch enrollment portal displays this name to IT admins.
  *   `contactEmail` (*type:* `String.t`, *default:* `nil`) - Required. The email address that device users can contact to get help. Zero-touch enrollment shows this email address to device users before device provisioning. The value is validated on input.
  *   `contactPhone` (*type:* `String.t`, *default:* `nil`) - Required. The telephone number that device users can call, using another device, to get help. Zero-touch enrollment shows this number to device users before device provisioning. Accepts numerals, spaces, the plus sign, hyphens, and parentheses.
  *   `customMessage` (*type:* `String.t`, *default:* `nil`) - A message, containing one or two sentences, to help device users get help or give them more details about what’s happening to their device. Zero-touch enrollment shows this message before the device is provisioned.
  *   `dpcExtras` (*type:* `String.t`, *default:* `nil`) - The JSON-formatted EMM provisioning extras that are passed to the DPC.
  *   `dpcResourcePath` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the selected DPC (device policy controller) in the format `customers/[CUSTOMER_ID]/dpcs/*`. To list the supported DPCs, call `customers.dpcs.list`.
  *   `forcedResetTime` (*type:* `String.t`, *default:* `nil`) - Optional. The timeout before forcing factory reset the device if the device doesn't go through provisioning in the setup wizard, usually due to lack of network connectivity during setup wizard. Ranges from 0-6 hours, with 2 hours being the default if unset.
  *   `isDefault` (*type:* `boolean()`, *default:* `nil`) - Required. Whether this is the default configuration that zero-touch enrollment applies to any new devices the organization purchases in the future. Only one customer configuration can be the default. Setting this value to `true`, changes the previous default configuration's `isDefault` value to `false`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`. Assigned by the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :companyName => String.t() | nil,
          :configurationId => String.t() | nil,
          :configurationName => String.t() | nil,
          :contactEmail => String.t() | nil,
          :contactPhone => String.t() | nil,
          :customMessage => String.t() | nil,
          :dpcExtras => String.t() | nil,
          :dpcResourcePath => String.t() | nil,
          :forcedResetTime => String.t() | nil,
          :isDefault => boolean() | nil,
          :name => String.t() | nil
        }

  field(:companyName)
  field(:configurationId)
  field(:configurationName)
  field(:contactEmail)
  field(:contactPhone)
  field(:customMessage)
  field(:dpcExtras)
  field(:dpcResourcePath)
  field(:forcedResetTime)
  field(:isDefault)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Configuration do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
