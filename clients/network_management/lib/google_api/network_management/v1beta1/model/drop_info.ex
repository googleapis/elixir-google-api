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

defmodule GoogleApi.NetworkManagement.V1beta1.Model.DropInfo do
  @moduledoc """
  Details of the final state "drop" and associated resource.

  ## Attributes

  *   `cause` (*type:* `String.t`, *default:* `nil`) - Cause that the packet is dropped.
  *   `destinationIp` (*type:* `String.t`, *default:* `nil`) - Destination IP address of the dropped packet (if relevant).
  *   `region` (*type:* `String.t`, *default:* `nil`) - Region of the dropped packet (if relevant).
  *   `resourceUri` (*type:* `String.t`, *default:* `nil`) - URI of the resource that caused the drop.
  *   `sourceIp` (*type:* `String.t`, *default:* `nil`) - Source IP address of the dropped packet (if relevant).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cause => String.t() | nil,
          :destinationIp => String.t() | nil,
          :region => String.t() | nil,
          :resourceUri => String.t() | nil,
          :sourceIp => String.t() | nil
        }

  field(:cause)
  field(:destinationIp)
  field(:region)
  field(:resourceUri)
  field(:sourceIp)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkManagement.V1beta1.Model.DropInfo do
  def decode(value, options) do
    GoogleApi.NetworkManagement.V1beta1.Model.DropInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkManagement.V1beta1.Model.DropInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
