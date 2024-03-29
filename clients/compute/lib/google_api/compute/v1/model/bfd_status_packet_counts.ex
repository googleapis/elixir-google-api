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

defmodule GoogleApi.Compute.V1.Model.BfdStatusPacketCounts do
  @moduledoc """


  ## Attributes

  *   `numRx` (*type:* `integer()`, *default:* `nil`) - Number of packets received since the beginning of the current BFD session.
  *   `numRxRejected` (*type:* `integer()`, *default:* `nil`) - Number of packets received that were rejected because of errors since the beginning of the current BFD session.
  *   `numRxSuccessful` (*type:* `integer()`, *default:* `nil`) - Number of packets received that were successfully processed since the beginning of the current BFD session.
  *   `numTx` (*type:* `integer()`, *default:* `nil`) - Number of packets transmitted since the beginning of the current BFD session.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numRx => integer() | nil,
          :numRxRejected => integer() | nil,
          :numRxSuccessful => integer() | nil,
          :numTx => integer() | nil
        }

  field(:numRx)
  field(:numRxRejected)
  field(:numRxSuccessful)
  field(:numTx)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BfdStatusPacketCounts do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BfdStatusPacketCounts.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BfdStatusPacketCounts do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
