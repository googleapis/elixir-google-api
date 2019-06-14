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

defmodule GoogleApi.DoubleClickSearch.V2.Model.ReportRequestTimeRange do
  @moduledoc """
  If metrics are requested in a report, this argument will be used to restrict the metrics to a specific time range.

  ## Attributes

  - changedAttributesSinceTimestamp (DateTime.t): Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z. See additional references on how changed attribute reports work. Defaults to `nil`.
  - changedMetricsSinceTimestamp (DateTime.t): Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z. See additional references on how changed metrics reports work. Defaults to `nil`.
  - endDate (String.t): Inclusive date in YYYY-MM-DD format. Defaults to `nil`.
  - startDate (String.t): Inclusive date in YYYY-MM-DD format. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :changedAttributesSinceTimestamp => DateTime.t(),
          :changedMetricsSinceTimestamp => DateTime.t(),
          :endDate => String.t(),
          :startDate => String.t()
        }

  field(:changedAttributesSinceTimestamp, as: DateTime)
  field(:changedMetricsSinceTimestamp, as: DateTime)
  field(:endDate)
  field(:startDate)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportRequestTimeRange do
  def decode(value, options) do
    GoogleApi.DoubleClickSearch.V2.Model.ReportRequestTimeRange.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickSearch.V2.Model.ReportRequestTimeRange do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
