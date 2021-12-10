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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination do
  @moduledoc """
  A BigQuery Table Reference.

  ## Attributes

  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Required. The name of the BigQuery dataset that the snapshot result should be exported to. If this dataset does not exist, the export call returns an INVALID_ARGUMENT error.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - A project ID or number. If specified, then export will attempt to write data to this project instead of the resource project. Otherwise, the resource project will be used.
  *   `table` (*type:* `String.t`, *default:* `nil`) - The BigQuery table name to which the insights data should be written. If this table does not exist, the export call returns an INVALID_ARGUMENT error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => String.t() | nil,
          :projectId => String.t() | nil,
          :table => String.t() | nil
        }

  field(:dataset)
  field(:projectId)
  field(:table)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
