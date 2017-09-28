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

defmodule GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest do
  @moduledoc """
  A suggestion by the service to the worker to dynamically split the WorkItem.

  ## Attributes

  - fractionConsumed (Float): A fraction at which to split the work item, from 0.0 (beginning of the input) to 1.0 (end of the input). Defaults to: `null`.
  - position (Position): A Position at which to split the work item. Defaults to: `null`.
  """

  defstruct [
    :"fractionConsumed",
    :"position"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest do
  import GoogleApi.Dataflow.V1b3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"position", :struct, GoogleApi.Dataflow.V1b3.Model.Position, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.ApproximateSplitRequest do
  def encode(value, options) do
    GoogleApi.Dataflow.V1b3.Deserializer.serialize_non_nil(value, options)
  end
end

