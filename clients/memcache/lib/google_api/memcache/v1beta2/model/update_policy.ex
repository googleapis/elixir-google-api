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

defmodule GoogleApi.Memcache.V1beta2.Model.UpdatePolicy do
  @moduledoc """
  Maintenance policy applicable to instance updates.

  ## Attributes

  *   `channel` (*type:* `String.t`, *default:* `nil`) - Optional. Relative scheduling channel applied to resource.
  *   `denyMaintenancePeriods` (*type:* `list(GoogleApi.Memcache.V1beta2.Model.DenyMaintenancePeriod.t)`, *default:* `nil`) - Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. User can specify zero or more non-overlapping deny periods. For V1, Maximum number of deny_maintenance_periods is expected to be one.
  *   `window` (*type:* `GoogleApi.Memcache.V1beta2.Model.MaintenanceWindow.t`, *default:* `nil`) - Optional. Maintenance window that is applied to resources covered by this policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :channel => String.t(),
          :denyMaintenancePeriods =>
            list(GoogleApi.Memcache.V1beta2.Model.DenyMaintenancePeriod.t()),
          :window => GoogleApi.Memcache.V1beta2.Model.MaintenanceWindow.t()
        }

  field(:channel)

  field(:denyMaintenancePeriods,
    as: GoogleApi.Memcache.V1beta2.Model.DenyMaintenancePeriod,
    type: :list
  )

  field(:window, as: GoogleApi.Memcache.V1beta2.Model.MaintenanceWindow)
end

defimpl Poison.Decoder, for: GoogleApi.Memcache.V1beta2.Model.UpdatePolicy do
  def decode(value, options) do
    GoogleApi.Memcache.V1beta2.Model.UpdatePolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Memcache.V1beta2.Model.UpdatePolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
