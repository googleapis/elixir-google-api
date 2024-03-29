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

defmodule GoogleApi.BigQuery.V2.Model.ScriptStackFrame do
  @moduledoc """
  Represents the location of the statement/expression being evaluated. Line and column numbers are defined as follows: - Line and column numbers start with one. That is, line 1 column 1 denotes the start of the script. - When inside a stored procedure, all line/column numbers are relative to the procedure body, not the script in which the procedure was defined. - Start/end positions exclude leading/trailing comments and whitespace. The end position always ends with a ";", when present. - Multi-byte Unicode characters are treated as just one column. - If the original script (or procedure definition) contains TAB characters, a tab "snaps" the indentation forward to the nearest multiple of 8 characters, plus 1. For example, a TAB on column 1, 2, 3, 4, 5, 6 , or 8 will advance the next character to column 9. A TAB on column 9, 10, 11, 12, 13, 14, 15, or 16 will advance the next character to column 17.

  ## Attributes

  *   `endColumn` (*type:* `integer()`, *default:* `nil`) - Output only. One-based end column.
  *   `endLine` (*type:* `integer()`, *default:* `nil`) - Output only. One-based end line.
  *   `procedureId` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the active procedure, empty if in a top-level script.
  *   `startColumn` (*type:* `integer()`, *default:* `nil`) - Output only. One-based start column.
  *   `startLine` (*type:* `integer()`, *default:* `nil`) - Output only. One-based start line.
  *   `text` (*type:* `String.t`, *default:* `nil`) - Output only. Text of the current statement/expression.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endColumn => integer() | nil,
          :endLine => integer() | nil,
          :procedureId => String.t() | nil,
          :startColumn => integer() | nil,
          :startLine => integer() | nil,
          :text => String.t() | nil
        }

  field(:endColumn)
  field(:endLine)
  field(:procedureId)
  field(:startColumn)
  field(:startLine)
  field(:text)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.ScriptStackFrame do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.ScriptStackFrame.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.ScriptStackFrame do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
