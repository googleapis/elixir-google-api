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

defmodule GoogleApi.CloudResourceManager.V1.Model.OrgPolicy do
  @moduledoc """
  Defines a Cloud Organization `Policy` which is used to specify `Constraints`
  for configurations of Cloud Platform resources.

  ## Attributes

  *   `booleanPolicy` (*type:* `GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy.t`, *default:* `nil`) - For boolean `Constraints`, whether to enforce the `Constraint` or not.
  *   `constraint` (*type:* `String.t`, *default:* `nil`) - The name of the `Constraint` the `Policy` is configuring, for example,
      `constraints/serviceuser.services`.

      A [list of available
      constraints](/resource-manager/docs/organization-policy/org-policy-constraints)
      is available.

      Immutable after creation.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - An opaque tag indicating the current version of the `Policy`, used for
      concurrency control.

      When the `Policy` is returned from either a `GetPolicy` or a
      `ListOrgPolicy` request, this `etag` indicates the version of the current
      `Policy` to use when executing a read-modify-write loop.

      When the `Policy` is returned from a `GetEffectivePolicy` request, the
      `etag` will be unset.

      When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value
      that was returned from a `GetOrgPolicy` request as part of a
      read-modify-write loop for concurrency control. Not setting the `etag`in a
      `SetOrgPolicy` request will result in an unconditional write of the
      `Policy`.
  *   `listPolicy` (*type:* `GoogleApi.CloudResourceManager.V1.Model.ListPolicy.t`, *default:* `nil`) - List of values either allowed or disallowed.
  *   `restoreDefault` (*type:* `GoogleApi.CloudResourceManager.V1.Model.RestoreDefault.t`, *default:* `nil`) - Restores the default behavior of the constraint; independent of
      `Constraint` type.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - The time stamp the `Policy` was previously updated. This is set by the
      server, not specified by the caller, and represents the last time a call to
      `SetOrgPolicy` was made for that `Policy`. Any value set by the client will
      be ignored.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Version of the `Policy`. Default version is 0;
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :booleanPolicy => GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy.t(),
          :constraint => String.t(),
          :etag => String.t(),
          :listPolicy => GoogleApi.CloudResourceManager.V1.Model.ListPolicy.t(),
          :restoreDefault => GoogleApi.CloudResourceManager.V1.Model.RestoreDefault.t(),
          :updateTime => DateTime.t(),
          :version => integer()
        }

  field(:booleanPolicy, as: GoogleApi.CloudResourceManager.V1.Model.BooleanPolicy)
  field(:constraint)
  field(:etag)
  field(:listPolicy, as: GoogleApi.CloudResourceManager.V1.Model.ListPolicy)
  field(:restoreDefault, as: GoogleApi.CloudResourceManager.V1.Model.RestoreDefault)
  field(:updateTime, as: DateTime)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.OrgPolicy do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.OrgPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.OrgPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
