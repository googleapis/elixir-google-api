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

defmodule GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildbotCommandEvents do
  @moduledoc """
  CommandEvents contains counters for the number of warnings and errors that occurred during the execution of a command.

  ## Attributes

  *   `dockerCacheHit` (*type:* `boolean()`, *default:* `nil`) - Indicates whether we are using a cached Docker image (true) or had to pull the Docker image (false) for this command.
  *   `dockerImageName` (*type:* `String.t`, *default:* `nil`) - Docker Image name.
  *   `inputCacheMiss` (*type:* `number()`, *default:* `nil`) - The input cache miss ratio.
  *   `numErrors` (*type:* `String.t`, *default:* `nil`) - The number of errors reported.
  *   `numWarnings` (*type:* `String.t`, *default:* `nil`) - The number of warnings reported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dockerCacheHit => boolean(),
          :dockerImageName => String.t(),
          :inputCacheMiss => number(),
          :numErrors => String.t(),
          :numWarnings => String.t()
        }

  field(:dockerCacheHit)
  field(:dockerImageName)
  field(:inputCacheMiss)
  field(:numErrors)
  field(:numWarnings)
end

defimpl Poison.Decoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildbotCommandEvents do
  def decode(value, options) do
    GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildbotCommandEvents.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.RemoteBuildExecution.V2.Model.GoogleDevtoolsRemotebuildbotCommandEvents do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
