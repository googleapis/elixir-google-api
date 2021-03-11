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

defmodule GoogleApi.Datastore.V1.Model.QueryResultBatch do
  @moduledoc """
  A batch of results produced by a query.

  ## Attributes

  *   `endCursor` (*type:* `String.t`, *default:* `nil`) - A cursor that points to the position after the last result in the batch.
  *   `entityResultType` (*type:* `String.t`, *default:* `nil`) - The result type for every entity in `entity_results`.
  *   `entityResults` (*type:* `list(GoogleApi.Datastore.V1.Model.EntityResult.t)`, *default:* `nil`) - The results for this batch.
  *   `moreResults` (*type:* `String.t`, *default:* `nil`) - The state of the query after the current batch.
  *   `skippedCursor` (*type:* `String.t`, *default:* `nil`) - A cursor that points to the position after the last skipped result. Will be set when `skipped_results` != 0.
  *   `skippedResults` (*type:* `integer()`, *default:* `nil`) - The number of results skipped, typically because of an offset.
  *   `snapshotVersion` (*type:* `String.t`, *default:* `nil`) - The version number of the snapshot this batch was returned from. This applies to the range of results from the query's `start_cursor` (or the beginning of the query if no cursor was given) to this batch's `end_cursor` (not the query's `end_cursor`). In a single transaction, subsequent query result batches for the same query can have a greater snapshot version number. Each batch's snapshot version is valid for all preceding batches. The value will be zero for eventually consistent queries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endCursor => String.t() | nil,
          :entityResultType => String.t() | nil,
          :entityResults => list(GoogleApi.Datastore.V1.Model.EntityResult.t()) | nil,
          :moreResults => String.t() | nil,
          :skippedCursor => String.t() | nil,
          :skippedResults => integer() | nil,
          :snapshotVersion => String.t() | nil
        }

  field(:endCursor)
  field(:entityResultType)
  field(:entityResults, as: GoogleApi.Datastore.V1.Model.EntityResult, type: :list)
  field(:moreResults)
  field(:skippedCursor)
  field(:skippedResults)
  field(:snapshotVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.QueryResultBatch do
  def decode(value, options) do
    GoogleApi.Datastore.V1.Model.QueryResultBatch.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.QueryResultBatch do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
