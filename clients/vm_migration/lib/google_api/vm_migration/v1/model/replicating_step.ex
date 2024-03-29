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

defmodule GoogleApi.VMMigration.V1.Model.ReplicatingStep do
  @moduledoc """
  ReplicatingStep contains specific step details.

  ## Attributes

  *   `lastThirtyMinutesAverageBytesPerSecond` (*type:* `String.t`, *default:* `nil`) - The source disks replication rate for the last 30 minutes in bytes per second.
  *   `lastTwoMinutesAverageBytesPerSecond` (*type:* `String.t`, *default:* `nil`) - The source disks replication rate for the last 2 minutes in bytes per second.
  *   `replicatedBytes` (*type:* `String.t`, *default:* `nil`) - Replicated bytes in the step.
  *   `totalBytes` (*type:* `String.t`, *default:* `nil`) - Total bytes to be handled in the step.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lastThirtyMinutesAverageBytesPerSecond => String.t() | nil,
          :lastTwoMinutesAverageBytesPerSecond => String.t() | nil,
          :replicatedBytes => String.t() | nil,
          :totalBytes => String.t() | nil
        }

  field(:lastThirtyMinutesAverageBytesPerSecond)
  field(:lastTwoMinutesAverageBytesPerSecond)
  field(:replicatedBytes)
  field(:totalBytes)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.ReplicatingStep do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.ReplicatingStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.ReplicatingStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
