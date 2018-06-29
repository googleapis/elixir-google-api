# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AppEngine.V1.Model.LivenessCheck do
  @moduledoc """
  Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.

  ## Attributes

  - host (String.t): Host header to send when performing a HTTP Liveness check. Example: \&quot;myapp.appspot.com\&quot; Defaults to: `null`.
  - checkInterval (String.t): Interval between health checks. Defaults to: `null`.
  - failureThreshold (integer()): Number of consecutive failed checks required before considering the VM unhealthy. Defaults to: `null`.
  - initialDelay (String.t): The initial delay before starting to execute the checks. Defaults to: `null`.
  - path (String.t): The request path. Defaults to: `null`.
  - successThreshold (integer()): Number of consecutive successful checks required before considering the VM healthy. Defaults to: `null`.
  - timeout (String.t): Time before the check is considered failed. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => any(),
          :checkInterval => any(),
          :failureThreshold => any(),
          :initialDelay => any(),
          :path => any(),
          :successThreshold => any(),
          :timeout => any()
        }

  field(:host)
  field(:checkInterval)
  field(:failureThreshold)
  field(:initialDelay)
  field(:path)
  field(:successThreshold)
  field(:timeout)
end

defimpl Poison.Decoder, for: GoogleApi.AppEngine.V1.Model.LivenessCheck do
  def decode(value, options) do
    GoogleApi.AppEngine.V1.Model.LivenessCheck.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AppEngine.V1.Model.LivenessCheck do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
