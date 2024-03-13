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

defmodule GoogleApi.Notebooks.V2.Model.NetworkInterface do
  @moduledoc """
  The definition of a network interface resource attached to a VM.

  ## Attributes

  *   `network` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the VPC that this VM instance is in. Format: `projects/{project_id}/global/networks/{network_id}`
  *   `nicType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of vNIC to be used on this interface. This may be gVNIC or VirtioNet.
  *   `subnet` (*type:* `String.t`, *default:* `nil`) - Optional. The name of the subnet that this VM instance is in. Format: `projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}`
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :network => String.t() | nil,
          :nicType => String.t() | nil,
          :subnet => String.t() | nil
        }

  field(:network)
  field(:nicType)
  field(:subnet)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V2.Model.NetworkInterface do
  def decode(value, options) do
    GoogleApi.Notebooks.V2.Model.NetworkInterface.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V2.Model.NetworkInterface do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
