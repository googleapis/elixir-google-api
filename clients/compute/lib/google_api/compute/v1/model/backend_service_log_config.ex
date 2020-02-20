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

defmodule GoogleApi.Compute.V1.Model.BackendServiceLogConfig do
  @moduledoc """
  The available logging options for the load balancer traffic served by this backend service.

  ## Attributes

  *   `enable` (*type:* `boolean()`, *default:* `nil`) - This field denotes whether to enable logging for the load balancer traffic served by this backend service.
  *   `sampleRate` (*type:* `number()`, *default:* `nil`) - This field can only be specified if logging is enabled for this backend service. The value of the field must be in [0, 1]. This configures the sampling rate of requests to the load balancer where 1.0 means all logged requests are reported and 0.0 means no logged requests are reported. The default value is 1.0.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enable => boolean(),
          :sampleRate => number()
        }

  field(:enable)
  field(:sampleRate)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.BackendServiceLogConfig do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.BackendServiceLogConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.BackendServiceLogConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
