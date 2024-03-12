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

defmodule GoogleApi.IAM.V1.Model.AccessRestrictions do
  @moduledoc """
  Access related restrictions on the workforce pool.

  ## Attributes

  *   `allowedServices` (*type:* `list(GoogleApi.IAM.V1.Model.ServiceConfig.t)`, *default:* `nil`) - Optional. Immutable. Services allowed for web sign-in with the workforce pool. If not set by default there are no restrictions.
  *   `disableProgrammaticSignin` (*type:* `boolean()`, *default:* `nil`) - Optional. Disable programmatic sign-in by disabling token issue via the Security Token API endpoint. See [Security Token Service API] (https://cloud.google.com/iam/docs/reference/sts/rest).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedServices => list(GoogleApi.IAM.V1.Model.ServiceConfig.t()) | nil,
          :disableProgrammaticSignin => boolean() | nil
        }

  field(:allowedServices, as: GoogleApi.IAM.V1.Model.ServiceConfig, type: :list)
  field(:disableProgrammaticSignin)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.AccessRestrictions do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.AccessRestrictions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.AccessRestrictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end