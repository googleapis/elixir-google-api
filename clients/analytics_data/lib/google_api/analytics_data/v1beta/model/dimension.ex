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

defmodule GoogleApi.AnalyticsData.V1beta.Model.Dimension do
  @moduledoc """
  Dimensions are attributes of your data. For example, the dimension city indicates the city from which an event originates. Dimension values in report responses are strings; for example, city could be "Paris" or "New York". Requests are allowed up to 9 dimensions.

  ## Attributes

  *   `dimensionExpression` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.DimensionExpression.t`, *default:* `nil`) - One dimension can be the result of an expression of multiple dimensions. For example, dimension "country, city": concatenate(country, ", ", city).
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the dimension. See the [API Dimensions](https://developers.google.com/analytics/devguides/reporting/data/v1/api-schema#dimensions) for the list of dimension names. If `dimensionExpression` is specified, `name` can be any string that you would like within the allowed character set. For example if a `dimensionExpression` concatenates `country` and `city`, you could call that dimension `countryAndCity`. Dimension names that you choose must match the regular expression `^[a-zA-Z0-9_]$`. Dimensions are referenced by `name` in `dimensionFilter`, `orderBys`, `dimensionExpression`, and `pivots`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dimensionExpression =>
            GoogleApi.AnalyticsData.V1beta.Model.DimensionExpression.t() | nil,
          :name => String.t() | nil
        }

  field(:dimensionExpression, as: GoogleApi.AnalyticsData.V1beta.Model.DimensionExpression)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.Dimension do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.Dimension.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.Dimension do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
