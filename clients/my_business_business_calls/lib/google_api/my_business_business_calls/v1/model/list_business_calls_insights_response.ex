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

defmodule GoogleApi.MyBusinessBusinessCalls.V1.Model.ListBusinessCallsInsightsResponse do
  @moduledoc """
  Response message for ListBusinessCallsInsights.

  ## Attributes

  *   `businessCallsInsights` (*type:* `list(GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsInsights.t)`, *default:* `nil`) - A collection of business calls insights for the location.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages. Some of the metric_types (e.g, AGGREGATE_COUNT) returns a single page. For these metrics, the next_page_token will be empty.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :businessCallsInsights =>
            list(GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsInsights.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:businessCallsInsights,
    as: GoogleApi.MyBusinessBusinessCalls.V1.Model.BusinessCallsInsights,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.MyBusinessBusinessCalls.V1.Model.ListBusinessCallsInsightsResponse do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessCalls.V1.Model.ListBusinessCallsInsightsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.MyBusinessBusinessCalls.V1.Model.ListBusinessCallsInsightsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
