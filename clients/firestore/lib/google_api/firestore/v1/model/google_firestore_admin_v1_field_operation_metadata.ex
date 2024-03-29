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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1FieldOperationMetadata do
  @moduledoc """
  Metadata for google.longrunning.Operation results from FirestoreAdmin.UpdateField.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time this operation completed. Will be unset if operation still in progress.
  *   `field` (*type:* `String.t`, *default:* `nil`) - The field resource that this operation is acting on. For example: `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  *   `indexConfigDeltas` (*type:* `list(GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexConfigDelta.t)`, *default:* `nil`) - A list of IndexConfigDelta, which describe the intent of this operation.
  *   `progressBytes` (*type:* `GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t`, *default:* `nil`) - The progress, in bytes, of this operation.
  *   `progressDocuments` (*type:* `GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t`, *default:* `nil`) - The progress, in documents, of this operation.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time this operation started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of the operation.
  *   `ttlConfigDelta` (*type:* `GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1TtlConfigDelta.t`, *default:* `nil`) - Describes the deltas of TTL configuration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :field => String.t() | nil,
          :indexConfigDeltas =>
            list(GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexConfigDelta.t()) | nil,
          :progressBytes => GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t() | nil,
          :progressDocuments =>
            GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :ttlConfigDelta =>
            GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1TtlConfigDelta.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:field)

  field(:indexConfigDeltas,
    as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1IndexConfigDelta,
    type: :list
  )

  field(:progressBytes, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress)
  field(:progressDocuments, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1Progress)
  field(:startTime, as: DateTime)
  field(:state)
  field(:ttlConfigDelta, as: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1TtlConfigDelta)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1FieldOperationMetadata do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1FieldOperationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1FieldOperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
