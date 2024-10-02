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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig do
  @moduledoc """
  Config to store data store type configuration for workspace data

  ## Attributes

  *   `dasherCustomerId` (*type:* `String.t`, *default:* `nil`) - Obfuscated Dasher customer ID.
  *   `superAdminEmailAddress` (*type:* `String.t`, *default:* `nil`) - Optional. The super admin email address for the workspace that will be used for access token generation. For now we only use it for Native Google Drive connector data ingestion.
  *   `superAdminServiceAccount` (*type:* `String.t`, *default:* `nil`) - Optional. The super admin service account for the workspace that will be used for access token generation. For now we only use it for Native Google Drive connector data ingestion.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The Google Workspace data source.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dasherCustomerId => String.t() | nil,
          :superAdminEmailAddress => String.t() | nil,
          :superAdminServiceAccount => String.t() | nil,
          :type => String.t() | nil
        }

  field(:dasherCustomerId)
  field(:superAdminEmailAddress)
  field(:superAdminServiceAccount)
  field(:type)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1alphaWorkspaceConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
