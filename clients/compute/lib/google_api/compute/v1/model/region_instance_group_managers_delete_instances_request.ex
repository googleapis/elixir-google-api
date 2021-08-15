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

defmodule GoogleApi.Compute.V1.Model.RegionInstanceGroupManagersDeleteInstancesRequest do
  @moduledoc """


  ## Attributes

  *   `instances` (*type:* `list(String.t)`, *default:* `nil`) - The URLs of one or more instances to delete. This can be a full URL or a partial URL, such as zones/[ZONE]/instances/[INSTANCE_NAME].
  *   `skipInstancesOnValidationError` (*type:* `boolean()`, *default:* `nil`) - Specifies whether the request should proceed despite the inclusion of instances that are not members of the group or that are already in the process of being deleted or abandoned. If this field is set to `false` and such an instance is specified in the request, the operation fails. The operation always fails if the request contains a malformed instance URL or a reference to an instance that exists in a zone or region other than the group's zone or region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :instances => list(String.t()) | nil,
          :skipInstancesOnValidationError => boolean() | nil
        }

  field(:instances, type: :list)
  field(:skipInstancesOnValidationError)
end

defimpl Poison.Decoder,
  for: GoogleApi.Compute.V1.Model.RegionInstanceGroupManagersDeleteInstancesRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.RegionInstanceGroupManagersDeleteInstancesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Compute.V1.Model.RegionInstanceGroupManagersDeleteInstancesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
