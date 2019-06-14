# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AndroidDeviceProvisioning.V1.Model.Company do
  @moduledoc """
  A reseller, vendor, or customer in the zero-touch reseller and customer APIs.

  ## Attributes

  - adminEmails (list(String.t)): Input only. Optional. Email address of customer's users in the admin role.
  Each email address must be associated with a Google Account. Defaults to `nil`.
  - companyId (String.t): Output only. The ID of the company. Assigned by the server. Defaults to `nil`.
  - companyName (String.t): Required. The name of the company. For example _XYZ Corp_. Displayed to the
  company's employees in the zero-touch enrollment portal. Defaults to `nil`.
  - name (String.t): Output only. The API resource name of the company. The resource name is one
  of the following formats:

  * `partners/[PARTNER_ID]/customers/[CUSTOMER_ID]`
  * `partners/[PARTNER_ID]/vendors/[VENDOR_ID]`
  * `partners/[PARTNER_ID]/vendors/[VENDOR_ID]/customers/[CUSTOMER_ID]`

  Assigned by the server. Defaults to `nil`.
  - ownerEmails (list(String.t)): Input only. Email address of customer's users in the owner role. At least
  one `owner_email` is required. Each email address must be associated with a
  Google Account. Owners share the same access as admins but can also add,
  delete, and edit your organization's portal users. Defaults to `nil`.
  - termsStatus (String.t): Output only. Whether any user from the company has accepted the latest
  Terms of Service (ToS). See
  TermsStatus. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminEmails => list(String.t()),
          :companyId => String.t(),
          :companyName => String.t(),
          :name => String.t(),
          :ownerEmails => list(String.t()),
          :termsStatus => String.t()
        }

  field(:adminEmails, type: :list)
  field(:companyId)
  field(:companyName)
  field(:name)
  field(:ownerEmails, type: :list)
  field(:termsStatus)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Company do
  def decode(value, options) do
    GoogleApi.AndroidDeviceProvisioning.V1.Model.Company.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidDeviceProvisioning.V1.Model.Company do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
