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

defmodule GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest do
  @moduledoc """
  Instance verify external sync settings request.

  ## Attributes

  *   `mysqlSyncConfig` (*type:* `GoogleApi.SQLAdmin.V1.Model.MySqlSyncConfig.t`, *default:* `nil`) - Optional. MySQL-specific settings for start external sync.
  *   `syncMode` (*type:* `String.t`, *default:* `nil`) - External sync mode
  *   `verifyConnectionOnly` (*type:* `boolean()`, *default:* `nil`) - Flag to enable verifying connection only
  *   `verifyReplicationOnly` (*type:* `boolean()`, *default:* `nil`) - Optional. Flag to verify settings required by replication setup only
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mysqlSyncConfig => GoogleApi.SQLAdmin.V1.Model.MySqlSyncConfig.t() | nil,
          :syncMode => String.t() | nil,
          :verifyConnectionOnly => boolean() | nil,
          :verifyReplicationOnly => boolean() | nil
        }

  field(:mysqlSyncConfig, as: GoogleApi.SQLAdmin.V1.Model.MySqlSyncConfig)
  field(:syncMode)
  field(:verifyConnectionOnly)
  field(:verifyReplicationOnly)
end

defimpl Poison.Decoder,
  for: GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SQLAdmin.V1.Model.SqlInstancesVerifyExternalSyncSettingsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
