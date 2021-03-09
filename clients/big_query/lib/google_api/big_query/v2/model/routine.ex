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

defmodule GoogleApi.BigQuery.V2.Model.Routine do
  @moduledoc """
  A user-defined function or a stored procedure.

  ## Attributes

  *   `arguments` (*type:* `list(GoogleApi.BigQuery.V2.Model.Argument.t)`, *default:* `nil`) - Optional.
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this routine was created, in milliseconds since the epoch.
  *   `definitionBody` (*type:* `String.t`, *default:* `nil`) - Required. The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\\n", y))` The definition_body is `concat(x, "\\n", y)` (\\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\\n";\\n'` The definition_body is `return "\\n";\\n` Note that both \\n are replaced with linebreaks.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. [Experimental] The description of the routine if defined.
  *   `determinismLevel` (*type:* `String.t`, *default:* `nil`) - Optional. [Experimental] The determinism level of the JavaScript UDF if defined.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash of this resource.
  *   `importedLibraries` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  *   `language` (*type:* `String.t`, *default:* `nil`) - Optional. Defaults to "SQL".
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this routine was last modified, in milliseconds since the epoch.
  *   `returnType` (*type:* `GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t`, *default:* `nil`) - Optional if language = "SQL"; required otherwise. If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  *   `routineReference` (*type:* `GoogleApi.BigQuery.V2.Model.RoutineReference.t`, *default:* `nil`) - Required. Reference describing the ID of this routine.
  *   `routineType` (*type:* `String.t`, *default:* `nil`) - Required. The type of routine.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arguments => list(GoogleApi.BigQuery.V2.Model.Argument.t()) | nil,
          :creationTime => String.t() | nil,
          :definitionBody => String.t() | nil,
          :description => String.t() | nil,
          :determinismLevel => String.t() | nil,
          :etag => String.t() | nil,
          :importedLibraries => list(String.t()) | nil,
          :language => String.t() | nil,
          :lastModifiedTime => String.t() | nil,
          :returnType => GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t() | nil,
          :routineReference => GoogleApi.BigQuery.V2.Model.RoutineReference.t() | nil,
          :routineType => String.t() | nil
        }

  field(:arguments, as: GoogleApi.BigQuery.V2.Model.Argument, type: :list)
  field(:creationTime)
  field(:definitionBody)
  field(:description)
  field(:determinismLevel)
  field(:etag)
  field(:importedLibraries, type: :list)
  field(:language)
  field(:lastModifiedTime)
  field(:returnType, as: GoogleApi.BigQuery.V2.Model.StandardSqlDataType)
  field(:routineReference, as: GoogleApi.BigQuery.V2.Model.RoutineReference)
  field(:routineType)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Routine do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Routine.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Routine do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
