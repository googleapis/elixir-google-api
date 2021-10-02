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

defmodule GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReport do
  @moduledoc """
  A report of the OS policy assignment status for a given instance.

  ## Attributes

  *   `instance` (*type:* `String.t`, *default:* `nil`) - The Compute Engine VM instance name.
  *   `lastRunId` (*type:* `String.t`, *default:* `nil`) - Unique identifier of the last attempted run to apply the OS policies associated with this assignment on the VM. This ID is logged by the OS Config agent while applying the OS policies associated with this assignment on the VM. NOTE: If the service is unable to successfully connect to the agent for this run, then this id will not be available in the agent logs.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The `OSPolicyAssignmentReport` API resource name. Format: `projects/{project_number}/locations/{location}/instances/{instance_id}/osPolicyAssignments/{os_policy_assignment_id}/report`
  *   `osPolicyAssignment` (*type:* `String.t`, *default:* `nil`) - Reference to the `OSPolicyAssignment` API resource that the `OSPolicy` belongs to. Format: `projects/{project_number}/locations/{location}/osPolicyAssignments/{os_policy_assignment_id@revision_id}`
  *   `osPolicyCompliances` (*type:* `list(GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReportOSPolicyCompliance.t)`, *default:* `nil`) - Compliance data for each `OSPolicy` that is applied to the VM.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp for when the report was last generated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instance => String.t() | nil,
          :lastRunId => String.t() | nil,
          :name => String.t() | nil,
          :osPolicyAssignment => String.t() | nil,
          :osPolicyCompliances =>
            list(GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReportOSPolicyCompliance.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:instance)
  field(:lastRunId)
  field(:name)
  field(:osPolicyAssignment)

  field(:osPolicyCompliances,
    as: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReportOSPolicyCompliance,
    type: :list
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReport do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReport.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.OSPolicyAssignmentReport do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
