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

defmodule GoogleApi.ArtifactRegistry.V1.Model.ProjectSettings do
  @moduledoc """
  The Artifact Registry settings that apply to a Project.

  ## Attributes

  *   `legacyRedirectionState` (*type:* `String.t`, *default:* `nil`) - The redirection state of the legacy repositories in this project.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the project's settings. Always of the form: projects/{project-id}/projectSettings In update request: never set In response: always set
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :legacyRedirectionState => String.t() | nil,
          :name => String.t() | nil
        }

  field(:legacyRedirectionState)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.ArtifactRegistry.V1.Model.ProjectSettings do
  def decode(value, options) do
    GoogleApi.ArtifactRegistry.V1.Model.ProjectSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ArtifactRegistry.V1.Model.ProjectSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
