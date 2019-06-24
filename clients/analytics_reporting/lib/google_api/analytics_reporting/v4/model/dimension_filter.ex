# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AnalyticsReporting.V4.Model.DimensionFilter do
  @moduledoc """
  Dimension filter specifies the filtering options on a dimension.

  ## Attributes

  *   `caseSensitive` (*type:* `boolean()`, *default:* `nil`) - Should the match be case sensitive? Default is false.
  *   `dimensionName` (*type:* `String.t`, *default:* `nil`) - The dimension to filter on. A DimensionFilter must contain a dimension.
  *   `expressions` (*type:* `list(String.t)`, *default:* `nil`) - Strings or regular expression to match against. Only the first value of
      the list is used for comparison unless the operator is `IN_LIST`.
      If `IN_LIST` operator, then the entire list is used to filter the
      dimensions as explained in the description of the `IN_LIST` operator.
  *   `not` (*type:* `boolean()`, *default:* `nil`) - Logical `NOT` operator. If this boolean is set to true, then the matching
      dimension values will be excluded in the report. The default is false.
  *   `operator` (*type:* `String.t`, *default:* `nil`) - How to match the dimension to the expression. The default is REGEXP.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caseSensitive => boolean(),
          :dimensionName => String.t(),
          :expressions => list(String.t()),
          :not => boolean(),
          :operator => String.t()
        }

  field(:caseSensitive)
  field(:dimensionName)
  field(:expressions, type: :list)
  field(:not)
  field(:operator)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.DimensionFilter do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.DimensionFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.DimensionFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
