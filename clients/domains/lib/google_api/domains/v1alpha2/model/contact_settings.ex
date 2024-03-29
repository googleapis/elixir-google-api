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

defmodule GoogleApi.Domains.V1alpha2.Model.ContactSettings do
  @moduledoc """
  Defines the contact information associated with a `Registration`. [ICANN](https://icann.org/) requires all domain names to have associated contact information. The `registrant_contact` is considered the domain's legal owner, and often the other contacts are identical.

  ## Attributes

  *   `adminContact` (*type:* `GoogleApi.Domains.V1alpha2.Model.Contact.t`, *default:* `nil`) - Required. The administrative contact for the `Registration`.
  *   `privacy` (*type:* `String.t`, *default:* `nil`) - Required. Privacy setting for the contacts associated with the `Registration`.
  *   `registrantContact` (*type:* `GoogleApi.Domains.V1alpha2.Model.Contact.t`, *default:* `nil`) - Required. The registrant contact for the `Registration`. *Caution: Anyone with access to this email address, phone number, and/or postal address can take control of the domain.* *Warning: For new `Registration`s, the registrant receives an email confirmation that they must complete within 15 days to avoid domain suspension.*
  *   `technicalContact` (*type:* `GoogleApi.Domains.V1alpha2.Model.Contact.t`, *default:* `nil`) - Required. The technical contact for the `Registration`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminContact => GoogleApi.Domains.V1alpha2.Model.Contact.t() | nil,
          :privacy => String.t() | nil,
          :registrantContact => GoogleApi.Domains.V1alpha2.Model.Contact.t() | nil,
          :technicalContact => GoogleApi.Domains.V1alpha2.Model.Contact.t() | nil
        }

  field(:adminContact, as: GoogleApi.Domains.V1alpha2.Model.Contact)
  field(:privacy)
  field(:registrantContact, as: GoogleApi.Domains.V1alpha2.Model.Contact)
  field(:technicalContact, as: GoogleApi.Domains.V1alpha2.Model.Contact)
end

defimpl Poison.Decoder, for: GoogleApi.Domains.V1alpha2.Model.ContactSettings do
  def decode(value, options) do
    GoogleApi.Domains.V1alpha2.Model.ContactSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Domains.V1alpha2.Model.ContactSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
