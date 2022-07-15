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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskTriggerSpec do
  @moduledoc """
  Task scheduling and trigger settings.

  ## Attributes

  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Prevent the task from executing. This does not cancel already running tasks. It is intended to temporarily disable RECURRING tasks.
  *   `maxRetries` (*type:* `integer()`, *default:* `nil`) - Optional. Number of retry attempts before aborting. Set to zero to never attempt to retry a failed task.
  *   `schedule` (*type:* `String.t`, *default:* `nil`) - Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks periodically. To explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "CRON_TZ=${IANA_TIME_ZONE}" or "TZ=${IANA_TIME_ZONE}". The ${IANA_TIME_ZONE} may only be a valid string from IANA time zone database. For example, "CRON_TZ=America/New_York 1 * * * *", or "TZ=America/New_York 1 * * * *". This field is required for RECURRING tasks.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The first run of the task will be after this time. If not specified, the task will run shortly after being submitted if ON_DEMAND and based on the schedule if RECURRING.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. Trigger type of the user-specified Task.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disabled => boolean() | nil,
          :maxRetries => integer() | nil,
          :schedule => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :type => String.t() | nil
        }

  field(:disabled)
  field(:maxRetries)
  field(:schedule)
  field(:startTime, as: DateTime)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskTriggerSpec do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskTriggerSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1TaskTriggerSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
