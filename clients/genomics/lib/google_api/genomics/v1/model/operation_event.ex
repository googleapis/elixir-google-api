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

defmodule GoogleApi.Genomics.V1.Model.OperationEvent do
  @moduledoc """
  An event that occurred during an Operation.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Required description of event.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional time of when event finished. An event can have a start time and no finish time. If an event has a finish time, there must be a start time.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional time of when event started.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil
        }

  field(:description)
  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V1.Model.OperationEvent do
  def decode(value, options) do
    GoogleApi.Genomics.V1.Model.OperationEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V1.Model.OperationEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
