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

defmodule GoogleApi.Datastore.V1.Model.Query do
  @moduledoc """
  A query for entities.

  ## Attributes

  *   `distinctOn` (*type:* `list(GoogleApi.Datastore.V1.Model.PropertyReference.t)`, *default:* `nil`) - The properties to make distinct. The query results will contain the first result for each distinct combination of values for the given properties (if empty, all results are returned).
  *   `endCursor` (*type:* `String.t`, *default:* `nil`) - An ending point for the query results. Query cursors are returned in query result batches and [can only be used to limit the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  *   `filter` (*type:* `GoogleApi.Datastore.V1.Model.Filter.t`, *default:* `nil`) - The filter to apply.
  *   `kind` (*type:* `list(GoogleApi.Datastore.V1.Model.KindExpression.t)`, *default:* `nil`) - The kinds to query (if empty, returns entities of all kinds). Currently at most 1 kind may be specified.
  *   `limit` (*type:* `integer()`, *default:* `nil`) - The maximum number of results to return. Applies after all other constraints. Optional. Unspecified is interpreted as no limit. Must be >= 0 if specified.
  *   `offset` (*type:* `integer()`, *default:* `nil`) - The number of results to skip. Applies before limit, but after all other constraints. Optional. Must be >= 0 if specified.
  *   `order` (*type:* `list(GoogleApi.Datastore.V1.Model.PropertyOrder.t)`, *default:* `nil`) - The order to apply to the query results (if empty, order is unspecified).
  *   `projection` (*type:* `list(GoogleApi.Datastore.V1.Model.Projection.t)`, *default:* `nil`) - The projection to return. Defaults to returning all properties.
  *   `startCursor` (*type:* `String.t`, *default:* `nil`) - A starting point for the query results. Query cursors are returned in query result batches and [can only be used to continue the same query](https://cloud.google.com/datastore/docs/concepts/queries#cursors_limits_and_offsets).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :distinctOn => list(GoogleApi.Datastore.V1.Model.PropertyReference.t()) | nil,
          :endCursor => String.t() | nil,
          :filter => GoogleApi.Datastore.V1.Model.Filter.t() | nil,
          :kind => list(GoogleApi.Datastore.V1.Model.KindExpression.t()) | nil,
          :limit => integer() | nil,
          :offset => integer() | nil,
          :order => list(GoogleApi.Datastore.V1.Model.PropertyOrder.t()) | nil,
          :projection => list(GoogleApi.Datastore.V1.Model.Projection.t()) | nil,
          :startCursor => String.t() | nil
        }

  field(:distinctOn, as: GoogleApi.Datastore.V1.Model.PropertyReference, type: :list)
  field(:endCursor)
  field(:filter, as: GoogleApi.Datastore.V1.Model.Filter)
  field(:kind, as: GoogleApi.Datastore.V1.Model.KindExpression, type: :list)
  field(:limit)
  field(:offset)
  field(:order, as: GoogleApi.Datastore.V1.Model.PropertyOrder, type: :list)
  field(:projection, as: GoogleApi.Datastore.V1.Model.Projection, type: :list)
  field(:startCursor)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.Query do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.Query.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.Query do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
