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

defmodule GoogleApi.DFAReporting.V35.Model.DimensionValueRequest do
  @moduledoc """
  Represents a DimensionValuesRequest.

  ## Attributes

  *   `dimensionName` (*type:* `String.t`, *default:* `nil`) - The name of the dimension for which values should be requested.
  *   `endDate` (*type:* `Date.t`, *default:* `nil`) - 
  *   `filters` (*type:* `list(GoogleApi.DFAReporting.V35.Model.DimensionFilter.t)`, *default:* `nil`) - The list of filters by which to filter values. The filters are ANDed.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of request this is, in this case dfareporting#dimensionValueRequest .
  *   `startDate` (*type:* `Date.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionName => String.t() | nil,
          :endDate => Date.t() | nil,
          :filters => list(GoogleApi.DFAReporting.V35.Model.DimensionFilter.t()) | nil,
          :kind => String.t() | nil,
          :startDate => Date.t() | nil
        }

  field(:dimensionName)
  field(:endDate, as: Date)
  field(:filters, as: GoogleApi.DFAReporting.V35.Model.DimensionFilter, type: :list)
  field(:kind)
  field(:startDate, as: Date)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V35.Model.DimensionValueRequest do
  def decode(value, options) do
    GoogleApi.DFAReporting.V35.Model.DimensionValueRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V35.Model.DimensionValueRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
