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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberSimpleNumber do
  @moduledoc """
  Next ID: 8

  ## Attributes

  *   `decimalMark` (*type:* `String.t`, *default:* `nil`) - The type of decimal mark that was present before normalization. Note: different locales may use different decimal marks.
  *   `groupingDelimiter` (*type:* `String.t`, *default:* `nil`) - The type of digit grouping delimiter that was present before normalization. Note: different locales may use different digit grouping delimiters.
  *   `groupingSystem` (*type:* `String.t`, *default:* `nil`) - We expect this field to be set only when grouping_delimiter is set.
  *   `normalizedValue` (*type:* `String.t`, *default:* `nil`) - Contains a normalized string representation of the numeric value that has: * No digit grouping delimiter (e.g. "," in english). * Decimal mark (if present) as "." (dot). This field is kept for backward compatibility. The field is also available in number.proto
  *   `prefix` (*type:* `String.t`, *default:* `nil`) - Stores prefix output by the GRM number grammar (http://b/28623478).
  *   `suffix` (*type:* `String.t`, *default:* `nil`) - Stores suffix output
  *   `type` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :decimalMark => String.t() | nil,
          :groupingDelimiter => String.t() | nil,
          :groupingSystem => String.t() | nil,
          :normalizedValue => String.t() | nil,
          :prefix => String.t() | nil,
          :suffix => String.t() | nil,
          :type => String.t() | nil
        }

  field(:decimalMark)
  field(:groupingDelimiter)
  field(:groupingSystem)
  field(:normalizedValue)
  field(:prefix)
  field(:suffix)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberSimpleNumber do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberSimpleNumber.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingNumberSimpleNumber do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end