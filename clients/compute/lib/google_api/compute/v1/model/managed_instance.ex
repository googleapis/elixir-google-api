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

defmodule GoogleApi.Compute.V1.Model.ManagedInstance do
  @moduledoc """
  A Managed Instance resource.

  ## Attributes

  *   `currentAction` (*type:* `String.t`, *default:* `nil`) - [Output Only] The current action that the managed instance group has scheduled for the instance. Possible values: 
      - NONE The instance is running, and the managed instance group does not have any scheduled actions for this instance. 
      - CREATING The managed instance group is creating this instance. If the group fails to create this instance, it will try again until it is successful. 
      - CREATING_WITHOUT_RETRIES The managed instance group is attempting to create this instance only once. If the group fails to create this instance, it does not try again and the group's targetSize value is decreased instead. 
      - RECREATING The managed instance group is recreating this instance. 
      - DELETING The managed instance group is permanently deleting this instance. 
      - ABANDONING The managed instance group is abandoning this instance. The instance will be removed from the instance group and from any target pools that are associated with this group. 
      - RESTARTING The managed instance group is restarting the instance. 
      - REFRESHING The managed instance group is applying configuration changes to the instance without stopping it. For example, the group can update the target pool list for an instance without stopping that instance. 
      - VERIFYING The managed instance group has created the instance and it is in the process of being verified.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output only] The unique identifier for this resource. This field is empty when instance does not exist.
  *   `instance` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL of the instance. The URL can exist even if the instance has not yet been created.
  *   `instanceHealth` (*type:* `list(GoogleApi.Compute.V1.Model.ManagedInstanceInstanceHealth.t)`, *default:* `nil`) - [Output Only] Health state of the instance per health-check.
  *   `instanceStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the instance. This field is empty when the instance does not exist.
  *   `lastAttempt` (*type:* `GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt.t`, *default:* `nil`) - [Output Only] Information about the last attempt to create or delete the instance.
  *   `preservedStateFromConfig` (*type:* `GoogleApi.Compute.V1.Model.PreservedState.t`, *default:* `nil`) - [Output Only] Preserved state applied from per-instance config for this instance.
  *   `preservedStateFromPolicy` (*type:* `GoogleApi.Compute.V1.Model.PreservedState.t`, *default:* `nil`) - [Output Only] Preserved state generated based on stateful policy for this instance.
  *   `version` (*type:* `GoogleApi.Compute.V1.Model.ManagedInstanceVersion.t`, *default:* `nil`) - [Output Only] Intended version of this instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentAction => String.t(),
          :id => String.t(),
          :instance => String.t(),
          :instanceHealth => list(GoogleApi.Compute.V1.Model.ManagedInstanceInstanceHealth.t()),
          :instanceStatus => String.t(),
          :lastAttempt => GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt.t(),
          :preservedStateFromConfig => GoogleApi.Compute.V1.Model.PreservedState.t(),
          :preservedStateFromPolicy => GoogleApi.Compute.V1.Model.PreservedState.t(),
          :version => GoogleApi.Compute.V1.Model.ManagedInstanceVersion.t()
        }

  field(:currentAction)
  field(:id)
  field(:instance)

  field(:instanceHealth, as: GoogleApi.Compute.V1.Model.ManagedInstanceInstanceHealth, type: :list)

  field(:instanceStatus)
  field(:lastAttempt, as: GoogleApi.Compute.V1.Model.ManagedInstanceLastAttempt)
  field(:preservedStateFromConfig, as: GoogleApi.Compute.V1.Model.PreservedState)
  field(:preservedStateFromPolicy, as: GoogleApi.Compute.V1.Model.PreservedState)
  field(:version, as: GoogleApi.Compute.V1.Model.ManagedInstanceVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ManagedInstance do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ManagedInstance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ManagedInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
