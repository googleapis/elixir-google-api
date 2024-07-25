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

defmodule GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1RepoSource do
  @moduledoc """
  Location of the source in a Google Cloud Source Repository.

  ## Attributes

  *   `branchName` (*type:* `String.t`, *default:* `nil`) - Regex matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  *   `commitSha` (*type:* `String.t`, *default:* `nil`) - Explicit commit SHA to build.
  *   `dir` (*type:* `String.t`, *default:* `nil`) - Optional. Directory, relative to the source root, in which to run the build. This must be a relative path. If a step's `dir` is specified and is an absolute path, this value is ignored for that step's execution.
  *   `invertRegex` (*type:* `boolean()`, *default:* `nil`) - Optional. Only trigger a build if the revision regex does NOT match the revision regex.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Optional. ID of the project that owns the Cloud Source Repository. If omitted, the project ID requesting the build is assumed.
  *   `repoName` (*type:* `String.t`, *default:* `nil`) - Required. Name of the Cloud Source Repository.
  *   `substitutions` (*type:* `map()`, *default:* `nil`) - Optional. Substitutions to use in a triggered build. Should only be used with RunBuildTrigger
  *   `tagName` (*type:* `String.t`, *default:* `nil`) - Regex matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :branchName => String.t() | nil,
          :commitSha => String.t() | nil,
          :dir => String.t() | nil,
          :invertRegex => boolean() | nil,
          :projectId => String.t() | nil,
          :repoName => String.t() | nil,
          :substitutions => map() | nil,
          :tagName => String.t() | nil
        }

  field(:branchName)
  field(:commitSha)
  field(:dir)
  field(:invertRegex)
  field(:projectId)
  field(:repoName)
  field(:substitutions, type: :map)
  field(:tagName)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1RepoSource do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1RepoSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1RepoSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
