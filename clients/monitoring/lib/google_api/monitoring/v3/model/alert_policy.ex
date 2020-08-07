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

defmodule GoogleApi.Monitoring.V3.Model.AlertPolicy do
  @moduledoc """
  A description of the conditions under which some aspect of your system is considered to be "unhealthy" and the ways to notify people or services about this state. For an overview of alert policies, see Introduction to Alerting (https://cloud.google.com/monitoring/alerts/).

  ## Attributes

  *   `combiner` (*type:* `String.t`, *default:* `nil`) - How to combine the results of multiple conditions to determine if an incident should be opened. If condition_time_series_query_language is present, this must be COMBINE_UNSPECIFIED.
  *   `conditions` (*type:* `list(GoogleApi.Monitoring.V3.Model.Condition.t)`, *default:* `nil`) - A list of conditions for the policy. The conditions are combined by AND or OR according to the combiner field. If the combined conditions evaluate to true, then an incident is created. A policy can have from one to six conditions. If condition_time_series_query_language is present, it must be the only condition.
  *   `creationRecord` (*type:* `GoogleApi.Monitoring.V3.Model.MutationRecord.t`, *default:* `nil`) - A read-only record of the creation of the alerting policy. If provided in a call to create or update, this field will be ignored.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - A short name or phrase used to identify the policy in dashboards, notifications, and incidents. To avoid confusion, don't use the same display name for multiple policies in the same project. The name is limited to 512 Unicode characters.
  *   `documentation` (*type:* `GoogleApi.Monitoring.V3.Model.Documentation.t`, *default:* `nil`) - Documentation that is included with notifications and incidents related to this policy. Best practice is for the documentation to include information to help responders understand, mitigate, escalate, and correct the underlying problems detected by the alerting policy. Notification channels that have limited capacity might not show this documentation.
  *   `enabled` (*type:* `boolean()`, *default:* `nil`) - Whether or not the policy is enabled. On write, the default interpretation if unset is that the policy is enabled. On read, clients should not make any assumption about the state if it has not been populated. The field should always be populated on List and Get operations, unless a field projection has been specified that strips it out.
  *   `mutationRecord` (*type:* `GoogleApi.Monitoring.V3.Model.MutationRecord.t`, *default:* `nil`) - A read-only record of the most recent change to the alerting policy. If provided in a call to create or update, this field will be ignored.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required if the policy exists. The resource name for this policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] [ALERT_POLICY_ID] is assigned by Stackdriver Monitoring when the policy is created. When calling the alertPolicies.create method, do not include the name field in the alerting policy passed as part of the request.
  *   `notificationChannels` (*type:* `list(String.t)`, *default:* `nil`) - Identifies the notification channels to which notifications should be sent when incidents are opened or closed or when new violations occur on an already opened incident. Each element of this array corresponds to the name field in each of the NotificationChannel objects that are returned from the ListNotificationChannels method. The format of the entries in this field is: projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] 
  *   `userLabels` (*type:* `map()`, *default:* `nil`) - User-supplied key/value data to be used for organizing and identifying the AlertPolicy objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  *   `validity` (*type:* `GoogleApi.Monitoring.V3.Model.Status.t`, *default:* `nil`) - Read-only description of how the alert policy is invalid. OK if the alert policy is valid. If not OK, the alert policy will not generate incidents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :combiner => String.t(),
          :conditions => list(GoogleApi.Monitoring.V3.Model.Condition.t()),
          :creationRecord => GoogleApi.Monitoring.V3.Model.MutationRecord.t(),
          :displayName => String.t(),
          :documentation => GoogleApi.Monitoring.V3.Model.Documentation.t(),
          :enabled => boolean(),
          :mutationRecord => GoogleApi.Monitoring.V3.Model.MutationRecord.t(),
          :name => String.t(),
          :notificationChannels => list(String.t()),
          :userLabels => map(),
          :validity => GoogleApi.Monitoring.V3.Model.Status.t()
        }

  field(:combiner)
  field(:conditions, as: GoogleApi.Monitoring.V3.Model.Condition, type: :list)
  field(:creationRecord, as: GoogleApi.Monitoring.V3.Model.MutationRecord)
  field(:displayName)
  field(:documentation, as: GoogleApi.Monitoring.V3.Model.Documentation)
  field(:enabled)
  field(:mutationRecord, as: GoogleApi.Monitoring.V3.Model.MutationRecord)
  field(:name)
  field(:notificationChannels, type: :list)
  field(:userLabels, type: :map)
  field(:validity, as: GoogleApi.Monitoring.V3.Model.Status)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.AlertPolicy do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.AlertPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.AlertPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
