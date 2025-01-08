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

defmodule GoogleApi.NetworkConnectivity.V1.Model.HubStatusEntry do
  @moduledoc """
  A hub status entry represents the status of a set of propagated Private Service Connect connections grouped by certain fields.

  ## Attributes

  *   `count` (*type:* `integer()`, *default:* `nil`) - The number of propagated Private Service Connect connections with this status. If the `group_by` field was not set in the request message, the value of this field is 1.
  *   `groupBy` (*type:* `String.t`, *default:* `nil`) - The fields that this entry is grouped by. This has the same value as the `group_by` field in the request message.
  *   `pscPropagationStatus` (*type:* `GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus.t`, *default:* `nil`) - The Private Service Connect propagation status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => integer() | nil,
          :groupBy => String.t() | nil,
          :pscPropagationStatus =>
            GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus.t() | nil
        }

  field(:count)
  field(:groupBy)
  field(:pscPropagationStatus, as: GoogleApi.NetworkConnectivity.V1.Model.PscPropagationStatus)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.HubStatusEntry do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.HubStatusEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.HubStatusEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
