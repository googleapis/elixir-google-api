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

defmodule GoogleApi.CloudBuild.V1.Model.PushFilter do
  @moduledoc """
  Push contains filter properties for matching GitHub git pushes.

  ## Attributes

  *   `branch` (*type:* `String.t`, *default:* `nil`) - Regexes matching branches to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  *   `invertRegex` (*type:* `boolean()`, *default:* `nil`) - When true, only trigger a build if the revision regex does NOT match the git_ref regex.
  *   `tag` (*type:* `String.t`, *default:* `nil`) - Regexes matching tags to build. The syntax of the regular expressions accepted is the syntax accepted by RE2 and described at https://github.com/google/re2/wiki/Syntax
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :branch => String.t() | nil,
          :invertRegex => boolean() | nil,
          :tag => String.t() | nil
        }

  field(:branch)
  field(:invertRegex)
  field(:tag)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.PushFilter do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.PushFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.PushFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
