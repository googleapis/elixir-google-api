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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus do
  @moduledoc """
  Status of the data scan execution.

  ## Attributes

  *   `latestJobEndTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the latest DataScanJob ended.
  *   `latestJobStartTime` (*type:* `DateTime.t`, *default:* `nil`) - The time when the latest DataScanJob started.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latestJobEndTime => DateTime.t() | nil,
          :latestJobStartTime => DateTime.t() | nil
        }

  field(:latestJobEndTime, as: DateTime)
  field(:latestJobStartTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanExecutionStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end