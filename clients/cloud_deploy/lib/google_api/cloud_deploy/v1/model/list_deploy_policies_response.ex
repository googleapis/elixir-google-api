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

defmodule GoogleApi.CloudDeploy.V1.Model.ListDeployPoliciesResponse do
  @moduledoc """
  The response object from `ListDeployPolicies`.

  ## Attributes

  *   `deployPolicies` (*type:* `list(GoogleApi.CloudDeploy.V1.Model.DeployPolicy.t)`, *default:* `nil`) - The `DeployPolicy` objects.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployPolicies => list(GoogleApi.CloudDeploy.V1.Model.DeployPolicy.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:deployPolicies, as: GoogleApi.CloudDeploy.V1.Model.DeployPolicy, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.ListDeployPoliciesResponse do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.ListDeployPoliciesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.ListDeployPoliciesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
