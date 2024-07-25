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

defmodule GoogleApi.Spanner.V1.Model.ReadRequest do
  @moduledoc """
  The request for Read and StreamingRead.

  ## Attributes

  *   `columns` (*type:* `list(String.t)`, *default:* `nil`) - Required. The columns of table to be returned for each row matching this request.
  *   `dataBoostEnabled` (*type:* `boolean()`, *default:* `nil`) - If this is for a partitioned read and this field is set to `true`, the request is executed with Spanner Data Boost independent compute resources. If the field is set to `true` but the request does not set `partition_token`, the API returns an `INVALID_ARGUMENT` error.
  *   `directedReadOptions` (*type:* `GoogleApi.Spanner.V1.Model.DirectedReadOptions.t`, *default:* `nil`) - Directed read options for this request.
  *   `index` (*type:* `String.t`, *default:* `nil`) - If non-empty, the name of an index on table. This index is used instead of the table primary key when interpreting key_set and sorting result rows. See key_set for further information.
  *   `keySet` (*type:* `GoogleApi.Spanner.V1.Model.KeySet.t`, *default:* `nil`) - Required. `key_set` identifies the rows to be yielded. `key_set` names the primary keys of the rows in table to be yielded, unless index is present. If index is present, then key_set instead names index keys in index. If the partition_token field is empty, rows are yielded in table primary key order (if index is empty) or index key order (if index is non-empty). If the partition_token field is not empty, rows will be yielded in an unspecified order. It is not an error for the `key_set` to name rows that do not exist in the database. Read yields nothing for nonexistent rows.
  *   `limit` (*type:* `String.t`, *default:* `nil`) - If greater than zero, only the first `limit` rows are yielded. If `limit` is zero, the default is no limit. A limit cannot be specified if `partition_token` is set.
  *   `lockHint` (*type:* `String.t`, *default:* `nil`) - Optional. Lock Hint for the request, it can only be used with read-write transactions.
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - Optional. Order for the returned rows. By default, Spanner will return result rows in primary key order except for PartitionRead requests. For applications that do not require rows to be returned in primary key (`ORDER_BY_PRIMARY_KEY`) order, setting `ORDER_BY_NO_ORDER` option allows Spanner to optimize row retrieval, resulting in lower latencies in certain cases (e.g. bulk point lookups).
  *   `partitionToken` (*type:* `String.t`, *default:* `nil`) - If present, results will be restricted to the specified partition previously created using PartitionRead(). There must be an exact match for the values of fields common to this message and the PartitionReadRequest message used to create this partition_token.
  *   `requestOptions` (*type:* `GoogleApi.Spanner.V1.Model.RequestOptions.t`, *default:* `nil`) - Common options for this request.
  *   `resumeToken` (*type:* `String.t`, *default:* `nil`) - If this request is resuming a previously interrupted read, `resume_token` should be copied from the last PartialResultSet yielded before the interruption. Doing this enables the new read to resume where the last read left off. The rest of the request parameters must exactly match the request that yielded this token.
  *   `table` (*type:* `String.t`, *default:* `nil`) - Required. The name of the table in the database to be read.
  *   `transaction` (*type:* `GoogleApi.Spanner.V1.Model.TransactionSelector.t`, *default:* `nil`) - The transaction to use. If none is provided, the default is a temporary read-only transaction with strong concurrency.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columns => list(String.t()) | nil,
          :dataBoostEnabled => boolean() | nil,
          :directedReadOptions => GoogleApi.Spanner.V1.Model.DirectedReadOptions.t() | nil,
          :index => String.t() | nil,
          :keySet => GoogleApi.Spanner.V1.Model.KeySet.t() | nil,
          :limit => String.t() | nil,
          :lockHint => String.t() | nil,
          :orderBy => String.t() | nil,
          :partitionToken => String.t() | nil,
          :requestOptions => GoogleApi.Spanner.V1.Model.RequestOptions.t() | nil,
          :resumeToken => String.t() | nil,
          :table => String.t() | nil,
          :transaction => GoogleApi.Spanner.V1.Model.TransactionSelector.t() | nil
        }

  field(:columns, type: :list)
  field(:dataBoostEnabled)
  field(:directedReadOptions, as: GoogleApi.Spanner.V1.Model.DirectedReadOptions)
  field(:index)
  field(:keySet, as: GoogleApi.Spanner.V1.Model.KeySet)
  field(:limit)
  field(:lockHint)
  field(:orderBy)
  field(:partitionToken)
  field(:requestOptions, as: GoogleApi.Spanner.V1.Model.RequestOptions)
  field(:resumeToken)
  field(:table)
  field(:transaction, as: GoogleApi.Spanner.V1.Model.TransactionSelector)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ReadRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ReadRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ReadRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
