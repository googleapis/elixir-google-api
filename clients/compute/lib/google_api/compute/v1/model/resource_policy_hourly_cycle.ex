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

defmodule GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle do
  @moduledoc """
  Time window specified for hourly operations.

  ## Attributes

  - duration (String.t): [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario. Defaults to: `null`.
  - hoursInCycle (integer()): Allows to define schedule that runs every nth hour. Defaults to: `null`.
  - startTime (String.t): Time within the window to start the operations. It must be in format \&quot;HH:MM\&quot;, where HH : [00-23] and MM : [00-00] GMT. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => any(),
          :hoursInCycle => any(),
          :startTime => any()
        }

  field(:duration)
  field(:hoursInCycle)
  field(:startTime)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ResourcePolicyHourlyCycle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
