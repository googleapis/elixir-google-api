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

defmodule GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter do
  @moduledoc """
  To express that the result needs to be between two numbers (inclusive).

  ## Attributes

  *   `fromValue` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.NumericValue.t`, *default:* `nil`) - Begins with this number.
  *   `toValue` (*type:* `GoogleApi.AnalyticsData.V1beta.Model.NumericValue.t`, *default:* `nil`) - Ends with this number.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fromValue => GoogleApi.AnalyticsData.V1beta.Model.NumericValue.t() | nil,
          :toValue => GoogleApi.AnalyticsData.V1beta.Model.NumericValue.t() | nil
        }

  field(:fromValue, as: GoogleApi.AnalyticsData.V1beta.Model.NumericValue)
  field(:toValue, as: GoogleApi.AnalyticsData.V1beta.Model.NumericValue)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter do
  def decode(value, options) do
    GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsData.V1beta.Model.BetweenFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
