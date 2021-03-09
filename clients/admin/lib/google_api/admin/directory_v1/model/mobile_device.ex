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

defmodule GoogleApi.Admin.Directory_v1.Model.MobileDevice do
  @moduledoc """
  Google Workspace Mobile Management includes Android, [Google Sync](https://support.google.com/a/answer/135937), and iOS devices. For more information about common group mobile device API tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile-devices.html).

  ## Attributes

  *   `firstSync` (*type:* `DateTime.t`, *default:* `nil`) - Date and time the device was first synchronized with the policy settings in the G Suite administrator control panel (Read-only)
  *   `hardware` (*type:* `String.t`, *default:* `nil`) - Mobile Device Hardware (Read-only)
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `securityPatchLevel` (*type:* `String.t`, *default:* `nil`) - Mobile Device Security patch level (Read-only)
  *   `defaultLanguage` (*type:* `String.t`, *default:* `nil`) - The default locale used on the device.
  *   `devicePasswordStatus` (*type:* `String.t`, *default:* `nil`) - DevicePasswordStatus (Read-only)
  *   `userAgent` (*type:* `String.t`, *default:* `nil`) - Gives information about the device such as `os` version. This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device).
  *   `deviceCompromisedStatus` (*type:* `String.t`, *default:* `nil`) - The compromised device status.
  *   `supportsWorkProfile` (*type:* `boolean()`, *default:* `nil`) - Work profile supported on device (Read-only)
  *   `privilege` (*type:* `String.t`, *default:* `nil`) - DMAgentPermission (Read-only)
  *   `managedAccountIsOnOwnerProfile` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating if this account is on owner/primary profile or not.
  *   `email` (*type:* `list(String.t)`, *default:* `nil`) - List of owner's email addresses. If your application needs the current list of user emails, use the [get](/admin-sdk/directory/v1/reference/mobiledevices/get.html) method. For additional information, see the [retrieve a user](/admin-sdk/directory/v1/guides/manage-users#get_user) method.
  *   `os` (*type:* `String.t`, *default:* `nil`) - The mobile device's operating system, for example IOS 4.3 or Android 2.3.5. This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device).
  *   `releaseVersion` (*type:* `String.t`, *default:* `nil`) - Mobile Device release version version (Read-only)
  *   `encryptionStatus` (*type:* `String.t`, *default:* `nil`) - Mobile Device Encryption Status (Read-only)
  *   `networkOperator` (*type:* `String.t`, *default:* `nil`) - Mobile Device mobile or network operator (if available) (Read-only)
  *   `bootloaderVersion` (*type:* `String.t`, *default:* `nil`) - Mobile Device Bootloader version (Read-only)
  *   `imei` (*type:* `String.t`, *default:* `nil`) - The device's IMEI number.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#mobiledevice`) - The type of the API resource. For Mobiledevices resources, the value is `admin#directory#mobiledevice`.
  *   `lastSync` (*type:* `DateTime.t`, *default:* `nil`) - Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only)
  *   `unknownSourcesStatus` (*type:* `boolean()`, *default:* `nil`) - Unknown sources enabled or disabled on device (Read-only)
  *   `resourceId` (*type:* `String.t`, *default:* `nil`) - The unique ID the API service uses to identify the mobile device.
  *   `name` (*type:* `list(String.t)`, *default:* `nil`) - List of the owner's user names. If your application needs the current list of device owner names, use the [get](/admin-sdk/directory/v1/reference/mobiledevices/get.html) method. For more information about retrieving mobile device user information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-users#get_user).
  *   `deviceId` (*type:* `String.t`, *default:* `nil`) - The serial number for a Google Sync mobile device. For Android and iOS devices, this is a software generated unique identifier.
  *   `buildNumber` (*type:* `String.t`, *default:* `nil`) - The device's operating system build number.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The device's status.
  *   `manufacturer` (*type:* `String.t`, *default:* `nil`) - Mobile Device manufacturer (Read-only)
  *   `model` (*type:* `String.t`, *default:* `nil`) - The mobile device's model name, for example Nexus S. This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile=devices#update_mobile_device).
  *   `serialNumber` (*type:* `String.t`, *default:* `nil`) - The device's serial number.
  *   `meid` (*type:* `String.t`, *default:* `nil`) - The device's MEID number.
  *   `developerOptionsStatus` (*type:* `boolean()`, *default:* `nil`) - Developer options enabled or disabled on device (Read-only)
  *   `brand` (*type:* `String.t`, *default:* `nil`) - Mobile Device Brand (Read-only)
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of mobile device.
  *   `kernelVersion` (*type:* `String.t`, *default:* `nil`) - The device's kernel version.
  *   `basebandVersion` (*type:* `String.t`, *default:* `nil`) - The device's baseband version.
  *   `hardwareId` (*type:* `String.t`, *default:* `nil`) - The IMEI/MEID unique identifier for Android hardware. It is not applicable to Google Sync devices. When adding an Android mobile device, this is an optional property. When updating one of these devices, this is a read-only property.
  *   `adbStatus` (*type:* `boolean()`, *default:* `nil`) - Adb (USB debugging) enabled or disabled on device (Read-only)
  *   `wifiMacAddress` (*type:* `String.t`, *default:* `nil`) - The device's MAC address on Wi-Fi networks.
  *   `applications` (*type:* `list(GoogleApi.Admin.Directory_v1.Model.MobileDeviceApplications.t)`, *default:* `nil`) - The list of applications installed on an Android mobile device. It is not applicable to Google Sync and iOS devices. The list includes any Android applications that access Google Workspace data. When updating an applications list, it is important to note that updates replace the existing list. If the Android device has two existing applications and the API updates the list with five applications, the is now the updated list of five applications.
  *   `otherAccountsInfo` (*type:* `list(String.t)`, *default:* `nil`) - List of accounts added on device (Read-only)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :firstSync => DateTime.t() | nil,
          :hardware => String.t() | nil,
          :etag => String.t() | nil,
          :securityPatchLevel => String.t() | nil,
          :defaultLanguage => String.t() | nil,
          :devicePasswordStatus => String.t() | nil,
          :userAgent => String.t() | nil,
          :deviceCompromisedStatus => String.t() | nil,
          :supportsWorkProfile => boolean() | nil,
          :privilege => String.t() | nil,
          :managedAccountIsOnOwnerProfile => boolean() | nil,
          :email => list(String.t()) | nil,
          :os => String.t() | nil,
          :releaseVersion => String.t() | nil,
          :encryptionStatus => String.t() | nil,
          :networkOperator => String.t() | nil,
          :bootloaderVersion => String.t() | nil,
          :imei => String.t() | nil,
          :kind => String.t() | nil,
          :lastSync => DateTime.t() | nil,
          :unknownSourcesStatus => boolean() | nil,
          :resourceId => String.t() | nil,
          :name => list(String.t()) | nil,
          :deviceId => String.t() | nil,
          :buildNumber => String.t() | nil,
          :status => String.t() | nil,
          :manufacturer => String.t() | nil,
          :model => String.t() | nil,
          :serialNumber => String.t() | nil,
          :meid => String.t() | nil,
          :developerOptionsStatus => boolean() | nil,
          :brand => String.t() | nil,
          :type => String.t() | nil,
          :kernelVersion => String.t() | nil,
          :basebandVersion => String.t() | nil,
          :hardwareId => String.t() | nil,
          :adbStatus => boolean() | nil,
          :wifiMacAddress => String.t() | nil,
          :applications =>
            list(GoogleApi.Admin.Directory_v1.Model.MobileDeviceApplications.t()) | nil,
          :otherAccountsInfo => list(String.t()) | nil
        }

  field(:firstSync, as: DateTime)
  field(:hardware)
  field(:etag)
  field(:securityPatchLevel)
  field(:defaultLanguage)
  field(:devicePasswordStatus)
  field(:userAgent)
  field(:deviceCompromisedStatus)
  field(:supportsWorkProfile)
  field(:privilege)
  field(:managedAccountIsOnOwnerProfile)
  field(:email, type: :list)
  field(:os)
  field(:releaseVersion)
  field(:encryptionStatus)
  field(:networkOperator)
  field(:bootloaderVersion)
  field(:imei)
  field(:kind)
  field(:lastSync, as: DateTime)
  field(:unknownSourcesStatus)
  field(:resourceId)
  field(:name, type: :list)
  field(:deviceId)
  field(:buildNumber)
  field(:status)
  field(:manufacturer)
  field(:model)
  field(:serialNumber)
  field(:meid)
  field(:developerOptionsStatus)
  field(:brand)
  field(:type)
  field(:kernelVersion)
  field(:basebandVersion)
  field(:hardwareId)
  field(:adbStatus)
  field(:wifiMacAddress)

  field(:applications,
    as: GoogleApi.Admin.Directory_v1.Model.MobileDeviceApplications,
    type: :list
  )

  field(:otherAccountsInfo, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.MobileDevice do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.MobileDevice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.MobileDevice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
