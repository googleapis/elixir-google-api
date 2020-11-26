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

defmodule GoogleApi.Admin.Directory_v1.Model.OrgUnit do
  @moduledoc """
  Managing your account's organizational units allows you to configure your users' access to services and custom settings. For more information about common organizational unit tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-org-units.html).

  ## Attributes

  *   `blockInheritance` (*type:* `boolean()`, *default:* `nil`) - Determines if a sub-organizational unit can inherit the settings of the parent organization. The default value is `false`, meaning a sub-organizational unit inherits the settings of the nearest parent organizational unit. For more information on inheritance and users in an organization structure, see the [administration help center](http://support.google.com/a/bin/answer.py?answer=182442&topic=1227584&ctx=topic).
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the organizational unit.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `kind` (*type:* `String.t`, *default:* `admin#directory#orgUnit`) - The type of the API resource. For Orgunits resources, the value is `admin#directory#orgUnit`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The organizational unit's path name. For example, an organizational unit's name within the /corp/support/sales_support parent path is sales_support. Required.
  *   `orgUnitId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the organizational unit.
  *   `orgUnitPath` (*type:* `String.t`, *default:* `nil`) - The full path to the organizational unit. The `orgUnitPath` is a derived property. When listed, it is derived from `parentOrgunitPath` and organizational unit's `name`. For example, for an organizational unit named 'apps' under parent organization '/engineering', the orgUnitPath is '/engineering/apps'. In order to edit an `orgUnitPath`, either update the name of the organization or the `parentOrgunitPath`. A user's organizational unit determines which G Suite services the user has access to. If the user is moved to a new organization, the user's access changes. For more information about organization structures, see the [administration help center](http://support.google.com/a/bin/answer.py?answer=182433&topic=1227584&ctx=topic). For more information about moving a user to a different organization, see [Update a user](/admin-sdk/directory/v1/guides/manage-users.html#update_user).
  *   `parentOrgUnitId` (*type:* `String.t`, *default:* `nil`) - The unique ID of the parent organizational unit. Required, unless `parentOrgUnitPath` is set.
  *   `parentOrgUnitPath` (*type:* `String.t`, *default:* `nil`) - The organizational unit's parent path. For example, /corp/sales is the parent path for /corp/sales/sales_support organizational unit. Required, unless `parentOrgUnitId` is set.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockInheritance => boolean(),
          :description => String.t(),
          :etag => String.t(),
          :kind => String.t(),
          :name => String.t(),
          :orgUnitId => String.t(),
          :orgUnitPath => String.t(),
          :parentOrgUnitId => String.t(),
          :parentOrgUnitPath => String.t()
        }

  field(:blockInheritance)
  field(:description)
  field(:etag)
  field(:kind)
  field(:name)
  field(:orgUnitId)
  field(:orgUnitPath)
  field(:parentOrgUnitId)
  field(:parentOrgUnitPath)
end

defimpl Poison.Decoder, for: GoogleApi.Admin.Directory_v1.Model.OrgUnit do
  def decode(value, options) do
    GoogleApi.Admin.Directory_v1.Model.OrgUnit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Admin.Directory_v1.Model.OrgUnit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
