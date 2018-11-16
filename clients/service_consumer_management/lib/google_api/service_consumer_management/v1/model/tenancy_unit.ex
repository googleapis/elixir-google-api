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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit do
  @moduledoc """
  Representation of a tenancy unit.

  ## Attributes

  - consumer (String.t): @OutputOnly Cloud resource name of the consumer of this service. For example &#39;projects/123456&#39;. Defaults to: `null`.
  - createTime (DateTime.t): @OutputOnly The time this tenancy unit was created. Defaults to: `null`.
  - name (String.t): Globally unique identifier of this tenancy unit \&quot;services/{service}/{collection id}/{resource id}/tenancyUnits/{unit}\&quot; Defaults to: `null`.
  - service (String.t): @OutputOnly Google Cloud API name of the service owning this tenancy unit. For example &#39;serviceconsumermanagement.googleapis.com&#39;. Defaults to: `null`.
  - tenantResources ([TenantResource]): Resources constituting the tenancy unit. There can be at most 512 tenant resources in a tenancy unit. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumer => any(),
          :createTime => DateTime.t(),
          :name => any(),
          :service => any(),
          :tenantResources =>
            list(GoogleApi.ServiceConsumerManagement.V1.Model.TenantResource.t())
        }

  field(:consumer)
  field(:createTime, as: DateTime)
  field(:name)
  field(:service)

  field(
    :tenantResources,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.TenantResource,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.TenancyUnit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
