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

defmodule GoogleApi.Datastream.V1.Model.OracleProfile do
  @moduledoc """
  Oracle database profile.

  ## Attributes

  *   `connectionAttributes` (*type:* `map()`, *default:* `nil`) - Connection string attributes
  *   `databaseService` (*type:* `String.t`, *default:* `nil`) - Required. Database for the Oracle connection.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - Required. Hostname for the Oracle connection.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Required. Password for the Oracle connection.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Port for the Oracle connection, default value is 1521.
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. Username for the Oracle connection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :connectionAttributes => map() | nil,
          :databaseService => String.t() | nil,
          :hostname => String.t() | nil,
          :password => String.t() | nil,
          :port => integer() | nil,
          :username => String.t() | nil
        }

  field(:connectionAttributes, type: :map)
  field(:databaseService)
  field(:hostname)
  field(:password)
  field(:port)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.OracleProfile do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.OracleProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.OracleProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
