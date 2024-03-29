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

defmodule GoogleApi.VMwareEngine.V1.Model.DnsBindPermission do
  @moduledoc """
  DnsBindPermission resource that contains the accounts having the consumer DNS bind permission on the corresponding intranet VPC of the consumer project.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Output only. The name of the resource which stores the users/service accounts having the permission to bind to the corresponding intranet VPC of the consumer project. DnsBindPermission is a global resource and location can only be global. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/dnsBindPermission`
  *   `principals` (*type:* `list(GoogleApi.VMwareEngine.V1.Model.Principal.t)`, *default:* `nil`) - Output only. Users/Service accounts which have access for binding on the intranet VPC project corresponding to the consumer project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :principals => list(GoogleApi.VMwareEngine.V1.Model.Principal.t()) | nil
        }

  field(:name)
  field(:principals, as: GoogleApi.VMwareEngine.V1.Model.Principal, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.DnsBindPermission do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.DnsBindPermission.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.DnsBindPermission do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
