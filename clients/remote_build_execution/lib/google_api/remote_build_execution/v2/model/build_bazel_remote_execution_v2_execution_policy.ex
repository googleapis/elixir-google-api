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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy do
  @moduledoc """
  An `ExecutionPolicy` can be used to control the scheduling of the action.

  ## Attributes

  *   `priority` (*type:* `integer()`, *default:* `nil`) - The priority (relative importance) of this action. Generally, a lower value
      means that the action should be run sooner than actions having a greater
      priority value, but the interpretation of a given value is server-
      dependent. A priority of 0 means the *default* priority. Priorities may be
      positive or negative, and such actions should run later or sooner than
      actions having the default priority, respectively. The particular semantics
      of this field is up to the server. In particular, every server will have
      their own supported range of priorities, and will decide how these map into
      scheduling policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :priority => integer()
        }

  field(:priority)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ExecutionPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
