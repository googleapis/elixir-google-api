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

defmodule GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Policy do
  @moduledoc """
  Defines a Cloud Organization `Policy` which is used to specify `Constraints` for configurations of Cloud Platform resources.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, "projects/123/policies/compute.disableSerialPortAccess". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  *   `spec` (*type:* `GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec.t`, *default:* `nil`) - Basic information about the Organization Policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :spec => GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec.t() | nil
        }

  field(:name)
  field(:spec, as: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2PolicySpec)
end

defimpl Poison.Decoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Policy do
  def decode(value, options) do
    GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OrgPolicy.V2.Model.GoogleCloudOrgpolicyV2Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
