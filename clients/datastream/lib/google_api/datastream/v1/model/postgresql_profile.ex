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

defmodule GoogleApi.Datastream.V1.Model.PostgresqlProfile do
  @moduledoc """
  PostgreSQL database profile.

  ## Attributes

  *   `database` (*type:* `String.t`, *default:* `nil`) - Required. Database for the PostgreSQL connection.
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - Required. Hostname for the PostgreSQL connection.
  *   `password` (*type:* `String.t`, *default:* `nil`) - Optional. Password for the PostgreSQL connection. Mutually exclusive with the `secret_manager_stored_password` field.
  *   `port` (*type:* `integer()`, *default:* `nil`) - Port for the PostgreSQL connection, default value is 5432.
  *   `secretManagerStoredPassword` (*type:* `String.t`, *default:* `nil`) - Optional. A reference to a Secret Manager resource name storing the PostgreSQL connection password. Mutually exclusive with the `password` field.
  *   `sslConfig` (*type:* `GoogleApi.Datastream.V1.Model.PostgresqlSslConfig.t`, *default:* `nil`) - Optional. SSL configuration for the PostgreSQL connection. In case PostgresqlSslConfig is not set, the connection will use the default SSL mode, which is `prefer` (i.e. this mode will only use encryption if enabled from database side, otherwise will use unencrypted communication)
  *   `username` (*type:* `String.t`, *default:* `nil`) - Required. Username for the PostgreSQL connection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :database => String.t() | nil,
          :hostname => String.t() | nil,
          :password => String.t() | nil,
          :port => integer() | nil,
          :secretManagerStoredPassword => String.t() | nil,
          :sslConfig => GoogleApi.Datastream.V1.Model.PostgresqlSslConfig.t() | nil,
          :username => String.t() | nil
        }

  field(:database)
  field(:hostname)
  field(:password)
  field(:port)
  field(:secretManagerStoredPassword)
  field(:sslConfig, as: GoogleApi.Datastream.V1.Model.PostgresqlSslConfig)
  field(:username)
end

defimpl Poison.Decoder, for: GoogleApi.Datastream.V1.Model.PostgresqlProfile do
  def decode(value, options) do
    GoogleApi.Datastream.V1.Model.PostgresqlProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastream.V1.Model.PostgresqlProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
