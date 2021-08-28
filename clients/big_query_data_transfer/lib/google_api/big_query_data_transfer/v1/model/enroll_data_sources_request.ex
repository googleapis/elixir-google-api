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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.EnrollDataSourcesRequest do
  @moduledoc """
  A request to enroll a set of data sources so they are visible in the BigQuery UI's `Transfer` tab.

  ## Attributes

  *   `dataSourceIds` (*type:* `list(String.t)`, *default:* `nil`) - Data sources that are enrolled. It is required to provide at least one data source id.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataSourceIds => list(String.t()) | nil
        }

  field(:dataSourceIds, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.EnrollDataSourcesRequest do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.EnrollDataSourcesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.EnrollDataSourcesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
