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

defmodule GoogleApi.Datastream.V1.Model.CdcStrategy do
  @moduledoc """
  The strategy that the stream uses for CDC replication.

  ## Attributes

  *   `mostRecentStartPosition` (*type:* `GoogleApi.Datastream.V1.Model.MostRecentStartPosition.t`, *default:* `nil`) - Optional. Start replicating from the most recent position in the source.
  *   `nextAvailableStartPosition` (*type:* `GoogleApi.Datastream.V1.Model.NextAvailableStartPosition.t`, *default:* `nil`) - Optional. Resume replication from the next available position in the source.
  *   `specificStartPosition` (*type:* `GoogleApi.Datastream.V1.Model.SpecificStartPosition.t`, *default:* `nil`) - Optional. Start replicating from a specific position in the source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mostRecentStartPosition =>
            GoogleApi.Datastream.V1.Model.MostRecentStartPosition.t() | nil,
          :nextAvailableStartPosition =>
            GoogleApi.Datastream.V1.Model.NextAvailableStartPosition.t() | nil,
          :specificStartPosition => GoogleApi.Datastream.V1.Model.SpecificStartPosition.t() | nil
        }

  field(:mostRecentStartPosition, as: GoogleApi.Datastream.V1.Model.MostRecentStartPosition)
  field(:nextAvailableStartPosition, as: GoogleApi.Datastream.V1.Model.NextAvailableStartPosition)
  field(:specificStartPosition, as: GoogleApi.Datastream.V1.Model.SpecificStartPosition)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.CdcStrategy do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.CdcStrategy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.CdcStrategy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
