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

defmodule GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcInstance do
  @moduledoc """
  The SfdcInstance resource use to hold channels and connection config data.

  ## Attributes

  *   `authConfigId` (*type:* `list(String.t)`, *default:* `nil`) - A list of AuthConfigs that can be tried to open the channel to SFDC
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the instance is created
  *   `deleteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the instance was deleted. Empty if not deleted.
  *   `description` (*type:* `String.t`, *default:* `nil`) - A description of the sfdc instance.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User selected unique name/alias to easily reference an instance.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  *   `serviceAuthority` (*type:* `String.t`, *default:* `nil`) - URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  *   `sfdcOrgId` (*type:* `String.t`, *default:* `nil`) - The SFDC Org Id. This is defined in salesforce.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time when the instance was last updated
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authConfigId => list(String.t()) | nil,
          :createTime => DateTime.t() | nil,
          :deleteTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :serviceAuthority => String.t() | nil,
          :sfdcOrgId => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:authConfigId, type: :list)
  field(:createTime, as: DateTime)
  field(:deleteTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:name)
  field(:serviceAuthority)
  field(:sfdcOrgId)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcInstance do
  def decode(value, options) do
    GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcInstance.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Integrations.V1.Model.GoogleCloudIntegrationsV1alphaSfdcInstance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
