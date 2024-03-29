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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalExtent do
  @moduledoc """


  ## Attributes

  *   `nonSpecificValue` (*type:* `boolean()`, *default:* `nil`) - True for values like "a few".
  *   `units` (*type:* `String.t`, *default:* `nil`) - 
  *   `unitsString` (*type:* `String.t`, *default:* `nil`) - String representation, e.g., for debug.
  *   `value` (*type:* `float()`, *default:* `nil`) - For approximate values such as "a few" or "several", we populate |value| with a specific numeric value which is a generous (i.e., high) interpretation of the text, and we set |non_specific_value| to true.
  *   `valueString` (*type:* `String.t`, *default:* `nil`) - Can hold numbers as well as "a few".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nonSpecificValue => boolean() | nil,
          :units => String.t() | nil,
          :unitsString => String.t() | nil,
          :value => float() | nil,
          :valueString => String.t() | nil
        }

  field(:nonSpecificValue)
  field(:units)
  field(:unitsString)
  field(:value)
  field(:valueString)
end

defimpl Poison.Decoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalExtent do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalExtent.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingLocalExtent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
