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

defmodule GoogleApi.BigQuery.V2.Model.MaterializedView do
  @moduledoc """
  A materialized view considered for a query job.

  ## Attributes

  *   `chosen` (*type:* `boolean()`, *default:* `nil`) - Whether the materialized view is chosen for the query. A materialized view can be chosen to rewrite multiple parts of the same query. If a materialized view is chosen to rewrite any part of the query, then this field is true, even if the materialized view was not chosen to rewrite others parts.
  *   `estimatedBytesSaved` (*type:* `String.t`, *default:* `nil`) - If present, specifies a best-effort estimation of the bytes saved by using the materialized view rather than its base tables.
  *   `rejectedReason` (*type:* `String.t`, *default:* `nil`) - If present, specifies the reason why the materialized view was not chosen for the query.
  *   `tableReference` (*type:* `GoogleApi.BigQuery.V2.Model.TableReference.t`, *default:* `nil`) - The candidate materialized view.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chosen => boolean() | nil,
          :estimatedBytesSaved => String.t() | nil,
          :rejectedReason => String.t() | nil,
          :tableReference => GoogleApi.BigQuery.V2.Model.TableReference.t() | nil
        }

  field(:chosen)
  field(:estimatedBytesSaved)
  field(:rejectedReason)
  field(:tableReference, as: GoogleApi.BigQuery.V2.Model.TableReference)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.MaterializedView do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.MaterializedView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.MaterializedView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
