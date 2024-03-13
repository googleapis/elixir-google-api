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

defmodule GoogleApi.FirebaseHosting.V1beta1.Model.CustomDomainMetadata do
  @moduledoc """
  Metadata associated with a`CustomDomain` operation.

  ## Attributes

  *   `certState` (*type:* `String.t`, *default:* `nil`) - The `CertState` of the domain name's SSL certificate.
  *   `hostState` (*type:* `String.t`, *default:* `nil`) - The `HostState` of the domain name this `CustomDomain` refers to.
  *   `issues` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.Status.t)`, *default:* `nil`) - A list of issues that are currently preventing Hosting from completing the operation. These are generally DNS-related issues that Hosting encounters when querying a domain name's records or attempting to mint an SSL certificate.
  *   `liveMigrationSteps` (*type:* `list(GoogleApi.FirebaseHosting.V1beta1.Model.LiveMigrationStep.t)`, *default:* `nil`) - A set of DNS record updates and ACME challenges that allow you to transition domain names to Firebase Hosting with zero downtime. These updates allow Hosting to create an SSL certificate and establish ownership for your custom domain before Hosting begins serving traffic on it. If your domain name is already in active use with another provider, add one of the challenges and make the recommended DNS updates. After adding challenges and adjusting DNS records as necessary, wait for the `ownershipState` to be `OWNERSHIP_ACTIVE` and the `certState` to be `CERT_ACTIVE` before sending traffic to Hosting.
  *   `ownershipState` (*type:* `String.t`, *default:* `nil`) - The `OwnershipState` of the domain name this `CustomDomain` refers to.
  *   `quickSetupUpdates` (*type:* `GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates.t`, *default:* `nil`) - A set of DNS record updates that allow Hosting to serve secure content on your domain name. The record type determines the update's purpose: - `A` and `AAAA`: Updates your domain name's IP addresses so that they direct traffic to Hosting servers. - `TXT`: Updates ownership permissions on your domain name, letting Hosting know that your custom domain's project has permission to perfrom actions for that domain name. - `CAA`: Updates your domain name's list of authorized Certificate Authorities (CAs). Only present if you have existing `CAA` records that prohibit Hosting's CA from minting certs for your domain name. These updates include all DNS changes you'll need to get started with Hosting, but, if made all at once, can result in a brief period of downtime for your domain name--while Hosting creates and uploads an SSL cert, for example. If you'd like to add your domain name to Hosting without downtime, complete the `liveMigrationSteps` first, before making the remaining updates in this field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certState => String.t() | nil,
          :hostState => String.t() | nil,
          :issues => list(GoogleApi.FirebaseHosting.V1beta1.Model.Status.t()) | nil,
          :liveMigrationSteps =>
            list(GoogleApi.FirebaseHosting.V1beta1.Model.LiveMigrationStep.t()) | nil,
          :ownershipState => String.t() | nil,
          :quickSetupUpdates => GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates.t() | nil
        }

  field(:certState)
  field(:hostState)
  field(:issues, as: GoogleApi.FirebaseHosting.V1beta1.Model.Status, type: :list)

  field(:liveMigrationSteps,
    as: GoogleApi.FirebaseHosting.V1beta1.Model.LiveMigrationStep,
    type: :list
  )

  field(:ownershipState)
  field(:quickSetupUpdates, as: GoogleApi.FirebaseHosting.V1beta1.Model.DnsUpdates)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.CustomDomainMetadata do
  def decode(value, options) do
    GoogleApi.FirebaseHosting.V1beta1.Model.CustomDomainMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseHosting.V1beta1.Model.CustomDomainMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end