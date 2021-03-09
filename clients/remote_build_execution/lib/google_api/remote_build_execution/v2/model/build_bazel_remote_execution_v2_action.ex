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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Action do
  @moduledoc """
  An `Action` captures all the information about an execution which is required to reproduce it. `Action`s are the core component of the [Execution] service. A single `Action` represents a repeatable action that can be performed by the execution service. `Action`s can be succinctly identified by the digest of their wire format encoding and, once an `Action` has been executed, will be cached in the action cache. Future requests can then use the cached result rather than needing to run afresh. When a server completes execution of an Action, it MAY choose to cache the result in the ActionCache unless `do_not_cache` is `true`. Clients SHOULD expect the server to do so. By default, future calls to Execute the same `Action` will also serve their results from the cache. Clients must take care to understand the caching behaviour. Ideally, all `Action`s will be reproducible so that serving a result from cache is always desirable and correct.

  ## Attributes

  *   `commandDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest of the Command to run, which MUST be present in the ContentAddressableStorage.
  *   `doNotCache` (*type:* `boolean()`, *default:* `nil`) - If true, then the `Action`'s result cannot be cached, and in-flight requests for the same `Action` may not be merged.
  *   `inputRootDigest` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t`, *default:* `nil`) - The digest of the root Directory for the input files. The files in the directory tree are available in the correct location on the build machine before the command is executed. The root directory, as well as every subdirectory and content blob referred to, MUST be in the ContentAddressableStorage.
  *   `platform` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Platform.t`, *default:* `nil`) - The optional platform requirements for the execution environment. The server MAY choose to execute the action on any worker satisfying the requirements, so the client SHOULD ensure that running the action on any such worker will have the same result. A detailed lexicon for this can be found in the accompanying platform.md. New in version 2.2: clients SHOULD set these platform properties as well as those in the Command. Servers SHOULD prefer those set here.
  *   `salt` (*type:* `String.t`, *default:* `nil`) - An optional additional salt value used to place this `Action` into a separate cache namespace from other instances having the same field contents. This salt typically comes from operational configuration specific to sources such as repo and service configuration, and allows disowning an entire set of ActionResults that might have been poisoned by buggy software or tool failures.
  *   `timeout` (*type:* `String.t`, *default:* `nil`) - A timeout after which the execution should be killed. If the timeout is absent, then the client is specifying that the execution should continue as long as the server will let it. The server SHOULD impose a timeout if the client does not specify one, however, if the client does specify a timeout that is longer than the server's maximum timeout, the server MUST reject the request. The timeout is a part of the Action message, and therefore two `Actions` with different timeouts are different, even if they are otherwise identical. This is because, if they were not, running an `Action` with a lower timeout than is required might result in a cache hit from an execution run with a longer timeout, hiding the fact that the timeout is too short. By encoding it directly in the `Action`, a lower timeout will result in a cache miss and the execution timeout will fail immediately, rather than whenever the cache entry gets evicted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :commandDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t() | nil,
          :doNotCache => boolean() | nil,
          :inputRootDigest =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest.t() | nil,
          :platform =>
            GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Platform.t() | nil,
          :salt => String.t() | nil,
          :timeout => String.t() | nil
        }

  field(:commandDigest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest
  )

  field(:doNotCache)

  field(:inputRootDigest,
    as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Digest
  )

  field(:platform, as: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Platform)

  field(:salt)
  field(:timeout)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Action do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Action.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2Action do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
