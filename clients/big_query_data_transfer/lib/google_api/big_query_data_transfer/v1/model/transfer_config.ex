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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig do
  @moduledoc """
  Represents a data transfer configuration. A transfer configuration contains all metadata needed to perform a data transfer. For example, `destination_dataset_id` specifies where data should be stored. When a new transfer configuration is created, the specified `destination_dataset_id` is created when needed and shared with the appropriate data source service account.

  ## Attributes

  *   `dataRefreshWindowDays` (*type:* `integer()`, *default:* `nil`) - The number of days to look back to automatically refresh the data. For example, if `data_refresh_window_days = 10`, then every day BigQuery reingests data for [today-10, today-1], rather than ingesting data for just [today-1]. Only valid if the data source supports the feature. Set the value to 0 to use the default value.
  *   `dataSourceId` (*type:* `String.t`, *default:* `nil`) - Data source id. Cannot be changed once data transfer is created.
  *   `datasetRegion` (*type:* `String.t`, *default:* `nil`) - Output only. Region in which BigQuery dataset is located.
  *   `destinationDatasetId` (*type:* `String.t`, *default:* `nil`) - The BigQuery target dataset id.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Is this config disabled. When set to true, no runs are scheduled for a given transfer.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User specified display name for the data transfer.
  *   `emailPreferences` (*type:* `GoogleApi.BigQueryDataTransfer.V1.Model.EmailPreferences.t`, *default:* `nil`) - Email notifications will be sent according to these preferences to the email address of the user who owns this transfer config.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The resource name of the transfer config. Transfer config names have the form `projects/{project_id}/locations/{region}/transferConfigs/{config_id}`. Where `config_id` is usually a uuid, even though it is not guaranteed or required. The name is ignored when creating a transfer config.
  *   `nextRunTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Next time when data transfer will run.
  *   `notificationPubsubTopic` (*type:* `String.t`, *default:* `nil`) - Pub/Sub topic where notifications will be sent after transfer runs associated with this transfer config finish. The format for specifying a pubsub topic is: `projects/{project}/topics/{topic}`
  *   `ownerInfo` (*type:* `GoogleApi.BigQueryDataTransfer.V1.Model.UserInfo.t`, *default:* `nil`) - Output only. Information about the user whose credentials are used to transfer data. Populated only for `transferConfigs.get` requests. In case the user information is not available, this field will not be populated.
  *   `params` (*type:* `map()`, *default:* `nil`) - Parameters specific to each data source. For more information see the bq tab in the 'Setting up a data transfer' section for each data source. For example the parameters for Cloud Storage transfers are listed here: https://cloud.google.com/bigquery-transfer/docs/cloud-storage-transfer#bq
  *   `schedule` (*type:* `String.t`, *default:* `nil`) - Data transfer schedule. If the data source does not support a custom schedule, this should be empty. If it is empty, the default value for the data source will be used. The specified times are in UTC. Examples of valid format: `1st,3rd monday of month 15:30`, `every wed,fri of jan,jun 13:15`, and `first sunday of quarter 00:00`. See more explanation about the format here: https://cloud.google.com/appengine/docs/flexible/python/scheduling-jobs-with-cron-yaml#the_schedule_format NOTE: The minimum interval time between recurring transfers depends on the data source; refer to the documentation for your data source.
  *   `scheduleOptions` (*type:* `GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions.t`, *default:* `nil`) - Options customizing the data transfer schedule.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the most recently updated transfer run.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Data transfer modification time. Ignored by server on input.
  *   `userId` (*type:* `String.t`, *default:* `nil`) - Deprecated. Unique ID of the user on whose behalf transfer is done.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataRefreshWindowDays => integer() | nil,
          :dataSourceId => String.t() | nil,
          :datasetRegion => String.t() | nil,
          :destinationDatasetId => String.t() | nil,
          :disabled => boolean() | nil,
          :displayName => String.t() | nil,
          :emailPreferences => GoogleApi.BigQueryDataTransfer.V1.Model.EmailPreferences.t() | nil,
          :name => String.t() | nil,
          :nextRunTime => DateTime.t() | nil,
          :notificationPubsubTopic => String.t() | nil,
          :ownerInfo => GoogleApi.BigQueryDataTransfer.V1.Model.UserInfo.t() | nil,
          :params => map() | nil,
          :schedule => String.t() | nil,
          :scheduleOptions => GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :userId => String.t() | nil
        }

  field(:dataRefreshWindowDays)
  field(:dataSourceId)
  field(:datasetRegion)
  field(:destinationDatasetId)
  field(:disabled)
  field(:displayName)
  field(:emailPreferences, as: GoogleApi.BigQueryDataTransfer.V1.Model.EmailPreferences)
  field(:name)
  field(:nextRunTime, as: DateTime)
  field(:notificationPubsubTopic)
  field(:ownerInfo, as: GoogleApi.BigQueryDataTransfer.V1.Model.UserInfo)
  field(:params, type: :map)
  field(:schedule)
  field(:scheduleOptions, as: GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions)
  field(:state)
  field(:updateTime, as: DateTime)
  field(:userId)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.TransferConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
