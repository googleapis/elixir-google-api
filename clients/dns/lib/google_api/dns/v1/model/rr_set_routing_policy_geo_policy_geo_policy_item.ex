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

defmodule GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicyGeoPolicyItem do
  @moduledoc """
  ResourceRecordSet data for one geo location.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `dns#rRSetRoutingPolicyGeoPolicyGeoPolicyItem`) - 
  *   `location` (*type:* `String.t`, *default:* `nil`) - The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1", etc.
  *   `rrdatas` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `signatureRrdatas` (*type:* `list(String.t)`, *default:* `nil`) - DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 ip per item. .
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :location => String.t() | nil,
          :rrdatas => list(String.t()) | nil,
          :signatureRrdatas => list(String.t()) | nil
        }

  field(:kind)
  field(:location)
  field(:rrdatas, type: :list)
  field(:signatureRrdatas, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicyGeoPolicyItem do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicyGeoPolicyItem.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.RRSetRoutingPolicyGeoPolicyGeoPolicyItem do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
