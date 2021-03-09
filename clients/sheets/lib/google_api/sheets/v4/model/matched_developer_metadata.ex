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

defmodule GoogleApi.Sheets.V4.Model.MatchedDeveloperMetadata do
  @moduledoc """
  A developer metadata entry and the data filters specified in the original request that matched it.

  ## Attributes

  *   `dataFilters` (*type:* `list(GoogleApi.Sheets.V4.Model.DataFilter.t)`, *default:* `nil`) - All filters matching the returned developer metadata.
  *   `developerMetadata` (*type:* `GoogleApi.Sheets.V4.Model.DeveloperMetadata.t`, *default:* `nil`) - The developer metadata matching the specified filters.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataFilters => list(GoogleApi.Sheets.V4.Model.DataFilter.t()) | nil,
          :developerMetadata => GoogleApi.Sheets.V4.Model.DeveloperMetadata.t() | nil
        }

  field(:dataFilters, as: GoogleApi.Sheets.V4.Model.DataFilter, type: :list)
  field(:developerMetadata, as: GoogleApi.Sheets.V4.Model.DeveloperMetadata)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.MatchedDeveloperMetadata do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.MatchedDeveloperMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.MatchedDeveloperMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
