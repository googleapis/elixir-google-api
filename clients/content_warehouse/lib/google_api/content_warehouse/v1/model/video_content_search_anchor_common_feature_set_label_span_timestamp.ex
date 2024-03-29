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

defmodule GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorCommonFeatureSetLabelSpanTimestamp do
  @moduledoc """
  When an anchor label has a long duration (for example, labels that contain multiple sentences), this field stores the mapping between label segments and the start time.

  ## Attributes

  *   `asrConfidence` (*type:* `number()`, *default:* `nil`) - The ASR confidence for the label span, if available.
  *   `isSentenceStart` (*type:* `boolean()`, *default:* `nil`) - Whether or not this token is the first token in a sentence.
  *   `labelBeginCharIndex` (*type:* `String.t`, *default:* `nil`) - The character index range for the span. The end index is exclusive.
  *   `labelEndCharIndex` (*type:* `String.t`, *default:* `nil`) - 
  *   `timeMs` (*type:* `String.t`, *default:* `nil`) - The time of the span.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asrConfidence => number() | nil,
          :isSentenceStart => boolean() | nil,
          :labelBeginCharIndex => String.t() | nil,
          :labelEndCharIndex => String.t() | nil,
          :timeMs => String.t() | nil
        }

  field(:asrConfidence)
  field(:isSentenceStart)
  field(:labelBeginCharIndex)
  field(:labelEndCharIndex)
  field(:timeMs)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorCommonFeatureSetLabelSpanTimestamp do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorCommonFeatureSetLabelSpanTimestamp.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.VideoContentSearchAnchorCommonFeatureSetLabelSpanTimestamp do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
