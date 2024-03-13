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

defmodule GoogleApi.PrivateCA.V1.Model.NameConstraints do
  @moduledoc """
  Describes the X.509 name constraints extension, per https://tools.ietf.org/html/rfc5280#section-4.2.1.10

  ## Attributes

  *   `critical` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not the name constraints are marked critical.
  *   `excludedDnsNames` (*type:* `list(String.t)`, *default:* `nil`) - Contains excluded DNS names. Any DNS name that can be constructed by simply adding zero or more labels to the left-hand side of the name satisfies the name constraint. For example, `example.com`, `www.example.com`, `www.sub.example.com` would satisfy `example.com` while `example1.com` does not.
  *   `excludedEmailAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Contains the excluded email addresses. The value can be a particular email address, a hostname to indicate all email addresses on that host or a domain with a leading period (e.g. `.example.com`) to indicate all email addresses in that domain.
  *   `excludedIpRanges` (*type:* `list(String.t)`, *default:* `nil`) - Contains the excluded IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges are expressed in similar encoding as IPv4 addresses.
  *   `excludedUris` (*type:* `list(String.t)`, *default:* `nil`) - Contains the excluded URIs that apply to the host part of the name. The value can be a hostname or a domain with a leading period (like `.example.com`)
  *   `permittedDnsNames` (*type:* `list(String.t)`, *default:* `nil`) - Contains permitted DNS names. Any DNS name that can be constructed by simply adding zero or more labels to the left-hand side of the name satisfies the name constraint. For example, `example.com`, `www.example.com`, `www.sub.example.com` would satisfy `example.com` while `example1.com` does not.
  *   `permittedEmailAddresses` (*type:* `list(String.t)`, *default:* `nil`) - Contains the permitted email addresses. The value can be a particular email address, a hostname to indicate all email addresses on that host or a domain with a leading period (e.g. `.example.com`) to indicate all email addresses in that domain.
  *   `permittedIpRanges` (*type:* `list(String.t)`, *default:* `nil`) - Contains the permitted IP ranges. For IPv4 addresses, the ranges are expressed using CIDR notation as specified in RFC 4632. For IPv6 addresses, the ranges are expressed in similar encoding as IPv4 addresses.
  *   `permittedUris` (*type:* `list(String.t)`, *default:* `nil`) - Contains the permitted URIs that apply to the host part of the name. The value can be a hostname or a domain with a leading period (like `.example.com`)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :critical => boolean() | nil,
          :excludedDnsNames => list(String.t()) | nil,
          :excludedEmailAddresses => list(String.t()) | nil,
          :excludedIpRanges => list(String.t()) | nil,
          :excludedUris => list(String.t()) | nil,
          :permittedDnsNames => list(String.t()) | nil,
          :permittedEmailAddresses => list(String.t()) | nil,
          :permittedIpRanges => list(String.t()) | nil,
          :permittedUris => list(String.t()) | nil
        }

  field(:critical)
  field(:excludedDnsNames, type: :list)
  field(:excludedEmailAddresses, type: :list)
  field(:excludedIpRanges, type: :list)
  field(:excludedUris, type: :list)
  field(:permittedDnsNames, type: :list)
  field(:permittedEmailAddresses, type: :list)
  field(:permittedIpRanges, type: :list)
  field(:permittedUris, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PrivateCA.V1.Model.NameConstraints do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1.Model.NameConstraints.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PrivateCA.V1.Model.NameConstraints do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end