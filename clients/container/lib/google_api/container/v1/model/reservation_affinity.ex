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

defmodule GoogleApi.Container.V1.Model.ReservationAffinity do
  @moduledoc """
  [ReservationAffinity](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources) is the configuration of desired reservation which instances could take capacity from.

  ## Attributes

  *   `consumeReservationType` (*type:* `String.t`, *default:* `nil`) - Corresponds to the type of reservation consumption.
  *   `key` (*type:* `String.t`, *default:* `nil`) - Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify "compute.googleapis.com/reservation-name" as the key and specify the name of your reservation as its value.
  *   `values` (*type:* `list(String.t)`, *default:* `nil`) - Corresponds to the label value(s) of reservation resource(s).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consumeReservationType => String.t() | nil,
          :key => String.t() | nil,
          :values => list(String.t()) | nil
        }

  field(:consumeReservationType)
  field(:key)
  field(:values, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.ReservationAffinity do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.ReservationAffinity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.ReservationAffinity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
