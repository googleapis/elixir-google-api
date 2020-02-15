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

defmodule GoogleApi.Compute.V1.Model.InstanceGroupManagersApplyUpdatesRequest do
  @moduledoc """
  InstanceGroupManagers.applyUpdatesToInstances

  ## Attributes

  *   `instances` (*type:* `list(String.t)`, *default:* `nil`) - The list of URLs of one or more instances for which you want to apply updates. Each URL can be a full URL or a partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
  *   `minimalAction` (*type:* `String.t`, *default:* `nil`) - The minimal action that you want to perform on each instance during the update:  
      - REPLACE: At minimum, delete the instance and create it again. 
      - RESTART: Stop the instance and start it again. 
      - REFRESH: Do not stop the instance. 
      - NONE: Do not disrupt the instance at all.  By default, the minimum action is NONE. If your update requires a more disruptive action than you set with this flag, the necessary action is performed to execute the update.
  *   `mostDisruptiveAllowedAction` (*type:* `String.t`, *default:* `nil`) - The most disruptive action that you want to perform on each instance during the update:  
      - REPLACE: Delete the instance and create it again. 
      - RESTART: Stop the instance and start it again. 
      - REFRESH: Do not stop the instance. 
      - NONE: Do not disrupt the instance at all.  By default, the most disruptive allowed action is REPLACE. If your update requires a more disruptive action than you set with this flag, the update request will fail.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances => list(String.t()),
          :minimalAction => String.t(),
          :mostDisruptiveAllowedAction => String.t()
        }

  field(:instances, type: :list)
  field(:minimalAction)
  field(:mostDisruptiveAllowedAction)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagersApplyUpdatesRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceGroupManagersApplyUpdatesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceGroupManagersApplyUpdatesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
