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

defmodule GoogleApi.CloudDeploy.V1.Model.SkaffoldSupportedCondition do
  @moduledoc """
  SkaffoldSupportedCondition contains information about when support for the release's version of Skaffold ends.

  ## Attributes

  *   `maintenanceModeTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this release's version of Skaffold will enter maintenance mode.
  *   `skaffoldSupportState` (*type:* `String.t`, *default:* `nil`) - The Skaffold support state for this release's version of Skaffold.
  *   `status` (*type:* `boolean()`, *default:* `nil`) - True if the version of Skaffold used by this release is supported.
  *   `supportExpirationTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which this release's version of Skaffold will no longer be supported.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maintenanceModeTime => DateTime.t() | nil,
          :skaffoldSupportState => String.t() | nil,
          :status => boolean() | nil,
          :supportExpirationTime => DateTime.t() | nil
        }

  field(:maintenanceModeTime, as: DateTime)
  field(:skaffoldSupportState)
  field(:status)
  field(:supportExpirationTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.SkaffoldSupportedCondition do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.SkaffoldSupportedCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.SkaffoldSupportedCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
