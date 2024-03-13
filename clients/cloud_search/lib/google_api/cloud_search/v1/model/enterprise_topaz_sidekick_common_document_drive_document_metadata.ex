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

defmodule GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata do
  @moduledoc """
  Meta data for drive documents.

  ## Attributes

  *   `documentId` (*type:* `String.t`, *default:* `nil`) - The drive document cosmo id. Client could use the id to build a URL to open a document. Please use Document.document_id.
  *   `isPrivate` (*type:* `boolean()`, *default:* `nil`) - Additional field to identify whether a document is private since scope set to LIMITED can mean both that the doc is private or that it's shared with others. is_private indicates whether the doc is not shared with anyone except for the owner.
  *   `lastCommentTimeMs` (*type:* `String.t`, *default:* `nil`) - Timestamp of the most recent comment added to the document in milliseconds since epoch.
  *   `lastEditTimeMs` (*type:* `String.t`, *default:* `nil`) - Timestamp of the most recent edit from the current user in milliseconds since epoch.
  *   `lastModificationTimeMillis` (*type:* `String.t`, *default:* `nil`) - Last modification time of the document (independent of the user that modified it).
  *   `lastUpdatedTimeMs` (*type:* `String.t`, *default:* `nil`) - Timestamp of the last updated time of the document in milliseconds since epoch.
  *   `lastViewTimeMs` (*type:* `String.t`, *default:* `nil`) - Timestamp of the most recent view from the current user in milliseconds since epoch.
  *   `owner` (*type:* `GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.t`, *default:* `nil`) - The owner of the document.
  *   `scope` (*type:* `String.t`, *default:* `nil`) - ACL scope of the document which identifies the sharing status of the doc (e.g., limited, shared with link, team drive, ...).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :documentId => String.t() | nil,
          :isPrivate => boolean() | nil,
          :lastCommentTimeMs => String.t() | nil,
          :lastEditTimeMs => String.t() | nil,
          :lastModificationTimeMillis => String.t() | nil,
          :lastUpdatedTimeMs => String.t() | nil,
          :lastViewTimeMs => String.t() | nil,
          :owner => GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson.t() | nil,
          :scope => String.t() | nil
        }

  field(:documentId)
  field(:isPrivate)
  field(:lastCommentTimeMs)
  field(:lastEditTimeMs)
  field(:lastModificationTimeMillis)
  field(:lastUpdatedTimeMs)
  field(:lastViewTimeMs)
  field(:owner, as: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonPerson)
  field(:scope)
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.EnterpriseTopazSidekickCommonDocumentDriveDocumentMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end