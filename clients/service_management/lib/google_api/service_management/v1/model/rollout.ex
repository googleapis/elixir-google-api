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

defmodule GoogleApi.ServiceManagement.V1.Model.Rollout do
  @moduledoc """
  A rollout resource that defines how service configuration versions are pushed to control plane systems. Typically, you create a new version of the service config, and then create a Rollout to push the service config.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Creation time of the rollout. Readonly.
  *   `createdBy` (*type:* `String.t`, *default:* `nil`) - This field is deprecated and will be deleted. Please remove usage of this field.
  *   `deleteServiceStrategy` (*type:* `GoogleApi.ServiceManagement.V1.Model.DeleteServiceStrategy.t`, *default:* `nil`) - The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  *   `rolloutId` (*type:* `String.t`, *default:* `nil`) - Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - The name of the service associated with this Rollout.
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status of this rollout. Readonly. In case of a failed rollout, the system will automatically rollback to the current Rollout version. Readonly.
  *   `trafficPercentStrategy` (*type:* `GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy.t`, *default:* `nil`) - Google Service Control selects service configurations based on traffic percentage.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :createdBy => String.t(),
          :deleteServiceStrategy =>
            GoogleApi.ServiceManagement.V1.Model.DeleteServiceStrategy.t(),
          :rolloutId => String.t(),
          :serviceName => String.t(),
          :status => String.t(),
          :trafficPercentStrategy =>
            GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy.t()
        }

  field(:createTime, as: DateTime)
  field(:createdBy)
  field(:deleteServiceStrategy, as: GoogleApi.ServiceManagement.V1.Model.DeleteServiceStrategy)
  field(:rolloutId)
  field(:serviceName)
  field(:status)
  field(:trafficPercentStrategy, as: GoogleApi.ServiceManagement.V1.Model.TrafficPercentStrategy)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceManagement.V1.Model.Rollout do
  def decode(value, options) do
    GoogleApi.ServiceManagement.V1.Model.Rollout.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceManagement.V1.Model.Rollout do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
