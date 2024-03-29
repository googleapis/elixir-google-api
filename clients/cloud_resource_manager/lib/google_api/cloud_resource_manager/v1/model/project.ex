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

defmodule GoogleApi.CloudResourceManager.V1.Model.Project do
  @moduledoc """
  A Project is a high-level Google Cloud Platform entity. It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation time. Read-only.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The labels associated with this Project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z{0,62}. Label values must be between 0 and 63 characters long and must conform to the regular expression [a-z0-9_-]{0,63}. A label value can be empty. No more than 256 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: "environment" : "dev" Read-write.
  *   `lifecycleState` (*type:* `String.t`, *default:* `nil`) - The Project lifecycle state. Read-only.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The optional user-assigned display name of the Project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project` Read-write.
  *   `parent` (*type:* `GoogleApi.CloudResourceManager.V1.Model.ResourceId.t`, *default:* `nil`) - An optional reference to a parent Resource. Supported parent types include "organization" and "folder". Once set, the parent cannot be cleared. The `parent` can be set on creation or using the `UpdateProject` method; the end user must have the `resourcemanager.projects.create` permission on the parent.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - The unique, user-assigned ID of the Project. It must be 6 to 30 lowercase letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123` Read-only after creation.
  *   `projectNumber` (*type:* `String.t`, *default:* `nil`) - The number uniquely identifying the project. Example: `415104041262` Read-only.
  *   `tags` (*type:* `map()`, *default:* `nil`) - Optional. Input only. Immutable. Tag keys/values directly bound to this project. Each item in the map must be expressed as " : ". For example: "123/environment" : "production", "123/costCenter" : "marketing" Note: Currently this field is in Preview.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :labels => map() | nil,
          :lifecycleState => String.t() | nil,
          :name => String.t() | nil,
          :parent => GoogleApi.CloudResourceManager.V1.Model.ResourceId.t() | nil,
          :projectId => String.t() | nil,
          :projectNumber => String.t() | nil,
          :tags => map() | nil
        }

  field(:createTime, as: DateTime)
  field(:labels, type: :map)
  field(:lifecycleState)
  field(:name)
  field(:parent, as: GoogleApi.CloudResourceManager.V1.Model.ResourceId)
  field(:projectId)
  field(:projectNumber)
  field(:tags, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.Project do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.Project.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.Project do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
