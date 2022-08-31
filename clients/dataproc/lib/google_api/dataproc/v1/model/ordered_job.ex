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

defmodule GoogleApi.Dataproc.V1.Model.OrderedJob do
  @moduledoc """
  A job executed by the workflow.

  ## Attributes

  *   `hadoopJob` (*type:* `GoogleApi.Dataproc.V1.Model.HadoopJob.t`, *default:* `nil`) - Optional. Job is a Hadoop job.
  *   `hiveJob` (*type:* `GoogleApi.Dataproc.V1.Model.HiveJob.t`, *default:* `nil`) - Optional. Job is a Hive job.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels to associate with this job.Label keys must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}{0,62}Label values must be between 1 and 63 characters long, and must conform to the following regular expression: \\p{Ll}\\p{Lo}\\p{N}_-{0,63}No more than 32 labels can be associated with a given job.
  *   `pigJob` (*type:* `GoogleApi.Dataproc.V1.Model.PigJob.t`, *default:* `nil`) - Optional. Job is a Pig job.
  *   `prerequisiteStepIds` (*type:* `list(String.t)`, *default:* `nil`) - Optional. The optional list of prerequisite job step_ids. If not specified, the job will start at the beginning of workflow.
  *   `prestoJob` (*type:* `GoogleApi.Dataproc.V1.Model.PrestoJob.t`, *default:* `nil`) - Optional. Job is a Presto job.
  *   `pysparkJob` (*type:* `GoogleApi.Dataproc.V1.Model.PySparkJob.t`, *default:* `nil`) - Optional. Job is a PySpark job.
  *   `scheduling` (*type:* `GoogleApi.Dataproc.V1.Model.JobScheduling.t`, *default:* `nil`) - Optional. Job scheduling configuration.
  *   `sparkJob` (*type:* `GoogleApi.Dataproc.V1.Model.SparkJob.t`, *default:* `nil`) - Optional. Job is a Spark job.
  *   `sparkRJob` (*type:* `GoogleApi.Dataproc.V1.Model.SparkRJob.t`, *default:* `nil`) - Optional. Job is a SparkR job.
  *   `sparkSqlJob` (*type:* `GoogleApi.Dataproc.V1.Model.SparkSqlJob.t`, *default:* `nil`) - Optional. Job is a SparkSql job.
  *   `stepId` (*type:* `String.t`, *default:* `nil`) - Required. The step id. The id must be unique among all jobs within the template.The step id is used as prefix for job id, as job goog-dataproc-workflow-step-id label, and in prerequisiteStepIds field from other steps.The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between 3 and 50 characters.
  *   `trinoJob` (*type:* `GoogleApi.Dataproc.V1.Model.TrinoJob.t`, *default:* `nil`) - Optional. Job is a Trino job.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hadoopJob => GoogleApi.Dataproc.V1.Model.HadoopJob.t() | nil,
          :hiveJob => GoogleApi.Dataproc.V1.Model.HiveJob.t() | nil,
          :labels => map() | nil,
          :pigJob => GoogleApi.Dataproc.V1.Model.PigJob.t() | nil,
          :prerequisiteStepIds => list(String.t()) | nil,
          :prestoJob => GoogleApi.Dataproc.V1.Model.PrestoJob.t() | nil,
          :pysparkJob => GoogleApi.Dataproc.V1.Model.PySparkJob.t() | nil,
          :scheduling => GoogleApi.Dataproc.V1.Model.JobScheduling.t() | nil,
          :sparkJob => GoogleApi.Dataproc.V1.Model.SparkJob.t() | nil,
          :sparkRJob => GoogleApi.Dataproc.V1.Model.SparkRJob.t() | nil,
          :sparkSqlJob => GoogleApi.Dataproc.V1.Model.SparkSqlJob.t() | nil,
          :stepId => String.t() | nil,
          :trinoJob => GoogleApi.Dataproc.V1.Model.TrinoJob.t() | nil
        }

  field(:hadoopJob, as: GoogleApi.Dataproc.V1.Model.HadoopJob)
  field(:hiveJob, as: GoogleApi.Dataproc.V1.Model.HiveJob)
  field(:labels, type: :map)
  field(:pigJob, as: GoogleApi.Dataproc.V1.Model.PigJob)
  field(:prerequisiteStepIds, type: :list)
  field(:prestoJob, as: GoogleApi.Dataproc.V1.Model.PrestoJob)
  field(:pysparkJob, as: GoogleApi.Dataproc.V1.Model.PySparkJob)
  field(:scheduling, as: GoogleApi.Dataproc.V1.Model.JobScheduling)
  field(:sparkJob, as: GoogleApi.Dataproc.V1.Model.SparkJob)
  field(:sparkRJob, as: GoogleApi.Dataproc.V1.Model.SparkRJob)
  field(:sparkSqlJob, as: GoogleApi.Dataproc.V1.Model.SparkSqlJob)
  field(:stepId)
  field(:trinoJob, as: GoogleApi.Dataproc.V1.Model.TrinoJob)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.OrderedJob do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.OrderedJob.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.OrderedJob do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
