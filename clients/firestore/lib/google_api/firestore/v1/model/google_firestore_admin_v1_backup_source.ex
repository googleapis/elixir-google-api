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

defmodule GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1BackupSource do
  @moduledoc """
  Information about a backup that was used to restore a database.

  ## Attributes

  *   `backup` (*type:* `String.t`, *default:* `nil`) - The resource name of the backup that was used to restore this database. Format: `projects/{project}/locations/{location}/backups/{backup}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backup => String.t() | nil
        }

  field(:backup)
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1BackupSource do
  def decode(value, options) do
    GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1BackupSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1.Model.GoogleFirestoreAdminV1BackupSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
