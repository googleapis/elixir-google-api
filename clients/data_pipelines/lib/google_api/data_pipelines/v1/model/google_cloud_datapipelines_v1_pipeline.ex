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

defmodule GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline do
  @moduledoc """
  The main pipeline entity and all the necessary metadata for launching and managing linked jobs.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Immutable. The timestamp when the pipeline was initially created. Set by the Data Pipelines service.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the pipeline. It can contain only letters ([A-Za-z]), numbers ([0-9]), hyphens (-), and underscores (_).
  *   `jobCount` (*type:* `integer()`, *default:* `nil`) - Output only. Number of jobs.
  *   `lastUpdateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Immutable. The timestamp when the pipeline was last modified. Set by the Data Pipelines service.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID for the pipeline's location. The list of available locations can be obtained by calling `google.cloud.location.Locations.ListLocations`. Note that the Data Pipelines service is not available in all regions. It depends on Cloud Scheduler, an App Engine application, so it's only available in [App Engine regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected project and location.
  *   `pipelineSources` (*type:* `map()`, *default:* `nil`) - Immutable. The sources of the pipeline (for example, Dataplex). The keys and values are set by the corresponding sources during pipeline creation.
  *   `scheduleInfo` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ScheduleSpec.t`, *default:* `nil`) - Internal scheduling information for a pipeline. If this information is provided, periodic jobs will be created per the schedule. If not, users are responsible for creating jobs externally.
  *   `schedulerServiceAccountEmail` (*type:* `String.t`, *default:* `nil`) - Optional. A service account email to be used with the Cloud Scheduler job. If not specified, the default compute engine service account will be used.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Required. The state of the pipeline. When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE' by default. State changes can be requested by setting the state to stopping, paused, or resuming. State cannot be changed through UpdatePipeline requests.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of the pipeline. This field affects the scheduling of the pipeline and the type of metrics to show for the pipeline.
  *   `workload` (*type:* `GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Workload.t`, *default:* `nil`) - Workload information for creating new jobs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :displayName => String.t() | nil,
          :jobCount => integer() | nil,
          :lastUpdateTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :pipelineSources => map() | nil,
          :scheduleInfo =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ScheduleSpec.t() | nil,
          :schedulerServiceAccountEmail => String.t() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil,
          :workload =>
            GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Workload.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:displayName)
  field(:jobCount)
  field(:lastUpdateTime, as: DateTime)
  field(:name)
  field(:pipelineSources, type: :map)

  field(:scheduleInfo, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1ScheduleSpec)

  field(:schedulerServiceAccountEmail)
  field(:state)
  field(:type)
  field(:workload, as: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Workload)
end

defimpl Poison.Decoder, for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline do
  def decode(value, options) do
    GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataPipelines.V1.Model.GoogleCloudDatapipelinesV1Pipeline do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
