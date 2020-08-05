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

defmodule GoogleApi.ServiceNetworking.V1.Model.AddRolesRequest do
  @moduledoc """
  Request for AddRoles to allow Service Producers to add roles in the shared VPC host project for them to use.

  ## Attributes

  *   `consumerNetwork` (*type:* `String.t`, *default:* `nil`) - Required. The network that the consumer is using to connect with services. Must be in the form of projects/{project}/global/networks/{network} {project} is a project number, as in '12345' {network} is a network name.
  *   `policyBinding` (*type:* `list(GoogleApi.ServiceNetworking.V1.Model.PolicyBinding.t)`, *default:* `nil`) - Required. List of policy bindings to add to shared VPC host project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumerNetwork => String.t(),
          :policyBinding => list(GoogleApi.ServiceNetworking.V1.Model.PolicyBinding.t())
        }

  field(:consumerNetwork)
  field(:policyBinding, as: GoogleApi.ServiceNetworking.V1.Model.PolicyBinding, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceNetworking.V1.Model.AddRolesRequest do
  def decode(value, options) do
    GoogleApi.ServiceNetworking.V1.Model.AddRolesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceNetworking.V1.Model.AddRolesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
