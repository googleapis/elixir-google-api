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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.GenerateEphemeralCertRequest do
  @moduledoc """
  Ephemeral certificate creation request.

  ## Attributes

  *   `access_token` (*type:* `String.t`, *default:* `nil`) - Optional. Access token to include in the signed certificate.
  *   `public_key` (*type:* `String.t`, *default:* `nil`) - PEM encoded public key to include in the signed certificate.
  *   `readTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Optional snapshot read timestamp to trade freshness for performance.
  *   `validDuration` (*type:* `String.t`, *default:* `nil`) - Optional. If set, it will contain the cert valid duration.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :access_token => String.t() | nil,
          :public_key => String.t() | nil,
          :readTime => DateTime.t() | nil,
          :validDuration => String.t() | nil
        }

  field(:access_token)
  field(:public_key)
  field(:readTime, as: DateTime)
  field(:validDuration)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.GenerateEphemeralCertRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.GenerateEphemeralCertRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.GenerateEphemeralCertRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
