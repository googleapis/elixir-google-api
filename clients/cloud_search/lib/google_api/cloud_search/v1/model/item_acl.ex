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

defmodule GoogleApi.CloudSearch.V1.Model.ItemAcl do
  @moduledoc """
  Access control list information for the item. For more information see [Map ACLs](https://developers.google.com/cloud-search/docs/guides/acls).

  ## Attributes

  *   `aclInheritanceType` (*type:* `String.t`, *default:* `nil`) - Sets the type of access rules to apply when an item inherits its ACL from a parent. This should always be set in tandem with the inheritAclFrom field. Also, when the inheritAclFrom field is set, this field should be set to a valid AclInheritanceType.
  *   `deniedReaders` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Principal.t)`, *default:* `nil`) - List of principals who are explicitly denied access to the item in search results. While principals are denied access by default, use denied readers to handle exceptions and override the list allowed readers. The maximum number of elements is 100.
  *   `inheritAclFrom` (*type:* `String.t`, *default:* `nil`) - The name of the item to inherit the Access Permission List (ACL) from. Note: ACL inheritance *only* provides access permissions to child items and does not define structural relationships, nor does it provide convenient ways to delete large groups of items. Deleting an ACL parent from the index only alters the access permissions of child items that reference the parent in the inheritAclFrom field. The item is still in the index, but may not visible in search results. By contrast, deletion of a container item also deletes all items that reference the container via the containerName field. The maximum length for this field is 1536 characters.
  *   `owners` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Principal.t)`, *default:* `nil`) - Optional. List of owners for the item. This field has no bearing on document access permissions. It does, however, offer a slight ranking boosts items where the querying user is an owner. The maximum number of elements is 5.
  *   `readers` (*type:* `list(GoogleApi.CloudSearch.V1.Model.Principal.t)`, *default:* `nil`) - List of principals who are allowed to see the item in search results. Optional if inheriting permissions from another item or if the item is not intended to be visible, such as virtual containers. The maximum number of elements is 1000.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :aclInheritanceType => String.t() | nil,
          :deniedReaders => list(GoogleApi.CloudSearch.V1.Model.Principal.t()) | nil,
          :inheritAclFrom => String.t() | nil,
          :owners => list(GoogleApi.CloudSearch.V1.Model.Principal.t()) | nil,
          :readers => list(GoogleApi.CloudSearch.V1.Model.Principal.t()) | nil
        }

  field(:aclInheritanceType)
  field(:deniedReaders, as: GoogleApi.CloudSearch.V1.Model.Principal, type: :list)
  field(:inheritAclFrom)
  field(:owners, as: GoogleApi.CloudSearch.V1.Model.Principal, type: :list)
  field(:readers, as: GoogleApi.CloudSearch.V1.Model.Principal, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.ItemAcl do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ItemAcl.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.ItemAcl do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
