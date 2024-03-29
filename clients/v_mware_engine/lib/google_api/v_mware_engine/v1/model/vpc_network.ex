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

defmodule GoogleApi.VMwareEngine.V1.Model.VpcNetwork do
  @moduledoc """
  Represents a VMware Engine VPC network that is managed by a VMware Engine network resource.

  ## Attributes

  *   `network` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the service VPC network this VMware Engine network is attached to. For example: `projects/123123/global/networks/my-network`
  *   `type` (*type:* `String.t`, *default:* `nil`) - Output only. Type of VPC network (INTRANET, INTERNET, or GOOGLE_CLOUD)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :network => String.t() | nil,
          :type => String.t() | nil
        }

  field(:network)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.VMwareEngine.V1.Model.VpcNetwork do
  def decode(value, options) do
    GoogleApi.VMwareEngine.V1.Model.VpcNetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMwareEngine.V1.Model.VpcNetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
