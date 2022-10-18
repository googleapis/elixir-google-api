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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2CustomConstraint do
  @moduledoc """
  A custom constraint defined by customers which can *only* be applied to the given resource types and organization. By creating a custom constraint, customers can applied policies of this custom constraint. *Creating a custom constraint itself does NOT apply any policy enforcement*.

  ## Attributes

  *   `actionType` (*type:* `String.t`, *default:* `nil`) - Allow or deny type.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Org policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\\d)+")'` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Detailed information about this custom policy constraint. The max length of the description is 2000 characters.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - One line display name for the UI. The max length of the display_name is 200 characters.
  *   `methodTypes` (*type:* `list(String.t)`, *default:* `nil`) - All the operations being applied for this constraint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example : "organizations/123/customConstraints/custom.createOnlyE2TypeVms" The max length is 100 characters and the min length is 1. Note that the prefix "organizations/{organization_id}/customConstraints/" is not counted.
  *   `resourceTypes` (*type:* `list(String.t)`, *default:* `nil`) - Immutable. The Resource Instance type on which this policy applies to. Format will be of the form : "/" Example: * `compute.googleapis.com/Instance`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last time this custom constraint was updated. This represents the last time that the `CreateCustomConstraint` or `UpdateCustomConstraint` RPC was called
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionType => String.t() | nil,
          :condition => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :methodTypes => list(String.t()) | nil,
          :name => String.t() | nil,
          :resourceTypes => list(String.t()) | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:actionType)
  field(:condition)
  field(:description)
  field(:displayName)
  field(:methodTypes, type: :list)
  field(:name)
  field(:resourceTypes, type: :list)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2CustomConstraint do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2CustomConstraint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2CustomConstraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
