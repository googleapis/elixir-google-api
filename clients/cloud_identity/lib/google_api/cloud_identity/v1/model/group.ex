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

defmodule GoogleApi.CloudIdentity.V1.Model.Group do
  @moduledoc """
  A group within the Cloud Identity Groups API. A `Group` is a collection of entities, where each entity is either a user, another group, or a service account.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the `Group` was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An extended description to help users determine the purpose of a `Group`. Must not be longer than 4,096 characters.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the `Group`.
  *   `dynamicGroupMetadata` (*type:* `GoogleApi.CloudIdentity.V1.Model.DynamicGroupMetadata.t`, *default:* `nil`) - Optional. Dynamic group metadata like queries and status.
  *   `groupKey` (*type:* `GoogleApi.CloudIdentity.V1.Model.EntityKey.t`, *default:* `nil`) - Required. Immutable. The `EntityKey` of the `Group`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Required. One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value. Google Groups are the default type of group and have a label with a key of `cloudidentity.googleapis.com/groups.discussion_forum` and an empty value. Existing Google Groups can have an additional label with a key of `cloudidentity.googleapis.com/groups.security` and an empty value added to them. **This is an immutable change and the security label cannot be removed once added.** Dynamic groups have a label with a key of `cloudidentity.googleapis.com/groups.dynamic`. Identity-mapped groups for Cloud Search have a label with a key of `system/groups/external` and an empty value. Examples: {"cloudidentity.googleapis.com/groups.discussion_forum": ""} or {"system/groups/external": ""}.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group_id}`.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The resource name of the entity under which this `Group` resides in the Cloud Identity resource hierarchy. Must be of the form `identitysources/{identity_source_id}` for external- identity-mapped groups or `customers/{customer_id}` for Google Groups.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the `Group` was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :description => String.t(),
          :displayName => String.t(),
          :dynamicGroupMetadata => GoogleApi.CloudIdentity.V1.Model.DynamicGroupMetadata.t(),
          :groupKey => GoogleApi.CloudIdentity.V1.Model.EntityKey.t(),
          :labels => map(),
          :name => String.t(),
          :parent => String.t(),
          :updateTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:dynamicGroupMetadata, as: GoogleApi.CloudIdentity.V1.Model.DynamicGroupMetadata)
  field(:groupKey, as: GoogleApi.CloudIdentity.V1.Model.EntityKey)
  field(:labels, type: :map)
  field(:name)
  field(:parent)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.Group do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.Group.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.Group do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
