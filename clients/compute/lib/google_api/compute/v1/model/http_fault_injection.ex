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

defmodule GoogleApi.Compute.V1.Model.HttpFaultInjection do
  @moduledoc """
  The specification for fault injection introduced into traffic to test the resiliency of clients to backend service failure. As part of fault injection, when clients send requests to a backend service, delays can be introduced by Loadbalancer on a percentage of requests before sending those request to the backend service. Similarly requests from clients can be aborted by the Loadbalancer for a percentage of requests.

  ## Attributes

  *   `abort` (*type:* `GoogleApi.Compute.V1.Model.HttpFaultAbort.t`, *default:* `nil`) - The specification for how client requests are aborted as part of fault injection.
  *   `delay` (*type:* `GoogleApi.Compute.V1.Model.HttpFaultDelay.t`, *default:* `nil`) - The specification for how client requests are delayed as part of fault injection, before being sent to a backend service.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :abort => GoogleApi.Compute.V1.Model.HttpFaultAbort.t(),
          :delay => GoogleApi.Compute.V1.Model.HttpFaultDelay.t()
        }

  field(:abort, as: GoogleApi.Compute.V1.Model.HttpFaultAbort)
  field(:delay, as: GoogleApi.Compute.V1.Model.HttpFaultDelay)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpFaultInjection do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpFaultInjection.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpFaultInjection do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
