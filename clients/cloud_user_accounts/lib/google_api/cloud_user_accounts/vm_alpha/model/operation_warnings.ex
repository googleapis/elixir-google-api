# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudUserAccounts.Vm_alpha.Model.OperationWarnings do
  @moduledoc """
  

  ## Attributes

  - code (String): [Output Only] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response. Defaults to: `null`.
    - Enum - one of [CLEANUP_FAILED, DEPRECATED_RESOURCE_USED, DISK_SIZE_LARGER_THAN_IMAGE_SIZE, INJECTED_KERNELS_DEPRECATED, NEXT_HOP_ADDRESS_NOT_ASSIGNED, NEXT_HOP_CANNOT_IP_FORWARD, NEXT_HOP_INSTANCE_NOT_FOUND, NEXT_HOP_INSTANCE_NOT_ON_NETWORK, NEXT_HOP_NOT_RUNNING, NOT_CRITICAL_ERROR, NO_RESULTS_ON_PAGE, REQUIRED_TOS_AGREEMENT, RESOURCE_NOT_DELETED, SINGLE_INSTANCE_PROPERTY_TEMPLATE, UNREACHABLE]
  - data (List[OperationData]): [Output Only] Metadata about this warning in key: value format. For example: \&quot;data\&quot;: [ { \&quot;key\&quot;: \&quot;scope\&quot;, \&quot;value\&quot;: \&quot;zones/us-east1-d\&quot; } Defaults to: `null`.
  - message (String): [Output Only] A human-readable description of the warning code. Defaults to: `null`.
  """

  defstruct [
    :"code",
    :"data",
    :"message"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.CloudUserAccounts.Vm_alpha.Model.OperationWarnings do
  import GoogleApi.CloudUserAccounts.Vm_alpha.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :list, GoogleApi.CloudUserAccounts.Vm_alpha.Model.OperationData, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudUserAccounts.Vm_alpha.Model.OperationWarnings do
  def encode(value, options) do
    GoogleApi.CloudUserAccounts.Vm_alpha.Deserializer.serialize_non_nil(value, options)
  end
end

