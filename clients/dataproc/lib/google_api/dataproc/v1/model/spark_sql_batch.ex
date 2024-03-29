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

defmodule GoogleApi.Dataproc.V1.Model.SparkSqlBatch do
  @moduledoc """
  A configuration for running Apache Spark SQL (https://spark.apache.org/sql/) queries as a batch workload.

  ## Attributes

  *   `jarFileUris` (*type:* `list(String.t)`, *default:* `nil`) - Optional. HCFS URIs of jar files to be added to the Spark CLASSPATH.
  *   `queryFileUri` (*type:* `String.t`, *default:* `nil`) - Required. The HCFS URI of the script that contains Spark SQL queries to execute.
  *   `queryVariables` (*type:* `map()`, *default:* `nil`) - Optional. Mapping of query variable names to values (equivalent to the Spark SQL command: SET name="value";).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jarFileUris => list(String.t()) | nil,
          :queryFileUri => String.t() | nil,
          :queryVariables => map() | nil
        }

  field(:jarFileUris, type: :list)
  field(:queryFileUri)
  field(:queryVariables, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.SparkSqlBatch do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.SparkSqlBatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.SparkSqlBatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
