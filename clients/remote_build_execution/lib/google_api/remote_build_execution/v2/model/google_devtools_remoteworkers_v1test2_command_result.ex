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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandResult do
  @moduledoc """
  All information about the execution of a command, suitable for providing as
  the Bots interface's `Lease.result` field.

  ## Attributes

  *   `duration` (*type:* `String.t`, *default:* `nil`) - The elapsed time between calling Accept and Complete. The server will also
      have its own idea of what this should be, but this excludes the overhead of
      the RPCs and the bot response time.
  *   `exitCode` (*type:* `integer()`, *default:* `nil`) - The exit code of the process. An exit code of "0" should only be trusted if
      `status` has a code of OK (otherwise it may simply be unset).
  *   `metadata` (*type:* `list(map())`, *default:* `nil`) - Implementation-dependent metadata about the task. Both servers and bots
      may define messages which can be encoded here; bots are free to provide
      metadata in multiple formats, and servers are free to choose one or more
      of the values to process and ignore others. In particular, it is *not*
      considered an error for the bot to provide the server with a field that it
      doesn't know about.
  *   `outputs` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t`, *default:* `nil`) - The output files. The blob referenced by the digest should contain
      one of the following (implementation-dependent):
         * A marshalled DirectoryMetadata of the returned filesystem
         * A LUCI-style .isolated file
  *   `overhead` (*type:* `String.t`, *default:* `nil`) - The amount of time *not* spent executing the command (ie
      uploading/downloading files).
  *   `status` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.GoogleRpcStatus.t`, *default:* `nil`) - An overall status for the command. For example, if the command timed out,
      this might have a code of DEADLINE_EXCEEDED; if it was killed by the OS for
      memory exhaustion, it might have a code of RESOURCE_EXHAUSTED.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => String.t(),
          :exitCode => integer(),
          :metadata => list(map()),
          :outputs =>
            GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t(),
          :overhead => String.t(),
          :status => GoogleApi.RemoteBuildExecution.V2.Model.GoogleRpcStatus.t()
        }

  field(:duration)
  field(:exitCode)
  field(:metadata, type: :list)

  field(:outputs,
    as: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest
  )

  field(:overhead)
  field(:status, as: GoogleApi.RemoteBuildExecution.V2.Model.GoogleRpcStatus)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandResult do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
