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

defmodule GoogleApi.NetworkConnectivity.V1.Model.Hub do
  @moduledoc """
  A hub is a collection of spokes. A single hub can contain spokes from multiple regions. However, all of a hub's spokes must be associated with resources that reside in the same VPC network.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the hub was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of the hub.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The name of the hub. Hub names must be unique. They use the following form: `projects/{project_number}/locations/global/hubs/{hub_id}`
  *   `routingVpcs` (*type:* `list(GoogleApi.NetworkConnectivity.V1.Model.RoutingVPC.t)`, *default:* `nil`) - The VPC networks associated with this hub's spokes. This field is read-only. Network Connectivity Center automatically populates it based on the set of spokes attached to the hub.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current lifecycle state of this hub.
  *   `uniqueId` (*type:* `String.t`, *default:* `nil`) - Output only. The Google-generated UUID for the hub. This value is unique across all hub resources. If a hub is deleted and another with the same name is created, the new hub is assigned a different unique_id.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the hub was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :routingVpcs => list(GoogleApi.NetworkConnectivity.V1.Model.RoutingVPC.t()) | nil,
          :state => String.t() | nil,
          :uniqueId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:labels, type: :map)
  field(:name)
  field(:routingVpcs, as: GoogleApi.NetworkConnectivity.V1.Model.RoutingVPC, type: :list)
  field(:state)
  field(:uniqueId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.Hub do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.Hub.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.Hub do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
