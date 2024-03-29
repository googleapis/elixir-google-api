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

defmodule GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch do
  @moduledoc """
  Next field: 9

  ## Attributes

  *   `event` (*type:* `GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeEvent.t`, *default:* `nil`) - 
  *   `fuzzyRange` (*type:* `String.t`, *default:* `nil`) - 
  *   `month` (*type:* `String.t`, *default:* `nil`) - 
  *   `quarter` (*type:* `String.t`, *default:* `nil`) - 
  *   `reference` (*type:* `String.t`, *default:* `nil`) - 
  *   `season` (*type:* `String.t`, *default:* `nil`) - 
  *   `unit` (*type:* `String.t`, *default:* `nil`) - Unnamed target: "week", "month" etc. E.g., "1st week of April".
  *   `weekday` (*type:* `list(String.t)`, *default:* `nil`) - Named target: only one of the following is expected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :event => GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeEvent.t() | nil,
          :fuzzyRange => String.t() | nil,
          :month => String.t() | nil,
          :quarter => String.t() | nil,
          :reference => String.t() | nil,
          :season => String.t() | nil,
          :unit => String.t() | nil,
          :weekday => list(String.t()) | nil
        }

  field(:event, as: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeEvent)
  field(:fuzzyRange)
  field(:month)
  field(:quarter)
  field(:reference)
  field(:season)
  field(:unit)
  field(:weekday, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.NlpSemanticParsingDatetimeTargetToFetch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
