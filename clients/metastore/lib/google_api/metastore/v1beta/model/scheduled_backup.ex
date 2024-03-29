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

defmodule GoogleApi.Metastore.V1beta.Model.ScheduledBackup do
  @moduledoc """
  This specifies the configuration of scheduled backup.

  ## Attributes

  *   `backupLocation` (*type:* `String.t`, *default:* `nil`) - Optional. A Cloud Storage URI of a folder, in the format gs:///. A sub-folder containing backup files will be stored below it.
  *   `cronSchedule` (*type:* `String.t`, *default:* `nil`) - Optional. The scheduled interval in Cron format, see https://en.wikipedia.org/wiki/Cron The default is empty: scheduled backup is not enabled. Must be specified to enable scheduled backups.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Defines whether the scheduled backup is enabled. The default value is false.
  *   `latestBackup` (*type:* `GoogleApi.Metastore.V1beta.Model.LatestBackup.t`, *default:* `nil`) - Output only. The details of the latest scheduled backup.
  *   `nextScheduledTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the next backups execution is scheduled to start.
  *   `timeZone` (*type:* `String.t`, *default:* `nil`) - Optional. Specifies the time zone to be used when interpreting cron_schedule. Must be a time zone name from the time zone database (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/Abidjan. If left unspecified, the default is UTC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupLocation => String.t() | nil,
          :cronSchedule => String.t() | nil,
          :enabled => boolean() | nil,
          :latestBackup => GoogleApi.Metastore.V1beta.Model.LatestBackup.t() | nil,
          :nextScheduledTime => DateTime.t() | nil,
          :timeZone => String.t() | nil
        }

  field(:backupLocation)
  field(:cronSchedule)
  field(:enabled)
  field(:latestBackup, as: GoogleApi.Metastore.V1beta.Model.LatestBackup)
  field(:nextScheduledTime, as: DateTime)
  field(:timeZone)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.ScheduledBackup do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.ScheduledBackup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.ScheduledBackup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
