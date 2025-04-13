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

defmodule GoogleApi.Config.V1.Model.ListDeploymentsResponse do
  @moduledoc """


  ## Attributes

  *   `deployments` (*type:* `list(GoogleApi.Config.V1.Model.Deployment.t)`, *default:* `nil`) - List of Deployments.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to be supplied to the next ListDeployments request via `page_token` to obtain the next set of results.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :deployments => list(GoogleApi.Config.V1.Model.Deployment.t()) | nil,
          :nextPageToken => String.t() | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:deployments, as: GoogleApi.Config.V1.Model.Deployment, type: :list)
  field(:nextPageToken)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Config.V1.Model.ListDeploymentsResponse do
  def decode(value, options) do
    GoogleApi.Config.V1.Model.ListDeploymentsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Config.V1.Model.ListDeploymentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
