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

defmodule GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment do
  @moduledoc """
  A list of segment filters in the `OR` group are combined with the logical OR operator.

  ## Attributes

  *   `segmentFilterClauses` (*type:* `list(GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause.t)`, *default:* `nil`) - List of segment filters to be combined with a `OR` operator.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :segmentFilterClauses =>
            list(GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause.t()) | nil
        }

  field(:segmentFilterClauses,
    as: GoogleApi.AnalyticsReporting.V4.Model.SegmentFilterClause,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.OrFiltersForSegment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
