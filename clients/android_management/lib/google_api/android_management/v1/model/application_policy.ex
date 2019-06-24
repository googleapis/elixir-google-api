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

defmodule GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy do
  @moduledoc """
  Policy for an individual app.

  ## Attributes

  *   `defaultPermissionPolicy` (*type:* `String.t`, *default:* `nil`) - The default policy for all permissions requested by the app. If specified, this overrides the policy-level default_permission_policy which applies to all apps. It does not override the permission_grants which applies to all apps.
  *   `delegatedScopes` (*type:* `list(String.t)`, *default:* `nil`) - The scopes delegated to the app from Android Device Policy.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Whether the app is disabled. When disabled, the app data is still preserved.
  *   `installType` (*type:* `String.t`, *default:* `nil`) - The type of installation to perform.
  *   `lockTaskAllowed` (*type:* `boolean()`, *default:* `nil`) - Whether the app is allowed to lock itself in full-screen mode.
  *   `managedConfiguration` (*type:* `map()`, *default:* `nil`) - Managed configuration applied to the app. The format for the configuration is dictated by the ManagedProperty values supported by the app. Each field name in the managed configuration must match the key field of the ManagedProperty. The field value must be compatible with the type of the ManagedProperty: <table> <tr><td><i>type</i></td><td><i>JSON value</i></td></tr> <tr><td>BOOL</td><td>true or false</td></tr> <tr><td>STRING</td><td>string</td></tr> <tr><td>INTEGER</td><td>number</td></tr> <tr><td>CHOICE</td><td>string</td></tr> <tr><td>MULTISELECT</td><td>array of strings</td></tr> <tr><td>HIDDEN</td><td>string</td></tr> <tr><td>BUNDLE_ARRAY</td><td>array of objects</td></tr> </table>
  *   `managedConfigurationTemplate` (*type:* `GoogleApi.AndroidManagement.V1.Model.ManagedConfigurationTemplate.t`, *default:* `nil`) - The managed configurations template for the app, saved from the managed configurations iframe. This field is ignored if managed_configuration is set.
  *   `minimumVersionCode` (*type:* `integer()`, *default:* `nil`) - The minimum version of the app that runs on the device. If set, the device attempts to update the app to at least this version code. If the app is not up-to-date, the device will contain a NonComplianceDetail with non_compliance_reason set to APP_NOT_UPDATED. The app must already be published to Google Play with a version code greater than or equal to this value. At most 20 apps may specify a minimum version code per policy.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The package name of the app. For example, com.google.android.youtube for the YouTube app.
  *   `permissionGrants` (*type:* `list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t)`, *default:* `nil`) - Explicit permission grants or denials for the app. These values override the default_permission_policy and permission_grants which apply to all apps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :defaultPermissionPolicy => String.t(),
          :delegatedScopes => list(String.t()),
          :disabled => boolean(),
          :installType => String.t(),
          :lockTaskAllowed => boolean(),
          :managedConfiguration => map(),
          :managedConfigurationTemplate =>
            GoogleApi.AndroidManagement.V1.Model.ManagedConfigurationTemplate.t(),
          :minimumVersionCode => integer(),
          :packageName => String.t(),
          :permissionGrants => list(GoogleApi.AndroidManagement.V1.Model.PermissionGrant.t())
        }

  field(:defaultPermissionPolicy)
  field(:delegatedScopes, type: :list)
  field(:disabled)
  field(:installType)
  field(:lockTaskAllowed)
  field(:managedConfiguration, type: :map)

  field(
    :managedConfigurationTemplate,
    as: GoogleApi.AndroidManagement.V1.Model.ManagedConfigurationTemplate
  )

  field(:minimumVersionCode)
  field(:packageName)
  field(:permissionGrants, as: GoogleApi.AndroidManagement.V1.Model.PermissionGrant, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ApplicationPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
