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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken do
  @moduledoc """


  ## Attributes

  *   `asrConfidence` (*type:* `number()`, *default:* `nil`) - The ASR confidence for the token, if available.
  *   `isSentenceStart` (*type:* `boolean()`, *default:* `nil`) - Whether or not this token is the first token in a sentence.
  *   `score` (*type:* `number()`, *default:* `nil`) - A score correlated with the probability that the token is part of a span candidate.
  *   `text` (*type:* `String.t`, *default:* `nil`) - The token text.
  *   `timeMs` (*type:* `String.t`, *default:* `nil`) - The start time of the passage with this token.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asrConfidence => number() | nil,
          :isSentenceStart => boolean() | nil,
          :score => number() | nil,
          :text => String.t() | nil,
          :timeMs => String.t() | nil
        }

  field(:asrConfidence)
  field(:isSentenceStart)
  field(:score)
  field(:text)
  field(:timeMs)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchSpanDolphinScoresSpanToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
