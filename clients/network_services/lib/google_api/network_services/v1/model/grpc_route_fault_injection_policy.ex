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

defmodule GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicy do
  @moduledoc """
  The specification for fault injection introduced into traffic to test the resiliency of clients to destination service failure. As part of fault injection, when clients send requests to a destination, delays can be introduced on a percentage of requests before sending those requests to the destination service. Similarly requests from clients can be aborted by for a percentage of requests.

  ## Attributes

  *   `abort` (*type:* `GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicyAbort.t`, *default:* `nil`) - The specification for aborting to client requests.
  *   `delay` (*type:* `GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicyDelay.t`, *default:* `nil`) - The specification for injecting delay to client requests.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abort =>
            GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicyAbort.t() | nil,
          :delay =>
            GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicyDelay.t() | nil
        }

  field(:abort, as: GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicyAbort)
  field(:delay, as: GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicyDelay)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicy do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRouteFaultInjectionPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
