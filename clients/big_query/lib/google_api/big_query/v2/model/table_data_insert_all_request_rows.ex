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

defmodule GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows do
  @moduledoc """
  Data for a single insertion row.

  ## Attributes

  *   `insertId` (*type:* `String.t`, *default:* `nil`) - Insertion ID for best-effort deduplication. This feature is not recommended, and users seeking stronger insertion semantics are encouraged to use other mechanisms such as the BigQuery Write API.
  *   `json` (*type:* `GoogleApi.BigQuery.V2.Model.JsonObject.t`, *default:* `nil`) - Data for a single row.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :insertId => String.t() | nil,
          :json => GoogleApi.BigQuery.V2.Model.JsonObject.t() | nil
        }

  field(:insertId)
  field(:json, as: GoogleApi.BigQuery.V2.Model.JsonObject)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableDataInsertAllRequestRows do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
