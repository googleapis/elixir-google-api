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

defmodule GoogleApi.CloudAsset.V1.Model.BigQueryDestination do
  @moduledoc """
  A BigQuery destination.

  ## Attributes

  *   `dataset` (*type:* `String.t`, *default:* `nil`) - Required. The BigQuery dataset in format
      "projects/projectId/datasets/datasetId", to which the snapshot result
      should be exported. If this dataset does not exist, the export call returns
      an INVALID_ARGUMENT error.
  *   `force` (*type:* `boolean()`, *default:* `nil`) - If the destination table already exists and this flag is `TRUE`, the
      table will be overwritten by the contents of assets snapshot. If the flag
      is `FALSE` or unset and the destination table already exists, the export
      call returns an INVALID_ARGUMEMT error.
  *   `table` (*type:* `String.t`, *default:* `nil`) - Required. The BigQuery table to which the snapshot result should be
      written. If this table does not exist, a new table with the given name
      will be created.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataset => String.t(),
          :force => boolean(),
          :table => String.t()
        }

  field(:dataset)
  field(:force)
  field(:table)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.BigQueryDestination do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.BigQueryDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.BigQueryDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
