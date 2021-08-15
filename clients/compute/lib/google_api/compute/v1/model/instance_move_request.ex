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

defmodule GoogleApi.Compute.V1.Model.InstanceMoveRequest do
  @moduledoc """


  ## Attributes

  *   `destinationZone` (*type:* `String.t`, *default:* `nil`) - The URL of the destination zone to move the instance. This can be a full or partial URL. For example, the following are all valid URLs to a zone: - https://www.googleapis.com/compute/v1/projects/project/zones/zone - projects/project/zones/zone - zones/zone 
  *   `targetInstance` (*type:* `String.t`, *default:* `nil`) - The URL of the target instance to move. This can be a full or partial URL. For example, the following are all valid URLs to an instance: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instances/instance - projects/project/zones/zone/instances/instance - zones/zone/instances/instance 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destinationZone => String.t() | nil,
          :targetInstance => String.t() | nil
        }

  field(:destinationZone)
  field(:targetInstance)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstanceMoveRequest do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstanceMoveRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstanceMoveRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
