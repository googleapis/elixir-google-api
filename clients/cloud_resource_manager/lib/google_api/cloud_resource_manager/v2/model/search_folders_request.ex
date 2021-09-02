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

defmodule GoogleApi.CloudResourceManager.V2.Model.SearchFoldersRequest do
  @moduledoc """
  The request message for searching folders.

  ## Attributes

  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - Optional. A pagination token returned from a previous call to `SearchFolders` that indicates from where search should continue.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Search criteria used to select the Folders to return. If no search criteria is specified then all accessible folders will be returned. Query expressions can be used to restrict results based upon displayName, lifecycleState and parent, where the operators `=`, `NOT`, `AND` and `OR` can be used along with the suffix wildcard symbol `*`. The displayName field in a query expression should use escaped quotes for values that include whitespace to prevent unexpected behavior. Some example queries are: * Query `displayName=Test*` returns Folder resources whose display name starts with "Test". * Query `lifecycleState=ACTIVE` returns Folder resources with `lifecycleState` set to `ACTIVE`. * Query `parent=folders/123` returns Folder resources that have `folders/123` as a parent resource. * Query `parent=folders/123 AND lifecycleState=ACTIVE` returns active Folder resources that have `folders/123` as a parent resource. * Query `displayName=\\\\"Test String\\\\"` returns Folder resources with display names that include both "Test" and "String".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :query => String.t() | nil
        }

  field(:pageSize)
  field(:pageToken)
  field(:query)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V2.Model.SearchFoldersRequest do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V2.Model.SearchFoldersRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V2.Model.SearchFoldersRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
