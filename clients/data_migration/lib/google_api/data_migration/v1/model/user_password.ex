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

defmodule GoogleApi.DataMigration.V1.Model.UserPassword do
  @moduledoc """
  The username/password for a database user. Used for specifying initial users at cluster creation time.

  ## Attributes

  *   `password` (*type:* `String.t`, *default:* `nil`) - The initial password for the user.
  *   `passwordSet` (*type:* `boolean()`, *default:* `nil`) - Output only. Indicates if the initial_user.password field has been set.
  *   `user` (*type:* `String.t`, *default:* `nil`) - The database username.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :password => String.t() | nil,
          :passwordSet => boolean() | nil,
          :user => String.t() | nil
        }

  field(:password)
  field(:passwordSet)
  field(:user)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.UserPassword do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.UserPassword.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.UserPassword do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
