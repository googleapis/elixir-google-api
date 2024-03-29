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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2OutputConfigBigQueryDestination do
  @moduledoc """
  The BigQuery output destination configuration.

  ## Attributes

  *   `datasetId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of a BigQuery Dataset.
  *   `tableIdPrefix` (*type:* `String.t`, *default:* `nil`) - Required. The prefix of exported BigQuery tables.
  *   `tableType` (*type:* `String.t`, *default:* `nil`) - Required. Describes the table type. The following values are supported: * `table`: A BigQuery native table. * `view`: A virtual table defined by a SQL query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetId => String.t() | nil,
          :tableIdPrefix => String.t() | nil,
          :tableType => String.t() | nil
        }

  field(:datasetId)
  field(:tableIdPrefix)
  field(:tableType)
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2OutputConfigBigQueryDestination do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2OutputConfigBigQueryDestination.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2OutputConfigBigQueryDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
