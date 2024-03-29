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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable do
  @moduledoc """
  ModelDeploymentMonitoringBigQueryTable specifies the BigQuery table name as well as some information of the logs stored in this table.

  ## Attributes

  *   `bigqueryTablePath` (*type:* `String.t`, *default:* `nil`) - The created BigQuery table to store logs. Customer could do their own query & analysis. Format: `bq://.model_deployment_monitoring_._`
  *   `logSource` (*type:* `String.t`, *default:* `nil`) - The source of log.
  *   `logType` (*type:* `String.t`, *default:* `nil`) - The type of log.
  *   `requestResponseLoggingSchemaVersion` (*type:* `String.t`, *default:* `nil`) - Output only. The schema version of the request/response logging BigQuery table. Default to v1 if unset.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigqueryTablePath => String.t() | nil,
          :logSource => String.t() | nil,
          :logType => String.t() | nil,
          :requestResponseLoggingSchemaVersion => String.t() | nil
        }

  field(:bigqueryTablePath)
  field(:logSource)
  field(:logType)
  field(:requestResponseLoggingSchemaVersion)
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1ModelDeploymentMonitoringBigQueryTable do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
