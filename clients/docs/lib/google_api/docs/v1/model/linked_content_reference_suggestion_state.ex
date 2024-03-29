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

defmodule GoogleApi.Docs.V1.Model.LinkedContentReferenceSuggestionState do
  @moduledoc """
  A mask that indicates which of the fields on the base LinkedContentReference have been changed in this suggestion. For any field set to true, there's a new suggested value.

  ## Attributes

  *   `sheetsChartReferenceSuggestionState` (*type:* `GoogleApi.Docs.V1.Model.SheetsChartReferenceSuggestionState.t`, *default:* `nil`) - A mask that indicates which of the fields in sheets_chart_reference have been changed in this suggestion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :sheetsChartReferenceSuggestionState =>
            GoogleApi.Docs.V1.Model.SheetsChartReferenceSuggestionState.t() | nil
        }

  field(:sheetsChartReferenceSuggestionState,
    as: GoogleApi.Docs.V1.Model.SheetsChartReferenceSuggestionState
  )
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.LinkedContentReferenceSuggestionState do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.LinkedContentReferenceSuggestionState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.LinkedContentReferenceSuggestionState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
