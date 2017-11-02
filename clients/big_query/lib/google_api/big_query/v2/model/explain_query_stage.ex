# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.BigQuery.V2.Model.ExplainQueryStage do
  @moduledoc """
  

  ## Attributes

  - computeMsAvg (String.t): Milliseconds the average shard spent on CPU-bound tasks. Defaults to: `null`.
  - computeMsMax (String.t): Milliseconds the slowest shard spent on CPU-bound tasks. Defaults to: `null`.
  - computeRatioAvg (float()): Relative amount of time the average shard spent on CPU-bound tasks. Defaults to: `null`.
  - computeRatioMax (float()): Relative amount of time the slowest shard spent on CPU-bound tasks. Defaults to: `null`.
  - id (String.t): Unique ID for stage within plan. Defaults to: `null`.
  - name (String.t): Human-readable name for stage. Defaults to: `null`.
  - readMsAvg (String.t): Milliseconds the average shard spent reading input. Defaults to: `null`.
  - readMsMax (String.t): Milliseconds the slowest shard spent reading input. Defaults to: `null`.
  - readRatioAvg (float()): Relative amount of time the average shard spent reading input. Defaults to: `null`.
  - readRatioMax (float()): Relative amount of time the slowest shard spent reading input. Defaults to: `null`.
  - recordsRead (String.t): Number of records read into the stage. Defaults to: `null`.
  - recordsWritten (String.t): Number of records written by the stage. Defaults to: `null`.
  - shuffleOutputBytes (String.t): Total number of bytes written to shuffle. Defaults to: `null`.
  - shuffleOutputBytesSpilled (String.t): Total number of bytes written to shuffle and spilled to disk. Defaults to: `null`.
  - status (String.t): Current status for the stage. Defaults to: `null`.
  - steps ([ExplainQueryStep]): List of operations within the stage in dependency order (approximately chronological). Defaults to: `null`.
  - waitMsAvg (String.t): Milliseconds the average shard spent waiting to be scheduled. Defaults to: `null`.
  - waitMsMax (String.t): Milliseconds the slowest shard spent waiting to be scheduled. Defaults to: `null`.
  - waitRatioAvg (float()): Relative amount of time the average shard spent waiting to be scheduled. Defaults to: `null`.
  - waitRatioMax (float()): Relative amount of time the slowest shard spent waiting to be scheduled. Defaults to: `null`.
  - writeMsAvg (String.t): Milliseconds the average shard spent on writing output. Defaults to: `null`.
  - writeMsMax (String.t): Milliseconds the slowest shard spent on writing output. Defaults to: `null`.
  - writeRatioAvg (float()): Relative amount of time the average shard spent on writing output. Defaults to: `null`.
  - writeRatioMax (float()): Relative amount of time the slowest shard spent on writing output. Defaults to: `null`.
  """

  defstruct [
    :"computeMsAvg",
    :"computeMsMax",
    :"computeRatioAvg",
    :"computeRatioMax",
    :"id",
    :"name",
    :"readMsAvg",
    :"readMsMax",
    :"readRatioAvg",
    :"readRatioMax",
    :"recordsRead",
    :"recordsWritten",
    :"shuffleOutputBytes",
    :"shuffleOutputBytesSpilled",
    :"status",
    :"steps",
    :"waitMsAvg",
    :"waitMsMax",
    :"waitRatioAvg",
    :"waitRatioMax",
    :"writeMsAvg",
    :"writeMsMax",
    :"writeRatioAvg",
    :"writeRatioMax"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ExplainQueryStage do
  import GoogleApi.BigQuery.V2.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"steps", :list, GoogleApi.BigQuery.V2.Model.ExplainQueryStep, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ExplainQueryStage do
  def encode(value, options) do
    GoogleApi.BigQuery.V2.Deserializer.serialize_non_nil(value, options)
  end
end

