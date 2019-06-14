# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.SourceRepo.V1.Model.ProjectConfig do
  @moduledoc """
  Cloud Source Repositories configuration of a project.

  ## Attributes

  - enablePrivateKeyCheck (boolean()): Reject a Git push that contains a private key. Defaults to `nil`.
  - name (String.t): The name of the project. Values are of the form `projects/<project>`. Defaults to `nil`.
  - pubsubConfigs (%{optional(String.t) => GoogleApi.SourceRepo.V1.Model.PubsubConfig.t}): How this project publishes a change in the repositories through Cloud
  Pub/Sub. Keyed by the topic names. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enablePrivateKeyCheck => boolean(),
          :name => String.t(),
          :pubsubConfigs => %{
            optional(String.t()) => GoogleApi.SourceRepo.V1.Model.PubsubConfig.t()
          }
        }

  field(:enablePrivateKeyCheck)
  field(:name)
  field(:pubsubConfigs, as: GoogleApi.SourceRepo.V1.Model.PubsubConfig, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.SourceRepo.V1.Model.ProjectConfig do
  def decode(value, options) do
    GoogleApi.SourceRepo.V1.Model.ProjectConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SourceRepo.V1.Model.ProjectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
