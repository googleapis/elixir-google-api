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

defmodule GoogleApi.OnDemandScanning.V1.Model.BuildProvenance do
  @moduledoc """
  Provenance of a build. Contains all information needed to verify the full details about the build from source to completion.

  ## Attributes

  *   `buildOptions` (*type:* `map()`, *default:* `nil`) - Special options applied to this build. This is a catch-all field where build providers can enter any desired additional details.
  *   `builderVersion` (*type:* `String.t`, *default:* `nil`) - Version string of the builder at the time this build was executed.
  *   `builtArtifacts` (*type:* `list(GoogleApi.OnDemandScanning.V1.Model.Artifact.t)`, *default:* `nil`) - Output of the build.
  *   `commands` (*type:* `list(GoogleApi.OnDemandScanning.V1.Model.Command.t)`, *default:* `nil`) - Commands requested by the build.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which the build was created.
  *   `creator` (*type:* `String.t`, *default:* `nil`) - E-mail address of the user who initiated this build. Note that this was the user's e-mail address at the time the build was initiated; this address may not represent the same end-user for all time.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which execution of the build was finished.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Required. Unique identifier of the build.
  *   `logsUri` (*type:* `String.t`, *default:* `nil`) - URI where any logs for this provenance were written.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - ID of the project.
  *   `sourceProvenance` (*type:* `GoogleApi.OnDemandScanning.V1.Model.Source.t`, *default:* `nil`) - Details of the Source input to the build.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Time at which execution of the build was started.
  *   `triggerId` (*type:* `String.t`, *default:* `nil`) - Trigger identifier if the build was triggered automatically; empty if not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buildOptions => map() | nil,
          :builderVersion => String.t() | nil,
          :builtArtifacts => list(GoogleApi.OnDemandScanning.V1.Model.Artifact.t()) | nil,
          :commands => list(GoogleApi.OnDemandScanning.V1.Model.Command.t()) | nil,
          :createTime => DateTime.t() | nil,
          :creator => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :id => String.t() | nil,
          :logsUri => String.t() | nil,
          :projectId => String.t() | nil,
          :sourceProvenance => GoogleApi.OnDemandScanning.V1.Model.Source.t() | nil,
          :startTime => DateTime.t() | nil,
          :triggerId => String.t() | nil
        }

  field(:buildOptions, type: :map)
  field(:builderVersion)
  field(:builtArtifacts, as: GoogleApi.OnDemandScanning.V1.Model.Artifact, type: :list)
  field(:commands, as: GoogleApi.OnDemandScanning.V1.Model.Command, type: :list)
  field(:createTime, as: DateTime)
  field(:creator)
  field(:endTime, as: DateTime)
  field(:id)
  field(:logsUri)
  field(:projectId)
  field(:sourceProvenance, as: GoogleApi.OnDemandScanning.V1.Model.Source)
  field(:startTime, as: DateTime)
  field(:triggerId)
end

defimpl Poison.Decoder, for: GoogleApi.OnDemandScanning.V1.Model.BuildProvenance do
  def decode(value, options) do
    GoogleApi.OnDemandScanning.V1.Model.BuildProvenance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OnDemandScanning.V1.Model.BuildProvenance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
