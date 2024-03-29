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

defmodule GoogleApi.CloudTrace.V2.Model.MessageEvent do
  @moduledoc """
  An event describing a message sent/received between Spans.

  ## Attributes

  *   `compressedSizeBytes` (*type:* `String.t`, *default:* `nil`) - The number of compressed bytes sent or received. If missing, the compressed size is assumed to be the same size as the uncompressed size.
  *   `id` (*type:* `String.t`, *default:* `nil`) - An identifier for the MessageEvent's message that can be used to match `SENT` and `RECEIVED` MessageEvents.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of MessageEvent. Indicates whether the message was sent or received.
  *   `uncompressedSizeBytes` (*type:* `String.t`, *default:* `nil`) - The number of uncompressed bytes sent or received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compressedSizeBytes => String.t() | nil,
          :id => String.t() | nil,
          :type => String.t() | nil,
          :uncompressedSizeBytes => String.t() | nil
        }

  field(:compressedSizeBytes)
  field(:id)
  field(:type)
  field(:uncompressedSizeBytes)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTrace.V2.Model.MessageEvent do
  def decode(value, options) do
    GoogleApi.CloudTrace.V2.Model.MessageEvent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTrace.V2.Model.MessageEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
