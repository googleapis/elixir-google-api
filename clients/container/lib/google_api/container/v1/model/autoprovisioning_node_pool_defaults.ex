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

defmodule GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults do
  @moduledoc """
  AutoprovisioningNodePoolDefaults contains defaults for a node pool created
  by NAP.

  ## Attributes

  *   `management` (*type:* `GoogleApi.Container.V1.Model.NodeManagement.t`, *default:* `nil`) - Specifies the node management options for NAP created node-pools.
  *   `oauthScopes` (*type:* `list(String.t)`, *default:* `nil`) - Scopes that are used by NAP when creating node pools. If oauth_scopes are
      specified, service_account should be empty.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Platform Service Account to be used by the node VMs. If
      service_account is specified, scopes should be empty.
  *   `upgradeSettings` (*type:* `GoogleApi.Container.V1.Model.UpgradeSettings.t`, *default:* `nil`) - Specifies the upgrade settings for NAP created node pools
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :management => GoogleApi.Container.V1.Model.NodeManagement.t(),
          :oauthScopes => list(String.t()),
          :serviceAccount => String.t(),
          :upgradeSettings => GoogleApi.Container.V1.Model.UpgradeSettings.t()
        }

  field(:management, as: GoogleApi.Container.V1.Model.NodeManagement)
  field(:oauthScopes, type: :list)
  field(:serviceAccount)
  field(:upgradeSettings, as: GoogleApi.Container.V1.Model.UpgradeSettings)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.AutoprovisioningNodePoolDefaults do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
