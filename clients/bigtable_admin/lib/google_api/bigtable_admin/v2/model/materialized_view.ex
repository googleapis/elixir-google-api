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

defmodule GoogleApi.BigtableAdmin.V2.Model.MaterializedView do
  @moduledoc """
  A materialized view object that can be referenced in SQL queries.

  ## Attributes

  *   `deletionProtection` (*type:* `boolean()`, *default:* `nil`) - Set to true to make the MaterializedView protected against deletion.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Optional. The etag for this materialized view. This may be sent on update requests to ensure that the client has an up-to-date value before proceeding. The server returns an ABORTED error on a mismatched etag.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. The unique name of the materialized view. Format: `projects/{project}/instances/{instance}/materializedViews/{materialized_view}`
  *   `query` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The materialized view's select query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deletionProtection => boolean() | nil,
          :etag => String.t() | nil,
          :name => String.t() | nil,
          :query => String.t() | nil
        }

  field(:deletionProtection)
  field(:etag)
  field(:name)
  field(:query)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.MaterializedView do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.MaterializedView.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.MaterializedView do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
