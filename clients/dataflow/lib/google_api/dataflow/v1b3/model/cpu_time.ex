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

defmodule GoogleApi.Dataflow.V1b3.Model.CpuTime do
  @moduledoc """
  Modeled after information exposed by /proc/stat.

  ## Attributes

  - rate (Float): Average CPU utilization rate (% non-idle cpu / second) since previous sample. Defaults to: `null`.
  - timestamp (String): Timestamp of the measurement. Defaults to: `null`.
  - totalMs (String): Total active CPU time across all cores (ie., non-idle) in milliseconds since start-up. Defaults to: `null`.
  """

  defstruct [
    :"rate",
    :"timestamp",
    :"totalMs"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.CpuTime do
  def decode(value, _options) do
    value
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.CpuTime do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

