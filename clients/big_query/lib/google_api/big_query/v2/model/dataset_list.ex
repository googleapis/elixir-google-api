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

defmodule GoogleApi.BigQuery.V2.Model.DatasetList do
  @moduledoc """
  Response format for a page of results when listing datasets.

  ## Attributes

  *   `datasets` (*type:* `list(GoogleApi.BigQuery.V2.Model.DatasetListDatasets.t)`, *default:* `nil`) - An array of the dataset resources in the project. Each resource contains basic information. For full information about a particular dataset resource, use the Datasets: get method. This property is omitted when there are no datasets in the project.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash value of the results page. You can use this property to determine if the page has changed since the last request.
  *   `kind` (*type:* `String.t`, *default:* `bigquery#datasetList`) - Output only. The resource type. This property always returns the value "bigquery#datasetList"
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be used to request the next results page. This property is omitted on the final results page.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - A list of skipped locations that were unreachable. For more information about BigQuery locations, see: https://cloud.google.com/bigquery/docs/locations. Example: "europe-west5"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasets => list(GoogleApi.BigQuery.V2.Model.DatasetListDatasets.t()) | nil,
          :etag => String.t() | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:datasets, as: GoogleApi.BigQuery.V2.Model.DatasetListDatasets, type: :list)
  field(:etag)
  field(:kind)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.DatasetList do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.DatasetList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.DatasetList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
