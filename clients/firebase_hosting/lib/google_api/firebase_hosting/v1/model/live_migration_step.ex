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

defmodule GoogleApi.FirebaseHosting.V1.Model.LiveMigrationStep do
  @moduledoc """
  A set of updates including ACME challenges and DNS records that allow Hosting to create an SSL certificate and establish project ownership for your domain name before you direct traffic to Hosting servers. Use these updates to facilitate zero downtime migrations to Hosting from other services. After you've made the recommended updates, check your custom domain's `ownershipState` and `certState`. To avoid downtime, they should be `OWNERSHIP_ACTIVE` and `CERT_ACTIVE`, respectively, before you update your `A` and `AAAA` records.

  ## Attributes

  *   `certVerification` (*type:* `GoogleApi.FirebaseHosting.V1.Model.CertVerification.t`, *default:* `nil`) - Output only. A pair of ACME challenges that Hosting's Certificate Authority (CA) can use to create an SSL cert for your domain name. Use either the DNS or HTTP challenge; it's not necessary to provide both.
  *   `dnsUpdates` (*type:* `GoogleApi.FirebaseHosting.V1.Model.DnsUpdates.t`, *default:* `nil`) - Output only. DNS updates to facilitate your domain's zero-downtime migration to Hosting.
  *   `issues` (*type:* `list(GoogleApi.FirebaseHosting.V1.Model.Status.t)`, *default:* `nil`) - Output only. Issues that prevent the current step from completing.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the live migration step, indicates whether you should work to complete the step now, in the future, or have already completed it.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certVerification => GoogleApi.FirebaseHosting.V1.Model.CertVerification.t() | nil,
          :dnsUpdates => GoogleApi.FirebaseHosting.V1.Model.DnsUpdates.t() | nil,
          :issues => list(GoogleApi.FirebaseHosting.V1.Model.Status.t()) | nil,
          :state => String.t() | nil
        }

  field(:certVerification, as: GoogleApi.FirebaseHosting.V1.Model.CertVerification)
  field(:dnsUpdates, as: GoogleApi.FirebaseHosting.V1.Model.DnsUpdates)
  field(:issues, as: GoogleApi.FirebaseHosting.V1.Model.Status, type: :list)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1.Model.LiveMigrationStep do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1.Model.LiveMigrationStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1.Model.LiveMigrationStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end