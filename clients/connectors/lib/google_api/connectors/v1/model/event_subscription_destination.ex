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

defmodule GoogleApi.Connectors.V1.Model.EventSubscriptionDestination do
  @moduledoc """
  Message for EventSubscription Destination to act on receiving an event

  ## Attributes

  *   `endpoint` (*type:* `GoogleApi.Connectors.V1.Model.EndPoint.t`, *default:* `nil`) - OPTION 1: Hit an endpoint when we receive an event.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Service account needed for runtime plane to trigger IP workflow.
  *   `type` (*type:* `String.t`, *default:* `nil`) - type of the destination
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endpoint => GoogleApi.Connectors.V1.Model.EndPoint.t() | nil,
          :serviceAccount => String.t() | nil,
          :type => String.t() | nil
        }

  field(:endpoint, as: GoogleApi.Connectors.V1.Model.EndPoint)
  field(:serviceAccount)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.EventSubscriptionDestination do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.EventSubscriptionDestination.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.EventSubscriptionDestination do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
