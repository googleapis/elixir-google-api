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

defmodule GoogleApi.Datastore.V1.Model.RunAggregationQueryResponse do
  @moduledoc """
  The response for Datastore.RunAggregationQuery.

  ## Attributes

  *   `batch` (*type:* `GoogleApi.Datastore.V1.Model.AggregationResultBatch.t`, *default:* `nil`) - A batch of aggregation results. Always present.
  *   `explainMetrics` (*type:* `GoogleApi.Datastore.V1.Model.ExplainMetrics.t`, *default:* `nil`) - Query explain metrics. This is only present when the RunAggregationQueryRequest.explain_options is provided, and it is sent only once with the last response in the stream.
  *   `query` (*type:* `GoogleApi.Datastore.V1.Model.AggregationQuery.t`, *default:* `nil`) - The parsed form of the `GqlQuery` from the request, if it was set.
  *   `transaction` (*type:* `String.t`, *default:* `nil`) - The identifier of the transaction that was started as part of this RunAggregationQuery request. Set only when ReadOptions.new_transaction was set in RunAggregationQueryRequest.read_options.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batch => GoogleApi.Datastore.V1.Model.AggregationResultBatch.t() | nil,
          :explainMetrics => GoogleApi.Datastore.V1.Model.ExplainMetrics.t() | nil,
          :query => GoogleApi.Datastore.V1.Model.AggregationQuery.t() | nil,
          :transaction => String.t() | nil
        }

  field(:batch, as: GoogleApi.Datastore.V1.Model.AggregationResultBatch)
  field(:explainMetrics, as: GoogleApi.Datastore.V1.Model.ExplainMetrics)
  field(:query, as: GoogleApi.Datastore.V1.Model.AggregationQuery)
  field(:transaction)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.RunAggregationQueryResponse do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.RunAggregationQueryResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.RunAggregationQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
