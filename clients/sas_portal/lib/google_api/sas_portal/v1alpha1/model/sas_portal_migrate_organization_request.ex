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

defmodule GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationRequest do
  @moduledoc """
  Request for [MigrateOrganization]. [spectrum.sas.portal.v1alpha1.Provisioning.MigrateOrganization]. GCP Project, Organization Info, and caller's GAIA ID should be retrieved from the RPC handler, and used to check authorization on SAS Portal organization and to create GCP Projects.

  ## Attributes

  *   `organizationId` (*type:* `String.t`, *default:* `nil`) - Required. Id of the SAS organization to be migrated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :organizationId => String.t() | nil
        }

  field(:organizationId)
end

defimpl Poison.Decoder,
  for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationRequest do
  def decode(value, options) do
    GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SASPortal.V1alpha1.Model.SasPortalMigrateOrganizationRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
