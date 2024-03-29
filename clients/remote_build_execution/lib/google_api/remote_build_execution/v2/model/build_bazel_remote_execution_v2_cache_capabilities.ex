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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2CacheCapabilities do
  @moduledoc """
  Capabilities of the remote cache system.

  ## Attributes

  *   `actionCacheUpdateCapabilities` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities.t`, *default:* `nil`) - Capabilities for updating the action cache.
  *   `cachePriorityCapabilities` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilities.t`, *default:* `nil`) - Supported cache priority range for both CAS and ActionCache.
  *   `digestFunctions` (*type:* `list(String.t)`, *default:* `nil`) - All the digest functions supported by the remote cache. Remote cache may support multiple digest functions simultaneously.
  *   `maxBatchTotalSizeBytes` (*type:* `String.t`, *default:* `nil`) - Maximum total size of blobs to be uploaded/downloaded using batch methods. A value of 0 means no limit is set, although in practice there will always be a message size limitation of the protocol in use, e.g. GRPC.
  *   `supportedCompressors` (*type:* `list(String.t)`, *default:* `nil`) - Compressors supported by the "compressed-blobs" bytestream resources. Servers MUST support identity/no-compression, even if it is not listed here. Note that this does not imply which if any compressors are supported by the server at the gRPC level.
  *   `symlinkAbsolutePathStrategy` (*type:* `String.t`, *default:* `nil`) - Whether absolute symlink targets are supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionCacheUpdateCapabilities =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities.t()
            | nil,
          :cachePriorityCapabilities =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilities.t()
            | nil,
          :digestFunctions => list(String.t()) | nil,
          :maxBatchTotalSizeBytes => String.t() | nil,
          :supportedCompressors => list(String.t()) | nil,
          :symlinkAbsolutePathStrategy => String.t() | nil
        }

  field(:actionCacheUpdateCapabilities,
    as:
      GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionCacheUpdateCapabilities
  )

  field(:cachePriorityCapabilities,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2PriorityCapabilities
  )

  field(:digestFunctions, type: :list)
  field(:maxBatchTotalSizeBytes)
  field(:supportedCompressors, type: :list)
  field(:symlinkAbsolutePathStrategy)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2CacheCapabilities do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2CacheCapabilities.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2CacheCapabilities do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
