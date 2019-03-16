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

defmodule GoogleApi.AndroidManagement.V1.Model.Policy do
  @moduledoc """
  A policy resources represents a group settings that govern the behavior of a managed device and the apps installed on it.

  ## Attributes

  - accountTypesWithManagementDisabled ([String.t]): Account types that can&#39;t be managed by the user. Defaults to: `null`.
  - addUserDisabled (boolean()): Whether adding new users and profiles is disabled. Defaults to: `null`.
  - adjustVolumeDisabled (boolean()): Whether adjusting the master volume is disabled. Defaults to: `null`.
  - alwaysOnVpnPackage (AlwaysOnVpnPackage): Configuration for an always-on VPN connection. Use with vpn_config_disabled to prevent modification of this setting. Defaults to: `null`.
  - androidDevicePolicyTracks ([String.t]): The app tracks for Android Device Policy the device can access. The device receives the latest version among all accessible tracks. If no tracks are specified, then the device only uses the production track. Defaults to: `null`.
    - Enum - one of 
  - appAutoUpdatePolicy (String.t): The app auto update policy, which controls when automatic app updates can be applied. Defaults to: `null`.
    - Enum - one of [APP_AUTO_UPDATE_POLICY_UNSPECIFIED, CHOICE_TO_THE_USER, NEVER, WIFI_ONLY, ALWAYS]
  - applications ([ApplicationPolicy]): Policy applied to apps. Defaults to: `null`.
  - autoTimeRequired (boolean()): Whether auto time is required, which prevents the user from manually setting the date and time. Defaults to: `null`.
  - blockApplicationsEnabled (boolean()): Whether applications other than the ones configured in applications are blocked from being installed. When set, applications that were installed under a previous policy but no longer appear in the policy are automatically uninstalled. Defaults to: `null`.
  - bluetoothConfigDisabled (boolean()): Whether configuring bluetooth is disabled. Defaults to: `null`.
  - bluetoothContactSharingDisabled (boolean()): Whether bluetooth contact sharing is disabled. Defaults to: `null`.
  - bluetoothDisabled (boolean()): Whether bluetooth is disabled. Prefer this setting over bluetooth_config_disabled because bluetooth_config_disabled can be bypassed by the user. Defaults to: `null`.
  - cameraDisabled (boolean()): Whether all cameras on the device are disabled. Defaults to: `null`.
  - cellBroadcastsConfigDisabled (boolean()): Whether configuring cell broadcast is disabled. Defaults to: `null`.
  - choosePrivateKeyRules ([ChoosePrivateKeyRule]): Rules for automatically choosing a private key and certificate to authenticate the device to a server. The rules are ordered by increasing precedence, so if an outgoing request matches more than one rule, the last rule defines which private key to use. Defaults to: `null`.
  - complianceRules ([ComplianceRule]): Rules declaring which mitigating actions to take when a device is not compliant with its policy. When the conditions for multiple rules are satisfied, all of the mitigating actions for the rules are taken. There is a maximum limit of 100 rules. Defaults to: `null`.
  - createWindowsDisabled (boolean()): Whether creating windows besides app windows is disabled. Defaults to: `null`.
  - credentialsConfigDisabled (boolean()): Whether configuring user credentials is disabled. Defaults to: `null`.
  - dataRoamingDisabled (boolean()): Whether roaming data services are disabled. Defaults to: `null`.
  - debuggingFeaturesAllowed (boolean()): Whether the user is allowed to enable debugging features. Defaults to: `null`.
  - defaultPermissionPolicy (String.t): The default permission policy for runtime permission requests. Defaults to: `null`.
    - Enum - one of [PERMISSION_POLICY_UNSPECIFIED, PROMPT, GRANT, DENY]
  - deviceOwnerLockScreenInfo (UserFacingMessage): The device owner information to be shown on the lock screen. Defaults to: `null`.
  - encryptionPolicy (String.t): Whether encryption is enabled Defaults to: `null`.
    - Enum - one of [ENCRYPTION_POLICY_UNSPECIFIED, ENABLED_WITHOUT_PASSWORD, ENABLED_WITH_PASSWORD]
  - ensureVerifyAppsEnabled (boolean()): Whether app verification is force-enabled. Defaults to: `null`.
  - factoryResetDisabled (boolean()): Whether factory resetting from settings is disabled. Defaults to: `null`.
  - frpAdminEmails ([String.t]): Email addresses of device administrators for factory reset protection. When the device is factory reset, it will require one of these admins to log in with the Google account email and password to unlock the device. If no admins are specified, the device won&#39;t provide factory reset protection. Defaults to: `null`.
  - funDisabled (boolean()): Whether the user is allowed to have fun. Controls whether the Easter egg game in Settings is disabled. Defaults to: `null`.
  - installAppsDisabled (boolean()): Whether user installation of apps is disabled. Defaults to: `null`.
  - installUnknownSourcesAllowed (boolean()): Whether the user is allowed to enable the \&quot;Unknown Sources\&quot; setting, which allows installation of apps from unknown sources. Defaults to: `null`.
  - keyguardDisabled (boolean()): Whether the keyguard is disabled. Defaults to: `null`.
  - keyguardDisabledFeatures ([String.t]): Disabled keyguard customizations, such as widgets. Defaults to: `null`.
    - Enum - one of 
  - kioskCustomLauncherEnabled (boolean()): Whether the kiosk custom launcher is enabled. This replaces the home screen with a launcher that locks down the device to the apps installed via the applications setting. The apps appear on a single page in alphabetical order. It is recommended to also use status_bar_disabled to block access to device settings. Defaults to: `null`.
  - locationMode (String.t): The degree of location detection enabled. The user may change the value unless the user is otherwise blocked from accessing device settings. Defaults to: `null`.
    - Enum - one of [LOCATION_MODE_UNSPECIFIED, HIGH_ACCURACY, SENSORS_ONLY, BATTERY_SAVING, OFF]
  - longSupportMessage (UserFacingMessage): A message displayed to the user in the device administators settings screen. Defaults to: `null`.
  - maximumTimeToLock (String.t): Maximum time in milliseconds for user activity until the device locks. A value of 0 means there is no restriction. Defaults to: `null`.
  - mobileNetworksConfigDisabled (boolean()): Whether configuring mobile networks is disabled. Defaults to: `null`.
  - modifyAccountsDisabled (boolean()): Whether adding or removing accounts is disabled. Defaults to: `null`.
  - mountPhysicalMediaDisabled (boolean()): Whether the user mounting physical external media is disabled. Defaults to: `null`.
  - name (String.t): The name of the policy in the form enterprises/{enterpriseId}/policies/{policyId}. Defaults to: `null`.
  - networkEscapeHatchEnabled (boolean()): Whether the network escape hatch is enabled. If a network connection can&#39;t be made at boot time, the escape hatch prompts the user to temporarily connect to a network in order to refresh the device policy. After applying policy, the temporary network will be forgotten and the device will continue booting. This prevents being unable to connect to a network if there is no suitable network in the last policy and the device boots into an app in lock task mode, or the user is otherwise unable to reach device settings. Defaults to: `null`.
  - networkResetDisabled (boolean()): Whether resetting network settings is disabled. Defaults to: `null`.
  - openNetworkConfiguration (%{optional(String.t) &#x3D;&gt; String.t}): Network configuration for the device. See configure networks for more information. Defaults to: `null`.
  - outgoingBeamDisabled (boolean()): Whether using NFC to beam data from apps is disabled. Defaults to: `null`.
  - outgoingCallsDisabled (boolean()): Whether outgoing calls are disabled. Defaults to: `null`.
  - passwordPolicies ([PasswordRequirements]): Password requirement policies. Different policies can be set for work profile or fully managed devices by setting the password_scope field in the policy. Defaults to: `null`.
  - passwordRequirements (PasswordRequirements): Password requirements. DEPRECATED - Use password_policies Defaults to: `null`.
  - permissionGrants ([PermissionGrant]): Explicit permission or group grants or denials for all apps. These values override the default_permission_policy. Defaults to: `null`.
  - permittedInputMethods (PackageNameList): If present, only the input methods provided by packages in this list are permitted. If this field is present, but the list is empty, then only system input methods are permitted. Defaults to: `null`.
  - persistentPreferredActivities ([PersistentPreferredActivity]): Default intent handler activities. Defaults to: `null`.
  - playStoreMode (String.t): This mode controls which apps are available to the user in the Play Store and the behavior on the device when apps are removed from the policy. Defaults to: `null`.
    - Enum - one of [PLAY_STORE_MODE_UNSPECIFIED, WHITELIST, BLACKLIST]
  - privateKeySelectionEnabled (boolean()): Allows showing UI on a device for a user to choose a private key alias if there are no matching rules in ChoosePrivateKeyRules. For devices below Android P, setting this may leave enterprise keys vulnerable. Defaults to: `null`.
  - recommendedGlobalProxy (ProxyInfo): The network-independent global HTTP proxy. Typically proxies should be configured per-network in open_network_configuration. However for unusual configurations like general internal filtering a global HTTP proxy may be useful. If the proxy is not accessible, network access may break. The global proxy is only a recommendation and some apps may ignore it. Defaults to: `null`.
  - removeUserDisabled (boolean()): Whether removing other users is disabled. Defaults to: `null`.
  - safeBootDisabled (boolean()): Whether rebooting the device into safe boot is disabled. Defaults to: `null`.
  - screenCaptureDisabled (boolean()): Whether screen capture is disabled. Defaults to: `null`.
  - setUserIconDisabled (boolean()): Whether changing the user icon is disabled. Defaults to: `null`.
  - setWallpaperDisabled (boolean()): Whether changing the wallpaper is disabled. Defaults to: `null`.
  - setupActions ([SetupAction]): Actions to take during the setup process. Defaults to: `null`.
  - shareLocationDisabled (boolean()): Whether location sharing is disabled. Defaults to: `null`.
  - shortSupportMessage (UserFacingMessage): A message displayed to the user in the settings screen wherever functionality has been disabled by the admin. Defaults to: `null`.
  - skipFirstUseHintsEnabled (boolean()): Flag to skip hints on the first use. Enterprise admin can enable the system recommendation for apps to skip their user tutorial and other introductory hints on first start-up. Defaults to: `null`.
  - smsDisabled (boolean()): Whether sending and receiving SMS messages is disabled. Defaults to: `null`.
  - statusBarDisabled (boolean()): Whether the status bar is disabled. This disables notifications, quick settings, and other screen overlays that allow escape from full-screen mode. Defaults to: `null`.
  - statusReportingSettings (StatusReportingSettings): Status reporting settings Defaults to: `null`.
  - stayOnPluggedModes ([String.t]): The battery plugged in modes for which the device stays on. When using this setting, it is recommended to clear maximum_time_to_lock so that the device doesn&#39;t lock itself while it stays on. Defaults to: `null`.
    - Enum - one of 
  - systemUpdate (SystemUpdate): The system update policy, which controls how OS updates are applied. If the update type is WINDOWED, the update window will automatically apply to Play app updates as well. Defaults to: `null`.
  - tetheringConfigDisabled (boolean()): Whether configuring tethering and portable hotspots is disabled. Defaults to: `null`.
  - uninstallAppsDisabled (boolean()): Whether user uninstallation of applications is disabled. Defaults to: `null`.
  - unmuteMicrophoneDisabled (boolean()): Whether the microphone is muted and adjusting microphone volume is disabled. Defaults to: `null`.
  - usbFileTransferDisabled (boolean()): Whether transferring files over USB is disabled. Defaults to: `null`.
  - usbMassStorageEnabled (boolean()): Whether USB storage is enabled. Deprecated. Defaults to: `null`.
  - version (String.t): The version of the policy. This is a read-only field. The version is incremented each time the policy is updated. Defaults to: `null`.
  - vpnConfigDisabled (boolean()): Whether configuring VPN is disabled. Defaults to: `null`.
  - wifiConfigDisabled (boolean()): Whether configuring Wi-Fi access points is disabled. Defaults to: `null`.
  - wifiConfigsLockdownEnabled (boolean()): DEPRECATED - Use wifi_config_disabled. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountTypesWithManagementDisabled => list(any()),
          :addUserDisabled => any(),
          :adjustVolumeDisabled => any(),
          :alwaysOnVpnPackage => GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage.t(),
          :androidDevicePolicyTracks => list(any()),
          :appAutoUpdatePolicy => any(),
          :applications => list(GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.t()),
          :autoTimeRequired => any(),
          :blockApplicationsEnabled => any(),
          :bluetoothConfigDisabled => any(),
          :bluetoothContactSharingDisabled => any(),
          :bluetoothDisabled => any(),
          :cameraDisabled => any(),
          :cellBroadcastsConfigDisabled => any(),
          :choosePrivateKeyRules =>
            list(GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule.t()),
          :complianceRules => list(GoogleApi.AndroidManagement.V1.Model.ComplianceRule.t()),
          :createWindowsDisabled => any(),
          :credentialsConfigDisabled => any(),
          :dataRoamingDisabled => any(),
          :debuggingFeaturesAllowed => any(),
          :defaultPermissionPolicy => any(),
          :deviceOwnerLockScreenInfo =>
            GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :encryptionPolicy => any(),
          :ensureVerifyAppsEnabled => any(),
          :factoryResetDisabled => any(),
          :frpAdminEmails => list(any()),
          :funDisabled => any(),
          :installAppsDisabled => any(),
          :installUnknownSourcesAllowed => any(),
          :keyguardDisabled => any(),
          :keyguardDisabledFeatures => list(any()),
          :kioskCustomLauncherEnabled => any(),
          :locationMode => any(),
          :longSupportMessage => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :maximumTimeToLock => any(),
          :mobileNetworksConfigDisabled => any(),
          :modifyAccountsDisabled => any(),
          :mountPhysicalMediaDisabled => any(),
          :name => any(),
          :networkEscapeHatchEnabled => any(),
          :networkResetDisabled => any(),
          :openNetworkConfiguration => map(),
          :outgoingBeamDisabled => any(),
          :outgoingCallsDisabled => any(),
          :passwordPolicies =>
            list(GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t()),
          :passwordRequirements => GoogleApi.AndroidManagement.V1.Model.PasswordRequirements.t(),
          :permissionGrants => list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t()),
          :permittedInputMethods => GoogleApi.AndroidManagement.V1.Model.PackageNameList.t(),
          :persistentPreferredActivities =>
            list(GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity.t()),
          :playStoreMode => any(),
          :privateKeySelectionEnabled => any(),
          :recommendedGlobalProxy => GoogleApi.AndroidManagement.V1.Model.ProxyInfo.t(),
          :removeUserDisabled => any(),
          :safeBootDisabled => any(),
          :screenCaptureDisabled => any(),
          :setUserIconDisabled => any(),
          :setWallpaperDisabled => any(),
          :setupActions => list(GoogleApi.AndroidManagement.V1.Model.SetupAction.t()),
          :shareLocationDisabled => any(),
          :shortSupportMessage => GoogleApi.AndroidManagement.V1.Model.UserFacingMessage.t(),
          :skipFirstUseHintsEnabled => any(),
          :smsDisabled => any(),
          :statusBarDisabled => any(),
          :statusReportingSettings =>
            GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings.t(),
          :stayOnPluggedModes => list(any()),
          :systemUpdate => GoogleApi.AndroidManagement.V1.Model.SystemUpdate.t(),
          :tetheringConfigDisabled => any(),
          :uninstallAppsDisabled => any(),
          :unmuteMicrophoneDisabled => any(),
          :usbFileTransferDisabled => any(),
          :usbMassStorageEnabled => any(),
          :version => any(),
          :vpnConfigDisabled => any(),
          :wifiConfigDisabled => any(),
          :wifiConfigsLockdownEnabled => any()
        }

  field(:accountTypesWithManagementDisabled, type: :list)
  field(:addUserDisabled)
  field(:adjustVolumeDisabled)
  field(:alwaysOnVpnPackage, as: GoogleApi.AndroidManagement.V1.Model.AlwaysOnVpnPackage)
  field(:androidDevicePolicyTracks, type: :list)
  field(:appAutoUpdatePolicy)
  field(:applications, as: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy, type: :list)
  field(:autoTimeRequired)
  field(:blockApplicationsEnabled)
  field(:bluetoothConfigDisabled)
  field(:bluetoothContactSharingDisabled)
  field(:bluetoothDisabled)
  field(:cameraDisabled)
  field(:cellBroadcastsConfigDisabled)

  field(
    :choosePrivateKeyRules,
    as: GoogleApi.AndroidManagement.V1.Model.ChoosePrivateKeyRule,
    type: :list
  )

  field(:complianceRules, as: GoogleApi.AndroidManagement.V1.Model.ComplianceRule, type: :list)
  field(:createWindowsDisabled)
  field(:credentialsConfigDisabled)
  field(:dataRoamingDisabled)
  field(:debuggingFeaturesAllowed)
  field(:defaultPermissionPolicy)
  field(:deviceOwnerLockScreenInfo, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:encryptionPolicy)
  field(:ensureVerifyAppsEnabled)
  field(:factoryResetDisabled)
  field(:frpAdminEmails, type: :list)
  field(:funDisabled)
  field(:installAppsDisabled)
  field(:installUnknownSourcesAllowed)
  field(:keyguardDisabled)
  field(:keyguardDisabledFeatures, type: :list)
  field(:kioskCustomLauncherEnabled)
  field(:locationMode)
  field(:longSupportMessage, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:maximumTimeToLock)
  field(:mobileNetworksConfigDisabled)
  field(:modifyAccountsDisabled)
  field(:mountPhysicalMediaDisabled)
  field(:name)
  field(:networkEscapeHatchEnabled)
  field(:networkResetDisabled)
  field(:openNetworkConfiguration, type: :map)
  field(:outgoingBeamDisabled)
  field(:outgoingCallsDisabled)

  field(
    :passwordPolicies,
    as: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements,
    type: :list
  )

  field(:passwordRequirements, as: GoogleApi.AndroidManagement.V1.Model.PasswordRequirements)
  field(:permissionGrants, as: GoogleApi.AndroidManagement.V1.Model.PermissionGrant, type: :list)
  field(:permittedInputMethods, as: GoogleApi.AndroidManagement.V1.Model.PackageNameList)

  field(
    :persistentPreferredActivities,
    as: GoogleApi.AndroidManagement.V1.Model.PersistentPreferredActivity,
    type: :list
  )

  field(:playStoreMode)
  field(:privateKeySelectionEnabled)
  field(:recommendedGlobalProxy, as: GoogleApi.AndroidManagement.V1.Model.ProxyInfo)
  field(:removeUserDisabled)
  field(:safeBootDisabled)
  field(:screenCaptureDisabled)
  field(:setUserIconDisabled)
  field(:setWallpaperDisabled)
  field(:setupActions, as: GoogleApi.AndroidManagement.V1.Model.SetupAction, type: :list)
  field(:shareLocationDisabled)
  field(:shortSupportMessage, as: GoogleApi.AndroidManagement.V1.Model.UserFacingMessage)
  field(:skipFirstUseHintsEnabled)
  field(:smsDisabled)
  field(:statusBarDisabled)

  field(
    :statusReportingSettings,
    as: GoogleApi.AndroidManagement.V1.Model.StatusReportingSettings
  )

  field(:stayOnPluggedModes, type: :list)
  field(:systemUpdate, as: GoogleApi.AndroidManagement.V1.Model.SystemUpdate)
  field(:tetheringConfigDisabled)
  field(:uninstallAppsDisabled)
  field(:unmuteMicrophoneDisabled)
  field(:usbFileTransferDisabled)
  field(:usbMassStorageEnabled)
  field(:version)
  field(:vpnConfigDisabled)
  field(:wifiConfigDisabled)
  field(:wifiConfigsLockdownEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
