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

defmodule GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec do
  @moduledoc """
  Specification for a token used to generate iframes. The token specifies what data the admin is allowed to modify and the URI the iframe is allowed to communiate with.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `androidenterprise#administratorWebTokenSpec`) - 
  *   `managedConfigurations` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecManagedConfigurations.t`, *default:* `nil`) - Options for displaying the Managed Configuration page.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The URI of the parent frame hosting the iframe. To prevent XSS, the iframe may not be hosted at other URIs. This URI must be https. Use whitespaces to separate multiple parent URIs.
  *   `permission` (*type:* `list(String.t)`, *default:* `nil`) - Deprecated. Use PlaySearch.approveApps.
  *   `playSearch` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecPlaySearch.t`, *default:* `nil`) - Options for displaying the managed Play Search apps page.
  *   `privateApps` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecPrivateApps.t`, *default:* `nil`) - Options for displaying the Private Apps page.
  *   `storeBuilder` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecStoreBuilder.t`, *default:* `nil`) - Options for displaying the Organize apps page.
  *   `webApps` (*type:* `GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecWebApps.t`, *default:* `nil`) - Options for displaying the Web Apps page.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :managedConfigurations =>
            GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecManagedConfigurations.t(),
          :parent => String.t(),
          :permission => list(String.t()),
          :playSearch =>
            GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecPlaySearch.t(),
          :privateApps =>
            GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecPrivateApps.t(),
          :storeBuilder =>
            GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecStoreBuilder.t(),
          :webApps => GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecWebApps.t()
        }

  field(:kind)

  field(:managedConfigurations,
    as: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecManagedConfigurations
  )

  field(:parent)
  field(:permission, type: :list)
  field(:playSearch, as: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecPlaySearch)

  field(:privateApps,
    as: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecPrivateApps
  )

  field(:storeBuilder,
    as: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecStoreBuilder
  )

  field(:webApps, as: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpecWebApps)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.AdministratorWebTokenSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
