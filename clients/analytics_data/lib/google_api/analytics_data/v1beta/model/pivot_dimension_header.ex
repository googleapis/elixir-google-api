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

defmodule GoogleApi.AnalyticsData.V1beta.Model.PivotDimensionHeader do
  @moduledoc """
  Summarizes dimension values from a row for this pivot.

  ## Attributes

  *   `dimensionValues` (*type:* `list(GoogleApi.AnalyticsData.V1beta.Model.DimensionValue.t)`, *default:* `nil`) - Values of multiple dimensions in a pivot.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionValues => list(GoogleApi.AnalyticsData.V1beta.Model.DimensionValue.t()) | nil
        }

  field(:dimensionValues, as: GoogleApi.AnalyticsData.V1beta.Model.DimensionValue, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.PivotDimensionHeader do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.PivotDimensionHeader.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.PivotDimensionHeader do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
