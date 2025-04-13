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

defmodule GoogleApi.MigrationCenter.V1.Model.SqlServerServerFlag do
  @moduledoc """
  SQL Server server flag details.

  ## Attributes

  *   `serverFlagName` (*type:* `String.t`, *default:* `nil`) - Required. The server flag name.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Required. The server flag value set by the user.
  *   `valueInUse` (*type:* `String.t`, *default:* `nil`) - Required. The server flag actual value. If `value_in_use` is different from `value` it means that either the configuration change was not applied or it is an expected behavior. See SQL Server documentation for more details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serverFlagName => String.t() | nil,
          :value => String.t() | nil,
          :valueInUse => String.t() | nil
        }

  field(:serverFlagName)
  field(:value)
  field(:valueInUse)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.SqlServerServerFlag do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.SqlServerServerFlag.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.SqlServerServerFlag do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
