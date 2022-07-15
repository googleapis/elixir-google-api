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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Job do
  @moduledoc """
  A job represents an instance of a task.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the job ended.
  *   `message` (*type:* `String.t`, *default:* `nil`) - Output only. Additional information about the current state.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the job, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/ tasks/{task_id}/jobs/{job_id}.
  *   `retryCount` (*type:* `integer()`, *default:* `nil`) - Output only. . The number of times the job has been retried (excluding the initial attempt).
  *   `service` (*type:* `String.t`, *default:* `nil`) - Output only. The underlying service running a job.
  *   `serviceJob` (*type:* `String.t`, *default:* `nil`) - Output only. The full resource name for the job run under a particular service.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the job was started.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Execution state for the job.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System generated globally unique ID for the job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :message => String.t() | nil,
          :name => String.t() | nil,
          :retryCount => integer() | nil,
          :service => String.t() | nil,
          :serviceJob => String.t() | nil,
          :startTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :uid => String.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:message)
  field(:name)
  field(:retryCount)
  field(:service)
  field(:serviceJob)
  field(:startTime, as: DateTime)
  field(:state)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Job do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Job.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Job do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
