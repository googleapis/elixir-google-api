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

defmodule GoogleApi.BackupDR.V1.Model.FetchAccessTokenResponse do
  @moduledoc """
  Response message for FetchAccessToken.

  ## Attributes

  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - The token is valid until this time.
  *   `readLocation` (*type:* `String.t`, *default:* `nil`) - The location in bucket that can be used for reading.
  *   `token` (*type:* `String.t`, *default:* `nil`) - The downscoped token that was created.
  *   `writeLocation` (*type:* `String.t`, *default:* `nil`) - The location in bucket that can be used for writing.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :expireTime => DateTime.t() | nil,
          :readLocation => String.t() | nil,
          :token => String.t() | nil,
          :writeLocation => String.t() | nil
        }

  field(:expireTime, as: DateTime)
  field(:readLocation)
  field(:token)
  field(:writeLocation)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.FetchAccessTokenResponse do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.FetchAccessTokenResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.FetchAccessTokenResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
