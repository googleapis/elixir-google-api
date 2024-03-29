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

defmodule GoogleApi.BigtableAdmin.V2.Model.CopyBackupRequest do
  @moduledoc """
  The request for CopyBackup.

  ## Attributes

  *   `backupId` (*type:* `String.t`, *default:* `nil`) - Required. The id of the new backup. The `backup_id` along with `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. Required. The expiration time of the copied backup with microsecond granularity that must be at least 6 hours and at most 30 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  *   `sourceBackup` (*type:* `String.t`, *default:* `nil`) - Required. The source backup to be copied from. The source backup needs to be in READY state for it to be copied. Copying a copied backup is not allowed. Once CopyBackup is in progress, the source backup cannot be deleted or cleaned up on expiration until CopyBackup is finished. Values are of the form: `projects//instances//clusters//backups/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupId => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :sourceBackup => String.t() | nil
        }

  field(:backupId)
  field(:expireTime, as: DateTime)
  field(:sourceBackup)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.CopyBackupRequest do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.CopyBackupRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.CopyBackupRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
