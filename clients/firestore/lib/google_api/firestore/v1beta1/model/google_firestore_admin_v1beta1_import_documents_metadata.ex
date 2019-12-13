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

defmodule GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata do
  @moduledoc """
  Metadata for ImportDocuments operations.

  ## Attributes

  *   `collectionIds` (*type:* `list(String.t)`, *default:* `nil`) - Which collection ids are being imported.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation ended, either successfully or otherwise. Unset if
      the operation is still active.
  *   `inputUriPrefix` (*type:* `String.t`, *default:* `nil`) - The location of the documents being imported.
  *   `operationState` (*type:* `String.t`, *default:* `nil`) - The state of the import operation.
  *   `progressBytes` (*type:* `GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t`, *default:* `nil`) - An estimate of the number of bytes processed.
  *   `progressDocuments` (*type:* `GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t`, *default:* `nil`) - An estimate of the number of documents processed.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The time that work began on the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collectionIds => list(String.t()),
          :endTime => DateTime.t(),
          :inputUriPrefix => String.t(),
          :operationState => String.t(),
          :progressBytes =>
            GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t(),
          :progressDocuments =>
            GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress.t(),
          :startTime => DateTime.t()
        }

  field(:collectionIds, type: :list)
  field(:endTime, as: DateTime)
  field(:inputUriPrefix)
  field(:operationState)
  field(:progressBytes, as: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress)

  field(:progressDocuments,
    as: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1Progress
  )

  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata do
  def decode(value, options) do
    GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Firestore.V1beta1.Model.GoogleFirestoreAdminV1beta1ImportDocumentsMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
