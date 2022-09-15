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

defmodule GoogleApi.ServiceManagement.V1.Model.Quota do
  @moduledoc """
  Quota configuration helps to achieve fairness and budgeting in service usage. The metric based quota configuration works this way: - The service configuration defines a set of metrics. - For API calls, the quota.metric_rules maps methods to metrics with corresponding costs. - The quota.limits defines limits on the metrics, which will be used for quota checks at runtime. An example quota configuration in yaml format: quota: limits: - name: apiWriteQpsPerProject metric: library.googleapis.com/write_calls unit: "1/min/{project}" # rate limit for consumer projects values: STANDARD: 10000 (The metric rules bind all methods to the read_calls metric, except for the UpdateBook and DeleteBook methods. These two methods are mapped to the write_calls metric, with the UpdateBook method consuming at twice rate as the DeleteBook method.) metric_rules: - selector: "*" metric_costs: library.googleapis.com/read_calls: 1 - selector: google.example.library.v1.LibraryService.UpdateBook metric_costs: library.googleapis.com/write_calls: 2 - selector: google.example.library.v1.LibraryService.DeleteBook metric_costs: library.googleapis.com/write_calls: 1 Corresponding Metric definition: metrics: - name: library.googleapis.com/read_calls display_name: Read requests metric_kind: DELTA value_type: INT64 - name: library.googleapis.com/write_calls display_name: Write requests metric_kind: DELTA value_type: INT64 

  ## Attributes

  *   `limits` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.QuotaLimit.t)`, *default:* `nil`) - List of QuotaLimit definitions for the service.
  *   `metricRules` (*type:* `list(GoogleApi.ServiceManagement.V1.Model.MetricRule.t)`, *default:* `nil`) - List of MetricRule definitions, each one mapping a selected method to one or more metrics.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :limits => list(GoogleApi.ServiceManagement.V1.Model.QuotaLimit.t()) | nil,
          :metricRules => list(GoogleApi.ServiceManagement.V1.Model.MetricRule.t()) | nil
        }

  field(:limits, as: GoogleApi.ServiceManagement.V1.Model.QuotaLimit, type: :list)
  field(:metricRules, as: GoogleApi.ServiceManagement.V1.Model.MetricRule, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Quota do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Quota.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Quota do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
