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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSaftLabeledSpan do
  @moduledoc """
  A generic span, possibly with an associated label. The span may be defined by either byte-level or token-level boundaries.

  ## Attributes

  *   `byteEnd` (*type:* `integer()`, *default:* `nil`) - note: inclusive
  *   `byteStart` (*type:* `integer()`, *default:* `nil`) - The indices of the first and last byte covered by the span.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The label associated with the span.
  *   `labelScores` (*type:* `map()`, *default:* `nil`) - Optionally stores alternative labels with associated scores for the span.
  *   `score` (*type:* `number()`, *default:* `nil`) - A score associated with the span.
  *   `tokenEnd` (*type:* `integer()`, *default:* `nil`) - note: inclusive
  *   `tokenStart` (*type:* `integer()`, *default:* `nil`) - The indices of the first and last token covered by the span.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :byteEnd => integer() | nil,
          :byteStart => integer() | nil,
          :label => String.t() | nil,
          :labelScores => map() | nil,
          :score => number() | nil,
          :tokenEnd => integer() | nil,
          :tokenStart => integer() | nil
        }

  field(:byteEnd)
  field(:byteStart)
  field(:label)
  field(:labelScores, type: :map)
  field(:score)
  field(:tokenEnd)
  field(:tokenStart)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftLabeledSpan do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSaftLabeledSpan.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSaftLabeledSpan do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end