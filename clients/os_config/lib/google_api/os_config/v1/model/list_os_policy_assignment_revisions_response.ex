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

defmodule GoogleApi.OSConfig.V1.Model.ListOSPolicyAssignmentRevisionsResponse do
  @moduledoc """
  A response message for listing all revisions for a OS policy assignment.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The pagination token to retrieve the next page of OS policy assignment revisions.
  *   `osPolicyAssignments` (*type:* `list(GoogleApi.OSConfig.V1.Model.OSPolicyAssignment.t)`, *default:* `nil`) - The OS policy assignment revisions
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :osPolicyAssignments => list(GoogleApi.OSConfig.V1.Model.OSPolicyAssignment.t()) | nil
        }

  field(:nextPageToken)
  field(:osPolicyAssignments, as: GoogleApi.OSConfig.V1.Model.OSPolicyAssignment, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.ListOSPolicyAssignmentRevisionsResponse do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.ListOSPolicyAssignmentRevisionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.ListOSPolicyAssignmentRevisionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
