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

defmodule GoogleApi.Metastore.V1.Model.Restore do
  @moduledoc """
  The details of a metadata restore operation.

  ## Attributes

  *   `backup` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the metastore service backup to restore from, in the following form:projects/{project_id}/locations/{location_id}/services/{service_id}/backups/{backup_id}.
  *   `backupLocation` (*type:* `String.t`, *default:* `nil`) - Optional. A Cloud Storage URI specifying where the backup artifacts are stored, in the format gs:///.
  *   `details` (*type:* `String.t`, *default:* `nil`) - Output only. The restore details containing the revision of the service to be restored to, in format of JSON.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the restore ended.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the restore started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the restore.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. The type of restore.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backup => String.t() | nil,
          :backupLocation => String.t() | nil,
          :details => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil
        }

  field(:backup)
  field(:backupLocation)
  field(:details)
  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:state)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1.Model.Restore do
  def decode(value, options) do
    GoogleApi.Metastore.V1.Model.Restore.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1.Model.Restore do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end