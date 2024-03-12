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

defmodule GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay do
  @moduledoc """
  A change to an OrgPolicy custom constraint.

  ## Attributes

  *   `customConstraint` (*type:* `GoogleApi.PolicySimulator.V1.Model.GoogleCloudOrgpolicyV2CustomConstraint.t`, *default:* `nil`) - Optional. The new or updated custom constraint.
  *   `customConstraintParent` (*type:* `String.t`, *default:* `nil`) - Optional. Resource the constraint is attached to. Example: "organization/987654"
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customConstraint =>
            GoogleApi.PolicySimulator.V1.Model.GoogleCloudOrgpolicyV2CustomConstraint.t() | nil,
          :customConstraintParent => String.t() | nil
        }

  field(:customConstraint,
    as: GoogleApi.PolicySimulator.V1.Model.GoogleCloudOrgpolicyV2CustomConstraint
  )

  field(:customConstraintParent)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay do
  def decode(value, options) do
    GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end