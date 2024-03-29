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

defmodule GoogleApi.TrafficDirector.V3.Model.DynamicScopedRouteConfigs do
  @moduledoc """
  [#next-free-field: 7]

  ## Attributes

  *   `clientStatus` (*type:* `String.t`, *default:* `nil`) - The client status of this resource. [#not-implemented-hide:]
  *   `errorState` (*type:* `GoogleApi.TrafficDirector.V3.Model.UpdateFailureState.t`, *default:* `nil`) - Set if the last update failed, cleared after the next successful update. The ``error_state`` field contains the rejected version of this particular resource along with the reason and timestamp. For successfully updated or acknowledged resource, this field should be empty. [#not-implemented-hide:]
  *   `lastUpdated` (*type:* `DateTime.t`, *default:* `nil`) - The timestamp when the scoped route config set was last updated.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name assigned to the scoped route configurations.
  *   `scopedRouteConfigs` (*type:* `list(map())`, *default:* `nil`) - The scoped route configurations.
  *   `versionInfo` (*type:* `String.t`, *default:* `nil`) - This is the per-resource version information. This version is currently taken from the :ref:`version_info ` field at the time that the scoped routes configuration was loaded.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clientStatus => String.t() | nil,
          :errorState => GoogleApi.TrafficDirector.V3.Model.UpdateFailureState.t() | nil,
          :lastUpdated => DateTime.t() | nil,
          :name => String.t() | nil,
          :scopedRouteConfigs => list(map()) | nil,
          :versionInfo => String.t() | nil
        }

  field(:clientStatus)
  field(:errorState, as: GoogleApi.TrafficDirector.V3.Model.UpdateFailureState)
  field(:lastUpdated, as: DateTime)
  field(:name)
  field(:scopedRouteConfigs, type: :list)
  field(:versionInfo)
end

defimpl Poison.Decoder, for: GoogleApi.TrafficDirector.V3.Model.DynamicScopedRouteConfigs do
  def decode(value, options) do
    GoogleApi.TrafficDirector.V3.Model.DynamicScopedRouteConfigs.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TrafficDirector.V3.Model.DynamicScopedRouteConfigs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
