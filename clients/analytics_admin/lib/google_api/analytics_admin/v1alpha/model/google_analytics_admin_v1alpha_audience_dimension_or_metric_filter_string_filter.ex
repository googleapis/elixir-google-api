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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter do
  @moduledoc """
  A filter for a string-type dimension that matches a particular pattern.

  ## Attributes

  *   `caseSensitive` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, the match is case-sensitive. If false, the match is case-insensitive.
  *   `matchType` (*type:* `String.t`, *default:* `nil`) - Required. The match type for the string filter.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Required. The string value to be matched against.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :caseSensitive => boolean() | nil,
          :matchType => String.t() | nil,
          :value => String.t() | nil
        }

  field(:caseSensitive)
  field(:matchType)
  field(:value)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAudienceDimensionOrMetricFilterStringFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
