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

defmodule GoogleApi.Firestore.V1.Model.QueryTarget do
  @moduledoc """
  A target specified by a query.

  ## Attributes

  *   `parent` (*type:* `String.t`, *default:* `nil`) - The parent resource name. In the format: `projects/{project_id}/databases/{database_id}/documents` or `projects/{project_id}/databases/{database_id}/documents/{document_path}`. For example: `projects/my-project/databases/my-database/documents` or `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  *   `structuredQuery` (*type:* `GoogleApi.Firestore.V1.Model.StructuredQuery.t`, *default:* `nil`) - A structured query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parent => String.t() | nil,
          :structuredQuery => GoogleApi.Firestore.V1.Model.StructuredQuery.t() | nil
        }

  field(:parent)
  field(:structuredQuery, as: GoogleApi.Firestore.V1.Model.StructuredQuery)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.QueryTarget do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.QueryTarget.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.QueryTarget do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
