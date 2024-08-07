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

defmodule GoogleApi.APIM.V1alpha.Model.ApiObservation do
  @moduledoc """
  Message describing ApiObservation object

  ## Attributes

  *   `apiOperationCount` (*type:* `String.t`, *default:* `nil`) - The number of observed API Operations.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Create time stamp
  *   `hostname` (*type:* `String.t`, *default:* `nil`) - The hostname of requests processed for this Observation.
  *   `lastEventDetectedTime` (*type:* `DateTime.t`, *default:* `nil`) - Last event detected time stamp
  *   `name` (*type:* `String.t`, *default:* `nil`) - Identifier. Name of resource
  *   `serverIps` (*type:* `list(String.t)`, *default:* `nil`) - The IP address (IPv4 or IPv6) of the origin server that the request was sent to. This field can include port information. Examples: `"192.168.1.1"`, `"10.0.0.1:80"`, `"FE80::0202:B3FF:FE1E:8329"`.
  *   `sourceLocations` (*type:* `list(String.t)`, *default:* `nil`) - Location of the Observation Source, for example "us-central1" or "europe-west1."
  *   `style` (*type:* `String.t`, *default:* `nil`) - Style of ApiObservation
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - User-defined tags to organize and sort
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Update time stamp
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiOperationCount => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :hostname => String.t() | nil,
          :lastEventDetectedTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :serverIps => list(String.t()) | nil,
          :sourceLocations => list(String.t()) | nil,
          :style => String.t() | nil,
          :tags => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:apiOperationCount)
  field(:createTime, as: DateTime)
  field(:hostname)
  field(:lastEventDetectedTime, as: DateTime)
  field(:name)
  field(:serverIps, type: :list)
  field(:sourceLocations, type: :list)
  field(:style)
  field(:tags, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.APIM.V1alpha.Model.ApiObservation do
  def decode(value, options) do
    GoogleApi.APIM.V1alpha.Model.ApiObservation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.APIM.V1alpha.Model.ApiObservation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
