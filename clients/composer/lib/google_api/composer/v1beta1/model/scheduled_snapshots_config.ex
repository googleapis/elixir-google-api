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

defmodule GoogleApi.Composer.V1beta1.Model.ScheduledSnapshotsConfig do
  @moduledoc """
  The configuration for scheduled snapshot creation mechanism.

  ## Attributes

  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether scheduled snapshots creation is enabled.
  *   `snapshotCreationSchedule` (*type:* `String.t`, *default:* `nil`) - Optional. The cron expression representing the time when snapshots creation mechanism runs. This field is subject to additional validation around frequency of execution.
  *   `snapshotLocation` (*type:* `String.t`, *default:* `nil`) - Optional. The Cloud Storage location for storing automatically created snapshots.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Optional. Time zone that sets the context to interpret snapshot_creation_schedule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabled => boolean() | nil,
          :snapshotCreationSchedule => String.t() | nil,
          :snapshotLocation => String.t() | nil,
          :timeZone => String.t() | nil
        }

  field(:enabled)
  field(:snapshotCreationSchedule)
  field(:snapshotLocation)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1beta1.Model.ScheduledSnapshotsConfig do
  def decode(value, options) do
    GoogleApi.Composer.V1beta1.Model.ScheduledSnapshotsConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1beta1.Model.ScheduledSnapshotsConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end