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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates do
  @moduledoc """
  A set of DNS record updates that you should make to allow Hosting to serve secure content in response to requests against your domain name. These updates present the current state of your domain name's DNS records when Hosting last queried them, and the desired set of records that Hosting needs to see before your custom domain can be fully active.

  ## Attributes

  *   `checkTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time Hosting checked your custom domain's DNS records.
  *   `desired` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.DnsRecordSet.t)`, *default:* `nil`) - The set of DNS records Hosting needs to serve secure content on the domain.
  *   `discovered` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.DnsRecordSet.t)`, *default:* `nil`) - The set of DNS records Hosting discovered when inspecting a domain.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :checkTime => DateTime.t() | nil,
          :desired => list(GoogleApi.FirebaseHosting.V1beta1.Model.DnsRecordSet.t()) | nil,
          :discovered => list(GoogleApi.FirebaseHosting.V1beta1.Model.DnsRecordSet.t()) | nil
        }

  field(:checkTime, as: DateTime)
  field(:desired, as: GoogleApi.FirebaseHosting.V1beta1.Model.DnsRecordSet, type: :list)
  field(:discovered, as: GoogleApi.FirebaseHosting.V1beta1.Model.DnsRecordSet, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
