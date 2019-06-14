# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.DataSource do
  @moduledoc """
  Represents data source metadata. Metadata is sufficient to
  render UI and request proper OAuth tokens.

  ## Attributes

  - authorizationType (String.t): Indicates the type of authorization. Defaults to `nil`.
  - clientId (String.t): Data source client id which should be used to receive refresh token. Defaults to `nil`.
  - dataRefreshType (String.t): Specifies whether the data source supports automatic data refresh for the
  past few days, and how it's supported.
  For some data sources, data might not be complete until a few days later,
  so it's useful to refresh data automatically. Defaults to `nil`.
  - dataSourceId (String.t): Data source id. Defaults to `nil`.
  - defaultDataRefreshWindowDays (integer()): Default data refresh window on days.
  Only meaningful when `data_refresh_type` = `SLIDING_WINDOW`. Defaults to `nil`.
  - defaultSchedule (String.t): Default data transfer schedule.
  Examples of valid schedules include:
  `1st,3rd monday of month 15:30`,
  `every wed,fri of jan,jun 13:15`, and
  `first sunday of quarter 00:00`. Defaults to `nil`.
  - description (String.t): User friendly data source description string. Defaults to `nil`.
  - displayName (String.t): User friendly data source name. Defaults to `nil`.
  - helpUrl (String.t): Url for the help document for this data source. Defaults to `nil`.
  - manualRunsDisabled (boolean()): Disables backfilling and manual run scheduling
  for the data source. Defaults to `nil`.
  - minimumScheduleInterval (String.t): The minimum interval for scheduler to schedule runs. Defaults to `nil`.
  - name (String.t): Output only. Data source resource name. Defaults to `nil`.
  - parameters (list(GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.t)): Data source parameters. Defaults to `nil`.
  - scopes (list(String.t)): Api auth scopes for which refresh token needs to be obtained. These are
  scopes needed by a data source to prepare data and ingest them into
  BigQuery, e.g., https://www.googleapis.com/auth/bigquery Defaults to `nil`.
  - supportsCustomSchedule (boolean()): Specifies whether the data source supports a user defined schedule, or
  operates on the default schedule.
  When set to `true`, user can override default schedule. Defaults to `nil`.
  - supportsMultipleTransfers (boolean()): Deprecated. This field has no effect. Defaults to `nil`.
  - transferType (String.t): Deprecated. This field has no effect. Defaults to `nil`.
  - updateDeadlineSeconds (integer()): The number of seconds to wait for an update from the data source
  before the Data Transfer Service marks the transfer as FAILED. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizationType => String.t(),
          :clientId => String.t(),
          :dataRefreshType => String.t(),
          :dataSourceId => String.t(),
          :defaultDataRefreshWindowDays => integer(),
          :defaultSchedule => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :helpUrl => String.t(),
          :manualRunsDisabled => boolean(),
          :minimumScheduleInterval => String.t(),
          :name => String.t(),
          :parameters => list(GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter.t()),
          :scopes => list(String.t()),
          :supportsCustomSchedule => boolean(),
          :supportsMultipleTransfers => boolean(),
          :transferType => String.t(),
          :updateDeadlineSeconds => integer()
        }

  field(:authorizationType)
  field(:clientId)
  field(:dataRefreshType)
  field(:dataSourceId)
  field(:defaultDataRefreshWindowDays)
  field(:defaultSchedule)
  field(:description)
  field(:displayName)
  field(:helpUrl)
  field(:manualRunsDisabled)
  field(:minimumScheduleInterval)
  field(:name)
  field(:parameters, as: GoogleApi.BigQueryDataTransfer.V1.Model.DataSourceParameter, type: :list)
  field(:scopes, type: :list)
  field(:supportsCustomSchedule)
  field(:supportsMultipleTransfers)
  field(:transferType)
  field(:updateDeadlineSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.DataSource do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.DataSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.DataSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
