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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBigQueryLink do
  @moduledoc """
  A link between a Google Analytics property and BigQuery project.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the link was created.
  *   `dailyExportEnabled` (*type:* `boolean()`, *default:* `nil`) - If set true, enables daily data export to the linked Google Cloud project.
  *   `datasetLocation` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The geographic location where the created BigQuery dataset should reside. See https://cloud.google.com/bigquery/docs/locations for supported locations.
  *   `excludedEvents` (*type:* `list(String.t)`, *default:* `nil`) - The list of event names that will be excluded from exports.
  *   `exportStreams` (*type:* `list(String.t)`, *default:* `nil`) - The list of streams under the parent property for which data will be exported. Format: properties/{property_id}/dataStreams/{stream_id} Example: ['properties/1000/dataStreams/2000']
  *   `freshDailyExportEnabled` (*type:* `boolean()`, *default:* `nil`) - If set true, enables fresh daily export to the linked Google Cloud project.
  *   `includeAdvertisingId` (*type:* `boolean()`, *default:* `nil`) - If set true, exported data will include advertising identifiers for mobile app streams.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of this BigQuery link. Format: 'properties/{property_id}/bigQueryLinks/{bigquery_link_id}' Format: 'properties/1234/bigQueryLinks/abc567'
  *   `project` (*type:* `String.t`, *default:* `nil`) - Immutable. The linked Google Cloud project resource name. Currently, this API always uses a project number, but may use project IDs in the future. Format: 'projects/{project number}' Example: 'projects/1234'
  *   `streamingExportEnabled` (*type:* `boolean()`, *default:* `nil`) - If set true, enables streaming export to the linked Google Cloud project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :dailyExportEnabled => boolean() | nil,
          :datasetLocation => String.t() | nil,
          :excludedEvents => list(String.t()) | nil,
          :exportStreams => list(String.t()) | nil,
          :freshDailyExportEnabled => boolean() | nil,
          :includeAdvertisingId => boolean() | nil,
          :name => String.t() | nil,
          :project => String.t() | nil,
          :streamingExportEnabled => boolean() | nil
        }

  field(:createTime, as: DateTime)
  field(:dailyExportEnabled)
  field(:datasetLocation)
  field(:excludedEvents, type: :list)
  field(:exportStreams, type: :list)
  field(:freshDailyExportEnabled)
  field(:includeAdvertisingId)
  field(:name)
  field(:project)
  field(:streamingExportEnabled)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBigQueryLink do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBigQueryLink.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaBigQueryLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
