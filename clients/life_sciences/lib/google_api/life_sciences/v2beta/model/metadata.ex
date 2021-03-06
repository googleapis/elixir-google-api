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

defmodule GoogleApi.LifeSciences.V2beta.Model.Metadata do
  @moduledoc """
  Carries information about the pipeline execution that is returned in the long running operation's metadata field.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the operation was created by the API.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which execution was completed and resources were cleaned up.
  *   `events` (*type:* `list(GoogleApi.LifeSciences.V2beta.Model.Event.t)`, *default:* `nil`) - The list of events that have happened so far during the execution of this operation.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The user-defined labels associated with this operation.
  *   `pipeline` (*type:* `GoogleApi.LifeSciences.V2beta.Model.Pipeline.t`, *default:* `nil`) - The pipeline this operation represents.
  *   `pubSubTopic` (*type:* `String.t`, *default:* `nil`) - The name of the Cloud Pub/Sub topic where notifications of operation status changes are sent.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - The first time at which resources were allocated to execute the pipeline.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :events => list(GoogleApi.LifeSciences.V2beta.Model.Event.t()) | nil,
          :labels => map() | nil,
          :pipeline => GoogleApi.LifeSciences.V2beta.Model.Pipeline.t() | nil,
          :pubSubTopic => String.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:events, as: GoogleApi.LifeSciences.V2beta.Model.Event, type: :list)
  field(:labels, type: :map)
  field(:pipeline, as: GoogleApi.LifeSciences.V2beta.Model.Pipeline)
  field(:pubSubTopic)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.LifeSciences.V2beta.Model.Metadata do
  def decode(value, options) do
    GoogleApi.LifeSciences.V2beta.Model.Metadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.LifeSciences.V2beta.Model.Metadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
