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

defmodule GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo do
  @moduledoc """
  Message that helps aggregate all sub-executions triggered by one execution and keeps track of child-parent relationships.

  ## Attributes

  *   `parentEventExecutionInfoId` (*type:* `String.t`, *default:* `nil`) - Parent event execution info id that triggers the current execution through SubWorkflowExecutorTask.
  *   `traceId` (*type:* `String.t`, *default:* `nil`) - Used to aggregate ExecutionTraceInfo.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parentEventExecutionInfoId => String.t() | nil,
          :traceId => String.t() | nil
        }

  field(:parentEventExecutionInfoId)
  field(:traceId)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.EnterpriseCrmEventbusProtoExecutionTraceInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
