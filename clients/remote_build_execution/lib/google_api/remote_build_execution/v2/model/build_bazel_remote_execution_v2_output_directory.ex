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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory do
  @moduledoc """
  An `OutputDirectory` is the output in an `ActionResult` corresponding to a
  directory's full contents rather than a single file.

  ## Attributes

  *   `path` (*type:* `String.t`, *default:* `nil`) - The full path of the directory relative to the working directory. The path
      separator is a forward slash `/`. Since this is a relative path, it MUST
      NOT begin with a leading forward slash. The empty string value is allowed,
      and it denotes the entire working directory.
  *   `treeDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest of the encoded
      Tree proto containing the
      directory's contents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :path => String.t(),
          :treeDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t()
        }

  field(:path)

  field(:treeDigest, as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2OutputDirectory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
