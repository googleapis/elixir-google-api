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

defmodule GoogleApi.ProximityBeacon.V1beta1.Model.ListBeaconsResponse do
  @moduledoc """
  Response that contains list beacon results and pagination help.

  ## Attributes

  *   `beacons` (*type:* `list(GoogleApi.ProximityBeacon.V1beta1.Model.Beacon.t)`, *default:* `nil`) - The beacons that matched the search criteria.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - An opaque pagination token that the client may provide in their next
      request to retrieve the next page of results.
  *   `totalCount` (*type:* `String.t`, *default:* `nil`) - Estimate of the total number of beacons matched by the query. Higher
      values may be less accurate.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :beacons => list(GoogleApi.ProximityBeacon.V1beta1.Model.Beacon.t()),
          :nextPageToken => String.t(),
          :totalCount => String.t()
        }

  field(:beacons, as: GoogleApi.ProximityBeacon.V1beta1.Model.Beacon, type: :list)
  field(:nextPageToken)
  field(:totalCount)
end

defimpl Poison.Decoder, for: GoogleApi.ProximityBeacon.V1beta1.Model.ListBeaconsResponse do
  def decode(value, options) do
    GoogleApi.ProximityBeacon.V1beta1.Model.ListBeaconsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ProximityBeacon.V1beta1.Model.ListBeaconsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
