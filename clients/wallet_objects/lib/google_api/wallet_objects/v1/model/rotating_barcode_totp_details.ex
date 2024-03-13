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

defmodule GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetails do
  @moduledoc """
  Configuration for the time-based OTP substitutions. See https://tools.ietf.org/html/rfc6238

  ## Attributes

  *   `algorithm` (*type:* `String.t`, *default:* `nil`) - The TOTP algorithm used to generate the OTP.
  *   `parameters` (*type:* `list(GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters.t)`, *default:* `nil`) - The TOTP parameters for each of the {totp_value_*} substitutions. The TotpParameters at index n is used for the {totp_value_n} substitution.
  *   `periodMillis` (*type:* `String.t`, *default:* `nil`) - The time interval used for the TOTP value generation, in milliseconds.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :algorithm => String.t() | nil,
          :parameters =>
            list(GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters.t())
            | nil,
          :periodMillis => String.t() | nil
        }

  field(:algorithm)

  field(:parameters,
    as: GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetailsTotpParameters,
    type: :list
  )

  field(:periodMillis)
end

defimpl Poison.Decoder, for: GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetails do
  def decode(value, options) do
    GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WalletObjects.V1.Model.RotatingBarcodeTotpDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end