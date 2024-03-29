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

defmodule GoogleApi.DataMigration.V1.Model.BackgroundJobLogEntry do
  @moduledoc """
  Execution log of a background job.

  ## Attributes

  *   `applyJobDetails` (*type:* `GoogleApi.DataMigration.V1.Model.ApplyJobDetails.t`, *default:* `nil`) - Output only. Apply job details.
  *   `completionComment` (*type:* `String.t`, *default:* `nil`) - Output only. Job completion comment, such as how many entities were seeded, how many warnings were found during conversion, and similar information.
  *   `completionState` (*type:* `String.t`, *default:* `nil`) - Output only. Job completion state, i.e. the final state after the job completed.
  *   `convertJobDetails` (*type:* `GoogleApi.DataMigration.V1.Model.ConvertJobDetails.t`, *default:* `nil`) - Output only. Convert job details.
  *   `finishTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the background job was finished.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The background job log entry ID.
  *   `importRulesJobDetails` (*type:* `GoogleApi.DataMigration.V1.Model.ImportRulesJobDetails.t`, *default:* `nil`) - Output only. Import rules job details.
  *   `jobType` (*type:* `String.t`, *default:* `nil`) - The type of job that was executed.
  *   `requestAutocommit` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the client requested the conversion workspace to be committed after a successful completion of the job.
  *   `seedJobDetails` (*type:* `GoogleApi.DataMigration.V1.Model.SeedJobDetails.t`, *default:* `nil`) - Output only. Seed job details.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the background job was started.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyJobDetails => GoogleApi.DataMigration.V1.Model.ApplyJobDetails.t() | nil,
          :completionComment => String.t() | nil,
          :completionState => String.t() | nil,
          :convertJobDetails => GoogleApi.DataMigration.V1.Model.ConvertJobDetails.t() | nil,
          :finishTime => DateTime.t() | nil,
          :id => String.t() | nil,
          :importRulesJobDetails =>
            GoogleApi.DataMigration.V1.Model.ImportRulesJobDetails.t() | nil,
          :jobType => String.t() | nil,
          :requestAutocommit => boolean() | nil,
          :seedJobDetails => GoogleApi.DataMigration.V1.Model.SeedJobDetails.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:applyJobDetails, as: GoogleApi.DataMigration.V1.Model.ApplyJobDetails)
  field(:completionComment)
  field(:completionState)
  field(:convertJobDetails, as: GoogleApi.DataMigration.V1.Model.ConvertJobDetails)
  field(:finishTime, as: DateTime)
  field(:id)
  field(:importRulesJobDetails, as: GoogleApi.DataMigration.V1.Model.ImportRulesJobDetails)
  field(:jobType)
  field(:requestAutocommit)
  field(:seedJobDetails, as: GoogleApi.DataMigration.V1.Model.SeedJobDetails)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.BackgroundJobLogEntry do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.BackgroundJobLogEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.BackgroundJobLogEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
