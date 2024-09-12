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

defmodule GoogleApi.AccessContextManager.V1.Model.ReauthSettings do
  @moduledoc """
  Stores settings related to Google Cloud Session Length including session duration, the type of challenge (i.e. method) they should face when their session expires, and other related settings.

  ## Attributes

  *   `maxInactivity` (*type:* `String.t`, *default:* `nil`) - Optional. How long a user is allowed to take between actions before a new access token must be issued. Presently only set for Cloud Apps.
  *   `reauthMethod` (*type:* `String.t`, *default:* `nil`) - Optional. Reauth method when users GCP session is up.
  *   `sessionLength` (*type:* `String.t`, *default:* `nil`) - Optional. The session length. Setting this field to zero is equal to disabling. Reauth. Also can set infinite session by flipping the enabled bit to false below. If use_oidc_max_age is true, for OIDC apps, the session length will be the minimum of this field and OIDC max_age param.
  *   `sessionLengthEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Big red button to turn off GCSL. When false, all fields set above will be disregarded and the session length is basically infinite.
  *   `useOidcMaxAge` (*type:* `boolean()`, *default:* `nil`) - Optional. Only useful for OIDC apps. When false, the OIDC max_age param, if passed in the authentication request will be ignored. When true, the re-auth period will be the minimum of the session_length field and the max_age OIDC param.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxInactivity => String.t() | nil,
          :reauthMethod => String.t() | nil,
          :sessionLength => String.t() | nil,
          :sessionLengthEnabled => boolean() | nil,
          :useOidcMaxAge => boolean() | nil
        }

  field(:maxInactivity)
  field(:reauthMethod)
  field(:sessionLength)
  field(:sessionLengthEnabled)
  field(:useOidcMaxAge)
end

defimpl Poison.Decoder, for: GoogleApi.AccessContextManager.V1.Model.ReauthSettings do
  def decode(value, options) do
    GoogleApi.AccessContextManager.V1.Model.ReauthSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AccessContextManager.V1.Model.ReauthSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
