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

defmodule GoogleApi.NetworkServices.V1.Model.GrpcRouteRetryPolicy do
  @moduledoc """
  The specifications for retries. Specifies one or more conditions for which this retry rule applies. Valid values are:

  ## Attributes

  *   `numRetries` (*type:* `integer()`, *default:* `nil`) - Specifies the allowed number of retries. This number must be > 0. If not specified, default to 1.
  *   `retryConditions` (*type:* `list(String.t)`, *default:* `nil`) - - connect-failure: Router will retry on failures connecting to Backend Services, for example due to connection timeouts. - refused-stream: Router will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. - cancelled: Router will retry if the gRPC status code in the response header is set to cancelled - deadline-exceeded: Router will retry if the gRPC status code in the response header is set to deadline-exceeded - resource-exhausted: Router will retry if the gRPC status code in the response header is set to resource-exhausted - unavailable: Router will retry if the gRPC status code in the response header is set to unavailable
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numRetries => integer() | nil,
          :retryConditions => list(String.t()) | nil
        }

  field(:numRetries)
  field(:retryConditions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRouteRetryPolicy do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.GrpcRouteRetryPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.GrpcRouteRetryPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
