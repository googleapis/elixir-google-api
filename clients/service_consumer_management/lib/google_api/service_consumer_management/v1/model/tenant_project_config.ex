# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig do
  @moduledoc """
  This structure defines a tenant project to be added to the specified tenancy unit and its initial configuration and properties. A project lien will be created for the tenant project to prevent the tenant project from being deleted accidentally. The lien will be deleted as part of tenant project removal.

  ## Attributes

  - billingConfig (BillingConfig): Billing account properties.  Billing account must be specified. Defaults to: `null`.
  - folder (String.t): Folder where project in this tenancy unit must be located This folder must have been previously created with proper permissions for the caller to create and configure a project in it. Valid folder resource names have the format &#x60;folders/{folder_number}&#x60; (for example, &#x60;folders/123456&#x60;). Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): Labels that will be applied to this project. Defaults to: `null`.
  - serviceAccountConfig (ServiceAccountConfig): Configuration for IAM service account on tenant project. Defaults to: `null`.
  - services ([String.t]): Google Cloud API names of services that will be activated on this project during provisioning.  If any of these services can not be activated, request will fail. For example: &#39;compute.googleapis.com&#39;,&#39;cloudfunctions.googleapis.com&#39; Defaults to: `null`.
  - tenantProjectPolicy (TenantProjectPolicy): Describes ownership and policies for the new tenant project. Required. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingConfig => GoogleApi.ServiceConsumerManagement.V1.Model.BillingConfig.t(),
          :folder => any(),
          :labels => map(),
          :serviceAccountConfig =>
            GoogleApi.ServiceConsumerManagement.V1.Model.ServiceAccountConfig.t(),
          :services => list(any()),
          :tenantProjectPolicy =>
            GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectPolicy.t()
        }

  field(:billingConfig, as: GoogleApi.ServiceConsumerManagement.V1.Model.BillingConfig)
  field(:folder)
  field(:labels, type: :map)

  field(:serviceAccountConfig,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.ServiceAccountConfig
  )

  field(:services, type: :list)

  field(:tenantProjectPolicy, as: GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectPolicy)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenantProjectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
