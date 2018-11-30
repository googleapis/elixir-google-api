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

defmodule GoogleApi.Drive.V3.Model.FileCapabilities do
  @moduledoc """
  Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.

  ## Attributes

  - canAddChildren (boolean()): Whether the current user can add children to this folder. This is always false when the item is not a folder. Defaults to: `null`.
  - canChangeCopyRequiresWriterPermission (boolean()): Whether the current user can change the copyRequiresWriterPermission restriction of this file. Defaults to: `null`.
  - canChangeViewersCanCopyContent (boolean()): Deprecated Defaults to: `null`.
  - canComment (boolean()): Whether the current user can comment on this file. Defaults to: `null`.
  - canCopy (boolean()): Whether the current user can copy this file. For a Team Drive item, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder. Defaults to: `null`.
  - canDelete (boolean()): Whether the current user can delete this file. Defaults to: `null`.
  - canDeleteChildren (boolean()): Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for Team Drive items. Defaults to: `null`.
  - canDownload (boolean()): Whether the current user can download this file. Defaults to: `null`.
  - canEdit (boolean()): Whether the current user can edit this file. Defaults to: `null`.
  - canListChildren (boolean()): Whether the current user can list the children of this folder. This is always false when the item is not a folder. Defaults to: `null`.
  - canMoveChildrenOutOfTeamDrive (boolean()): Whether the current user can move children of this folder outside of the Team Drive. This is false when the item is not a folder. Only populated for Team Drive items. Defaults to: `null`.
  - canMoveChildrenWithinTeamDrive (boolean()): Whether the current user can move children of this folder within the Team Drive. This is false when the item is not a folder. Only populated for Team Drive items. Defaults to: `null`.
  - canMoveItemIntoTeamDrive (boolean()): Whether the current user can move this item into a Team Drive. If the item is in a Team Drive, this field is equivalent to canMoveTeamDriveItem. Defaults to: `null`.
  - canMoveItemOutOfTeamDrive (boolean()): Whether the current user can move this Team Drive item outside of this Team Drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added. Only populated for Team Drive items. Defaults to: `null`.
  - canMoveItemWithinTeamDrive (boolean()): Whether the current user can move this Team Drive item within this Team Drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added. Only populated for Team Drive items. Defaults to: `null`.
  - canMoveTeamDriveItem (boolean()): Deprecated - use canMoveItemWithinTeamDrive or canMoveItemOutOfTeamDrive instead. Defaults to: `null`.
  - canReadRevisions (boolean()): Whether the current user can read the revisions resource of this file. For a Team Drive item, whether revisions of non-folder descendants of this item, or this item itself if it is not a folder, can be read. Defaults to: `null`.
  - canReadTeamDrive (boolean()): Whether the current user can read the Team Drive to which this file belongs. Only populated for Team Drive files. Defaults to: `null`.
  - canRemoveChildren (boolean()): Whether the current user can remove children from this folder. This is always false when the item is not a folder. For Team Drive items, use canDeleteChildren or canTrashChildren instead. Defaults to: `null`.
  - canRename (boolean()): Whether the current user can rename this file. Defaults to: `null`.
  - canShare (boolean()): Whether the current user can modify the sharing settings for this file. Defaults to: `null`.
  - canTrash (boolean()): Whether the current user can move this file to trash. Defaults to: `null`.
  - canTrashChildren (boolean()): Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for Team Drive items. Defaults to: `null`.
  - canUntrash (boolean()): Whether the current user can restore this file from trash. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :canAddChildren => any(),
          :canChangeCopyRequiresWriterPermission => any(),
          :canChangeViewersCanCopyContent => any(),
          :canComment => any(),
          :canCopy => any(),
          :canDelete => any(),
          :canDeleteChildren => any(),
          :canDownload => any(),
          :canEdit => any(),
          :canListChildren => any(),
          :canMoveChildrenOutOfTeamDrive => any(),
          :canMoveChildrenWithinTeamDrive => any(),
          :canMoveItemIntoTeamDrive => any(),
          :canMoveItemOutOfTeamDrive => any(),
          :canMoveItemWithinTeamDrive => any(),
          :canMoveTeamDriveItem => any(),
          :canReadRevisions => any(),
          :canReadTeamDrive => any(),
          :canRemoveChildren => any(),
          :canRename => any(),
          :canShare => any(),
          :canTrash => any(),
          :canTrashChildren => any(),
          :canUntrash => any()
        }

  field(:canAddChildren)
  field(:canChangeCopyRequiresWriterPermission)
  field(:canChangeViewersCanCopyContent)
  field(:canComment)
  field(:canCopy)
  field(:canDelete)
  field(:canDeleteChildren)
  field(:canDownload)
  field(:canEdit)
  field(:canListChildren)
  field(:canMoveChildrenOutOfTeamDrive)
  field(:canMoveChildrenWithinTeamDrive)
  field(:canMoveItemIntoTeamDrive)
  field(:canMoveItemOutOfTeamDrive)
  field(:canMoveItemWithinTeamDrive)
  field(:canMoveTeamDriveItem)
  field(:canReadRevisions)
  field(:canReadTeamDrive)
  field(:canRemoveChildren)
  field(:canRename)
  field(:canShare)
  field(:canTrash)
  field(:canTrashChildren)
  field(:canUntrash)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.FileCapabilities do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.FileCapabilities.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.FileCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
