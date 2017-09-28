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

defmodule GoogleApi.Dataflow.V1b3.Model.JobMetrics do
  @moduledoc """
  JobMetrics contains a collection of metrics descibing the detailed progress of a Dataflow job. Metrics correspond to user-defined and system-defined metrics in the job.  This resource captures only the most recent values of each metric; time-series data can be queried for them (under the same metric names) from Cloud Monitoring.

  ## Attributes

  - metricTime (String): Timestamp as of which metric values are current. Defaults to: `null`.
  - metrics (List[MetricUpdate]): All metrics for this job. Defaults to: `null`.
  """

  defstruct [
    :"metricTime",
    :"metrics"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.JobMetrics do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"metrics", :list, GoogleApi.Dataflow.V1b3.Model.MetricUpdate, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.JobMetrics do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

