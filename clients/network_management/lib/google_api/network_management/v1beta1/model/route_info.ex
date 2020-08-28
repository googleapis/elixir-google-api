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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo do
  @moduledoc """
  For display only. Metadata associated with a Compute Engine route.

  ## Attributes

  *   `destIpRange` (*type:* `String.t`, *default:* `nil`) - Destination IP range of the route.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of a Compute Engine route.
  *   `instanceTags` (*type:* `list(String.t)`, *default:* `nil`) - Instance tags of the route.
  *   `networkUri` (*type:* `String.t`, *default:* `nil`) - URI of a Compute Engine network.
  *   `nextHop` (*type:* `String.t`, *default:* `nil`) - Next hop of the route.
  *   `nextHopType` (*type:* `String.t`, *default:* `nil`) - Type of next hop.
  *   `priority` (*type:* `integer()`, *default:* `nil`) - Priority of the route.
  *   `routeType` (*type:* `String.t`, *default:* `nil`) - Type of route.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI of a Compute Engine route. Dynamic route from cloud router does not have a URI. Advertised route from Google Cloud VPC to on-premises network also does not have a URI.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destIpRange => String.t(),
          :displayName => String.t(),
          :instanceTags => list(String.t()),
          :networkUri => String.t(),
          :nextHop => String.t(),
          :nextHopType => String.t(),
          :priority => integer(),
          :routeType => String.t(),
          :uri => String.t()
        }

  field(:destIpRange)
  field(:displayName)
  field(:instanceTags, type: :list)
  field(:networkUri)
  field(:nextHop)
  field(:nextHopType)
  field(:priority)
  field(:routeType)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.RouteInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
