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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schedule do
  @moduledoc """
  An instance of a Schedule periodically schedules runs to make API calls based on user specified time specification and API request type.

  ## Attributes

  *   `allowQueueing` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether new scheduled runs can be queued when max_concurrent_runs limit is reached. If set to true, new runs will be queued instead of skipped. Default to false.
  *   `catchUp` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether to backfill missed runs when the schedule is resumed from PAUSED state. If set to true, all missed runs will be scheduled. New runs will be scheduled after the backfill is complete. Default to false.
  *   `createPipelineJobRequest` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreatePipelineJobRequest.t`, *default:* `nil`) - Request for PipelineService.CreatePipelineJob. CreatePipelineJobRequest.parent field is required (format: projects/{project}/locations/{location}).
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Schedule was created.
  *   `cron` (*type:* `String.t`, *default:* `nil`) - Cron schedule (https://en.wikipedia.org/wiki/Cron) to launch scheduled runs. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *".
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. User provided name of the Schedule. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Timestamp after which no new runs can be scheduled. If specified, The schedule will be completed when either end_time is reached or when scheduled_run_count >= max_run_count. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  *   `lastPauseTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Schedule was last paused. Unset if never paused.
  *   `lastResumeTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Schedule was last resumed. Unset if never resumed from pause.
  *   `lastScheduledRunResponse` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ScheduleRunResponse.t`, *default:* `nil`) - Output only. Response of the last scheduled run. This is the response for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable). Unset if no run has been scheduled yet.
  *   `maxConcurrentRunCount` (*type:* `String.t`, *default:* `nil`) - Required. Maximum number of runs that can be started concurrently for this Schedule. This is the limit for starting the scheduled requests and not the execution of the operations/jobs created by the requests (if applicable).
  *   `maxRunCount` (*type:* `String.t`, *default:* `nil`) - Optional. Maximum run count of the schedule. If specified, The schedule will be completed when either started_run_count >= max_run_count or when end_time is reached. If not specified, new runs will keep getting scheduled until this Schedule is paused or deleted. Already scheduled runs will be allowed to complete. Unset if not specified.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the Schedule.
  *   `nextRunTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Schedule should schedule the next run. Having a next_run_time in the past means the runs are being started behind schedule.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Timestamp after which the first run can be scheduled. Default to Schedule create time if not specified.
  *   `startedRunCount` (*type:* `String.t`, *default:* `nil`) - Output only. The number of runs started by this schedule.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this Schedule.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Timestamp when this Schedule was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowQueueing => boolean() | nil,
          :catchUp => boolean() | nil,
          :createPipelineJobRequest =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreatePipelineJobRequest.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :cron => String.t() | nil,
          :displayName => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :lastPauseTime => DateTime.t() | nil,
          :lastResumeTime => DateTime.t() | nil,
          :lastScheduledRunResponse =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ScheduleRunResponse.t() | nil,
          :maxConcurrentRunCount => String.t() | nil,
          :maxRunCount => String.t() | nil,
          :name => String.t() | nil,
          :nextRunTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil,
          :startedRunCount => String.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:allowQueueing)
  field(:catchUp)

  field(:createPipelineJobRequest,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1CreatePipelineJobRequest
  )

  field(:createTime, as: DateTime)
  field(:cron)
  field(:displayName)
  field(:endTime, as: DateTime)
  field(:lastPauseTime, as: DateTime)
  field(:lastResumeTime, as: DateTime)

  field(:lastScheduledRunResponse,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ScheduleRunResponse
  )

  field(:maxConcurrentRunCount)
  field(:maxRunCount)
  field(:name)
  field(:nextRunTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:startedRunCount)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schedule do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Schedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end