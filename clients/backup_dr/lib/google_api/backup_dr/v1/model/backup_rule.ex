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

defmodule GoogleApi.BackupDR.V1.Model.BackupRule do
  @moduledoc """
  `BackupRule` binds the backup schedule to a retention policy.

  ## Attributes

  *   `backupRetentionDays` (*type:* `integer()`, *default:* `nil`) - Required. Configures the duration for which backup data will be kept. It is defined in “days”. The value should be greater than or equal to minimum enforced retention of the backup vault.
  *   `ruleId` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The unique id of this `BackupRule`. The `rule_id` is unique per `BackupPlan`.The `rule_id` must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens. Pattern, /a-z{,62}/.
  *   `standardSchedule` (*type:* `GoogleApi.BackupDR.V1.Model.StandardSchedule.t`, *default:* `nil`) - Required. Defines a schedule that runs within the confines of a defined window of time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :backupRetentionDays => integer() | nil,
          :ruleId => String.t() | nil,
          :standardSchedule => GoogleApi.BackupDR.V1.Model.StandardSchedule.t() | nil
        }

  field(:backupRetentionDays)
  field(:ruleId)
  field(:standardSchedule, as: GoogleApi.BackupDR.V1.Model.StandardSchedule)
end

defimpl Poison.Decoder, for: GoogleApi.BackupDR.V1.Model.BackupRule do
  def decode(value, options) do
    GoogleApi.BackupDR.V1.Model.BackupRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BackupDR.V1.Model.BackupRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
