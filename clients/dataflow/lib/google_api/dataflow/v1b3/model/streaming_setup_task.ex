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

defmodule GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask do
  @moduledoc """
  A task which initializes part of a streaming Dataflow job.

  ## Attributes

  - drain (Boolean): The user has requested drain. Defaults to: `null`.
  - receiveWorkPort (Integer): The TCP port on which the worker should listen for messages from other streaming computation workers. Defaults to: `null`.
  - streamingComputationTopology (TopologyConfig): The global topology of the streaming Dataflow job. Defaults to: `null`.
  - workerHarnessPort (Integer): The TCP port used by the worker to communicate with the Dataflow worker harness. Defaults to: `null`.
  """

  defstruct [
    :"drain",
    :"receiveWorkPort",
    :"streamingComputationTopology",
    :"workerHarnessPort"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"streamingComputationTopology", :struct, GoogleApi.Dataflow.V1b3.Model.TopologyConfig, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.StreamingSetupTask do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

