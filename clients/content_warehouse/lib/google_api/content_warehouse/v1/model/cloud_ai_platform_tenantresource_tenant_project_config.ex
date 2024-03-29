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

defmodule GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceTenantProjectConfig do
  @moduledoc """
  The identity to configure a tenant project.

  ## Attributes

  *   `billingConfig` (*type:* `GoogleApi.ContentWarehouse.V1.Model.GoogleApiServiceconsumermanagementV1BillingConfig.t`, *default:* `nil`) - Input/Output [Required]. The billing account properties to create the tenant project.
  *   `folder` (*type:* `String.t`, *default:* `nil`) - Input/Output [Required]. The folder that holds tenant projects and folder-level permissions will be automatically granted to all tenant projects under the folder. Note: the valid folder format is `folders/{folder_number}`.
  *   `policyBindings` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleApiServiceconsumermanagementV1PolicyBinding.t)`, *default:* `nil`) - Input/Output [Required]. The policy bindings that are applied to the tenant project during creation. At least one binding must have the role `roles/owner` with either `user` or `group` type.
  *   `services` (*type:* `list(String.t)`, *default:* `nil`) - Input/Output [Required]. The API services that are enabled on the tenant project during creation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :billingConfig =>
            GoogleApi.ContentWarehouse.V1.Model.GoogleApiServiceconsumermanagementV1BillingConfig.t()
            | nil,
          :folder => String.t() | nil,
          :policyBindings =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GoogleApiServiceconsumermanagementV1PolicyBinding.t()
            )
            | nil,
          :services => list(String.t()) | nil
        }

  field(:billingConfig,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleApiServiceconsumermanagementV1BillingConfig
  )

  field(:folder)

  field(:policyBindings,
    as: GoogleApi.ContentWarehouse.V1.Model.GoogleApiServiceconsumermanagementV1PolicyBinding,
    type: :list
  )

  field(:services, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceTenantProjectConfig do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceTenantProjectConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ContentWarehouse.V1.Model.CloudAiPlatformTenantresourceTenantProjectConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
