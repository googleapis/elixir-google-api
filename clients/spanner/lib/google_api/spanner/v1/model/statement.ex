# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Spanner.V1.Model.Statement do
  @moduledoc """
  A single DML statement.

  ## Attributes

  - paramTypes (%{optional(String.t) => GoogleApi.Spanner.V1.Model.Type.t}): It is not always possible for Cloud Spanner to infer the right SQL type
  from a JSON value.  For example, values of type `BYTES` and values
  of type `STRING` both appear in params as JSON strings.

  In these cases, `param_types` can be used to specify the exact
  SQL type for some or all of the SQL statement parameters. See the
  definition of Type for more information
  about SQL types. Defaults to `nil`.
  - params (map()): The DML string can contain parameter placeholders. A parameter
  placeholder consists of `'@'` followed by the parameter
  name. Parameter names consist of any combination of letters,
  numbers, and underscores.

  Parameters can appear anywhere that a literal value is expected.  The
  same parameter name can be used more than once, for example:
  `"WHERE id > @msg_id AND id < @msg_id + 100"`

  It is an error to execute an SQL statement with unbound parameters.

  Parameter values are specified using `params`, which is a JSON
  object whose keys are parameter names, and whose values are the
  corresponding parameter values. Defaults to `nil`.
  - sql (String.t): Required. The DML string. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :paramTypes => %{optional(String.t()) => GoogleApi.Spanner.V1.Model.Type.t()},
          :params => map(),
          :sql => String.t()
        }

  field(:paramTypes, as: GoogleApi.Spanner.V1.Model.Type, type: :map)
  field(:params, type: :map)
  field(:sql)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.Statement do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.Statement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.Statement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
