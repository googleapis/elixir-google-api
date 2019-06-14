# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState do
  @moduledoc """
  The Dataflow service's idea of the current state of a WorkItem
  being processed by a worker.

  ## Attributes

  - harnessData (map()): Other data returned by the service, specific to the particular
  worker harness. Defaults to `nil`.
  - leaseExpireTime (DateTime.t): Time at which the current lease will expire. Defaults to `nil`.
  - metricShortId (list(GoogleApi.Dataflow.V1b3.Model.MetricShortId.t)): The short ids that workers should use in subsequent metric updates.
  Workers should strive to use short ids whenever possible, but it is ok
  to request the short_id again if a worker lost track of it
  (e.g. if the worker is recovering from a crash).
  NOTE: it is possible that the response may have short ids for a subset
  of the metrics. Defaults to `nil`.
  - nextReportIndex (String.t): The index value to use for the next report sent by the worker.
  Note: If the report call fails for whatever reason, the worker should
  reuse this index for subsequent report attempts. Defaults to `nil`.
  - reportStatusInterval (String.t): New recommended reporting interval. Defaults to `nil`.
  - splitRequest (GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest.t): The progress point in the WorkItem where the Dataflow service
  suggests that the worker truncate the task. Defaults to `nil`.
  - suggestedStopPoint (GoogleApi.Dataflow.V1b3.Model.ApproximateProgress.t): DEPRECATED in favor of split_request. Defaults to `nil`.
  - suggestedStopPosition (GoogleApi.Dataflow.V1b3.Model.Position.t): Obsolete, always empty. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :harnessData => map(),
          :leaseExpireTime => DateTime.t(),
          :metricShortId => list(GoogleApi.Dataflow.V1b3.Model.MetricShortId.t()),
          :nextReportIndex => String.t(),
          :reportStatusInterval => String.t(),
          :splitRequest => GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest.t(),
          :suggestedStopPoint => GoogleApi.Dataflow.V1b3.Model.ApproximateProgress.t(),
          :suggestedStopPosition => GoogleApi.Dataflow.V1b3.Model.Position.t()
        }

  field(:harnessData, type: :map)
  field(:leaseExpireTime, as: DateTime)
  field(:metricShortId, as: GoogleApi.Dataflow.V1b3.Model.MetricShortId, type: :list)
  field(:nextReportIndex)
  field(:reportStatusInterval)
  field(:splitRequest, as: GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest)
  field(:suggestedStopPoint, as: GoogleApi.Dataflow.V1b3.Model.ApproximateProgress)
  field(:suggestedStopPosition, as: GoogleApi.Dataflow.V1b3.Model.Position)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
