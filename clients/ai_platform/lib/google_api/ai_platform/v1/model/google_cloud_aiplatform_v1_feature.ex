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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature do
  @moduledoc """
  Feature Metadata information. For example, color is a feature that describes an apple.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the Feature.
  *   `disableMonitoring` (*type:* `boolean()`, *default:* `nil`) - Optional. Only applicable for Vertex AI Feature Store (Legacy). If not set, use the monitoring_config defined for the EntityType this Feature belongs to. Only Features with type (Feature.ValueType) BOOL, STRING, DOUBLE or INT64 can enable monitoring. If set to true, all types of data monitoring are disabled despite the config on EntityType.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Used to perform a consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. The labels with user-defined metadata to organize your Features. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information on and examples of labels. No more than 64 user labels can be associated with one Feature (System labels are excluded)." System reserved label keys are prefixed with "aiplatform.googleapis.com/" and are immutable.
  *   `monitoringStatsAnomalies` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly.t)`, *default:* `nil`) - Output only. Only applicable for Vertex AI Feature Store (Legacy). The list of historical stats and anomalies with specified objectives.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the Feature. Format: `projects/{project}/locations/{location}/featurestores/{featurestore}/entityTypes/{entity_type}/features/{feature}` `projects/{project}/locations/{location}/featureGroups/{feature_group}/features/{feature}` The last part feature is assigned by the client. The feature can be up to 64 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscore(_), and ASCII digits 0-9 starting with a letter. The value will be unique given an entity type.
  *   `pointOfContact` (*type:* `String.t`, *default:* `nil`) - Entity responsible for maintaining this feature. Can be comma separated list of email addresses or URIs.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Only applicable for Vertex AI Feature Store (Legacy). Timestamp when this EntityType was most recently updated.
  *   `valueType` (*type:* `String.t`, *default:* `nil`) - Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
  *   `versionColumnName` (*type:* `String.t`, *default:* `nil`) - Only applicable for Vertex AI Feature Store. The name of the BigQuery Table/View column hosting data for this version. If no value is provided, will use feature_id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :disableMonitoring => boolean() | nil,
          :etag => String.t() | nil,
          :labels => map() | nil,
          :monitoringStatsAnomalies =>
            list(
              GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly.t()
            )
            | nil,
          :name => String.t() | nil,
          :pointOfContact => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :valueType => String.t() | nil,
          :versionColumnName => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:disableMonitoring)
  field(:etag)
  field(:labels, type: :map)

  field(:monitoringStatsAnomalies,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1FeatureMonitoringStatsAnomaly,
    type: :list
  )

  field(:name)
  field(:pointOfContact)
  field(:updateTime, as: DateTime)
  field(:valueType)
  field(:versionColumnName)
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1Feature do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end