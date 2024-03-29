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

defmodule GoogleApi.CloudResourceManager.V2.Model.Folder do
  @moduledoc """
  A Folder in an Organization's resource hierarchy, used to organize that Organization's resources.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when the Folder was created. Assigned by the server.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\\p{L}\\p{N}]([\\p{L}\\p{N}_- ]{0,28}[\\p{L}\\p{N}])?`.
  *   `lifecycleState` (*type:* `String.t`, *default:* `nil`) - Output only. The lifecycle state of the folder. Updates to the lifecycle_state must be performed via DeleteFolder and UndeleteFolder.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the Folder. Its format is `folders/{folder_id}`, for example: "folders/1234".
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Required. The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  *   `tags` (*type:* `map()`, *default:* `nil`) - Optional. Input only. Immutable. Tag keys/values directly bound to this folder. Each item in the map must be expressed as " : ". For example: "123/environment" : "production", "123/costCenter" : "marketing" Note: Currently this field is in Preview.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :lifecycleState => String.t() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :tags => map() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:lifecycleState)
  field(:name)
  field(:parent)
  field(:tags, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V2.Model.Folder do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V2.Model.Folder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V2.Model.Folder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
