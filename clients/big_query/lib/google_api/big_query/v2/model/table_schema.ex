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

defmodule GoogleApi.BigQuery.V2.Model.TableSchema do
  @moduledoc """
  Schema of a table

  ## Attributes

  *   `fields` (*type:* `list(GoogleApi.BigQuery.V2.Model.TableFieldSchema.t)`, *default:* `nil`) - Describes the fields in a table.
  *   `foreignTypeInfo` (*type:* `GoogleApi.BigQuery.V2.Model.ForeignTypeInfo.t`, *default:* `nil`) - Optional. Specifies metadata of the foreign data type definition in field schema (TableFieldSchema.foreign_type_definition).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fields => list(GoogleApi.BigQuery.V2.Model.TableFieldSchema.t()) | nil,
          :foreignTypeInfo => GoogleApi.BigQuery.V2.Model.ForeignTypeInfo.t() | nil
        }

  field(:fields, as: GoogleApi.BigQuery.V2.Model.TableFieldSchema, type: :list)
  field(:foreignTypeInfo, as: GoogleApi.BigQuery.V2.Model.ForeignTypeInfo)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.TableSchema do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.TableSchema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.TableSchema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
