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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.Trace do
  @moduledoc """
  Trace represents one simulated packet forwarding path. * Each trace contains multiple ordered steps. * Each step is in a particular state with associated configuration. * State is categorized as final or non-final states. * Each final state has a reason associated. * Each trace must end with a final state (the last step). ``` |---------------------Trace----------------------| Step1(State) Step2(State) --- StepN(State(final)) ```

  ## Attributes

  *   `endpointInfo` (*type:* `GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo.t`, *default:* `nil`) - Derived from the source and destination endpoints definition specified by user request, and validated by the data plane model. If there are multiple traces starting from different source locations, then the endpoint_info may be different between traces.
  *   `forwardTraceId` (*type:* `integer()`, *default:* `nil`) - ID of trace. For forward traces, this ID is unique for each trace. For return traces, it matches ID of associated forward trace. A single forward trace can be associated with none, one or more than one return trace.
  *   `steps` (*type:* `list(GoogleApi.NetworkManagement.V1beta1.Model.Step.t)`, *default:* `nil`) - A trace of a test contains multiple steps from the initial state to the final state (delivered, dropped, forwarded, or aborted). The steps are ordered by the processing sequence within the simulated network state machine. It is critical to preserve the order of the steps and avoid reordering or sorting them.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpointInfo => GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo.t() | nil,
          :forwardTraceId => integer() | nil,
          :steps => list(GoogleApi.NetworkManagement.V1beta1.Model.Step.t()) | nil
        }

  field(:endpointInfo, as: GoogleApi.NetworkManagement.V1beta1.Model.EndpointInfo)
  field(:forwardTraceId)
  field(:steps, as: GoogleApi.NetworkManagement.V1beta1.Model.Step, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.Trace do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.Trace.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.Trace do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
