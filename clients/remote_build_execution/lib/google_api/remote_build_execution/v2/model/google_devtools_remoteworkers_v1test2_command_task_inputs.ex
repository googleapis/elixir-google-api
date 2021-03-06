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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs do
  @moduledoc """
  Describes the inputs to a shell-style task.

  ## Attributes

  *   `arguments` (*type:* `list(String.t)`, *default:* `nil`) - The command itself to run (e.g., argv). This field should be passed directly to the underlying operating system, and so it must be sensible to that operating system. For example, on Windows, the first argument might be "C:\\Windows\\System32\\ping.exe" - that is, using drive letters and backslashes. A command for a *nix system, on the other hand, would use forward slashes. All other fields in the RWAPI must consistently use forward slashes, since those fields may be interpretted by both the service and the bot.
  *   `environmentVariables` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable.t)`, *default:* `nil`) - All environment variables required by the task.
  *   `files` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t)`, *default:* `nil`) - The input filesystem to be set up prior to the task beginning. The contents should be a repeated set of FileMetadata messages though other formats are allowed if better for the implementation (eg, a LUCI-style .isolated file). This field is repeated since implementations might want to cache the metadata, in which case it may be useful to break up portions of the filesystem that change frequently (eg, specific input files) from those that don't (eg, standard header files).
  *   `inlineBlobs` (*type:* `list(GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Blob.t)`, *default:* `nil`) - Inline contents for blobs expected to be needed by the bot to execute the task. For example, contents of entries in `files` or blobs that are indirectly referenced by an entry there. The bot should check against this list before downloading required task inputs to reduce the number of communications between itself and the remote CAS server.
  *   `workingDirectory` (*type:* `String.t`, *default:* `nil`) - Directory from which a command is executed. It is a relative directory with respect to the bot's working directory (i.e., "./"). If it is non-empty, then it must exist under "./". Otherwise, "./" will be used.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arguments => list(String.t()) | nil,
          :environmentVariables =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable.t()
            )
            | nil,
          :files =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest.t()
            )
            | nil,
          :inlineBlobs =>
            list(
              GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Blob.t()
            )
            | nil,
          :workingDirectory => String.t() | nil
        }

  field(:arguments, type: :list)

  field(:environmentVariables,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputsEnvironmentVariable,
    type: :list
  )

  field(:files,
    as: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Digest,
    type: :list
  )

  field(:inlineBlobs,
    as: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2Blob,
    type: :list
  )

  field(:workingDirectory)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskInputs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
