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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs do
  @moduledoc """
  Describes the expected outputs of the command.

  ## Attributes

  *   `directories` (*type:* `list(String.t)`, *default:* `nil`) - A list of expected directories, relative to the execution root. All paths
      MUST be delimited by forward slashes.
  *   `files` (*type:* `list(String.t)`, *default:* `nil`) - A list of expected files, relative to the execution root. All paths
      MUST be delimited by forward slashes.
  *   `stderrDestination` (*type:* `String.t`, *default:* `nil`) - The destination to which any stderr should be sent. The method by which
      the bot should send the stream contents to that destination is not
      defined in this API. As examples, the destination could be a file
      referenced in the `files` field in this message, or it could be a URI
      that must be written via the ByteStream API.
  *   `stdoutDestination` (*type:* `String.t`, *default:* `nil`) - The destination to which any stdout should be sent. The method by which
      the bot should send the stream contents to that destination is not
      defined in this API. As examples, the destination could be a file
      referenced in the `files` field in this message, or it could be a URI
      that must be written via the ByteStream API.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :directories => list(String.t()),
          :files => list(String.t()),
          :stderrDestination => String.t(),
          :stdoutDestination => String.t()
        }

  field(:directories, type: :list)
  field(:files, type: :list)
  field(:stderrDestination)
  field(:stdoutDestination)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemoteworkersV1test2CommandTaskOutputs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
