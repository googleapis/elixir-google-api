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

defmodule GoogleApi.Dataflow.V1b3.Model.ReportWorkItemStatusResponse do
  @moduledoc """
  Response from a request to report the status of WorkItems.

  ## Attributes

  - workItemServiceStates ([WorkItemServiceState]): A set of messages indicating the service-side state for each WorkItem whose status was reported, in the same order as the WorkItemStatus messages in the ReportWorkItemStatusRequest which resulting in this response. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :workItemServiceStates => list(GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState.t())
        }

  field(:workItemServiceStates,
    as: GoogleApi.Dataflow.V1b3.Model.WorkItemServiceState,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ReportWorkItemStatusResponse do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.ReportWorkItemStatusResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ReportWorkItemStatusResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
