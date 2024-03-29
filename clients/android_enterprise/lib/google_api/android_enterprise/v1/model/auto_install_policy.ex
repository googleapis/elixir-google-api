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

defmodule GoogleApi.AndroidEnterprise.V1.Model.AutoInstallPolicy do
  @moduledoc """


  ## Attributes

  *   `autoInstallConstraint` (*type:* `list(GoogleApi.AndroidEnterprise.V1.Model.AutoInstallConstraint.t)`, *default:* `nil`) - The constraints for auto-installing the app. You can specify a maximum of one constraint.
  *   `autoInstallMode` (*type:* `String.t`, *default:* `nil`) - The auto-install mode. If unset, defaults to "doNotAutoInstall". An app is automatically installed regardless of a set maintenance window.
  *   `autoInstallPriority` (*type:* `integer()`, *default:* `nil`) - The priority of the install, as an unsigned integer. A lower number means higher priority.
  *   `minimumVersionCode` (*type:* `integer()`, *default:* `nil`) - The minimum version of the app. If a lower version of the app is installed, then the app will be auto-updated according to the auto-install constraints, instead of waiting for the regular auto-update. You can set a minimum version code for at most 20 apps per device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoInstallConstraint =>
            list(GoogleApi.AndroidEnterprise.V1.Model.AutoInstallConstraint.t()) | nil,
          :autoInstallMode => String.t() | nil,
          :autoInstallPriority => integer() | nil,
          :minimumVersionCode => integer() | nil
        }

  field(:autoInstallConstraint,
    as: GoogleApi.AndroidEnterprise.V1.Model.AutoInstallConstraint,
    type: :list
  )

  field(:autoInstallMode)
  field(:autoInstallPriority)
  field(:minimumVersionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.AutoInstallPolicy do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.AutoInstallPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.AutoInstallPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
