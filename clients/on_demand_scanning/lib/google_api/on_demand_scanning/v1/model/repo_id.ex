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

defmodule GoogleApi.OnDemandScanning.V1.Model.RepoId do
  @moduledoc """
  A unique identifier for a Cloud Repo.

  ## Attributes

  *   `projectRepoId` (*type:* `GoogleApi.OnDemandScanning.V1.Model.ProjectRepoId.t`, *default:* `nil`) - A combination of a project ID and a repo name.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - A server-assigned, globally unique identifier.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :projectRepoId => GoogleApi.OnDemandScanning.V1.Model.ProjectRepoId.t() | nil,
          :uid => String.t() | nil
        }

  field(:projectRepoId, as: GoogleApi.OnDemandScanning.V1.Model.ProjectRepoId)
  field(:uid)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.RepoId do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.RepoId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.RepoId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
