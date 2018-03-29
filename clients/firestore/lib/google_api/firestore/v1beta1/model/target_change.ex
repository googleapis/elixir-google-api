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

defmodule GoogleApi.Firestore.V1beta1.Model.TargetChange do
  @moduledoc """
  Targets being watched have changed.

  ## Attributes

  - cause (Status): The error that resulted in this change, if applicable. Defaults to: `null`.
  - readTime (String.t): The consistent &#x60;read_time&#x60; for the given &#x60;target_ids&#x60; (omitted when the target_ids are not at a consistent snapshot).  The stream is guaranteed to send a &#x60;read_time&#x60; with &#x60;target_ids&#x60; empty whenever the entire stream reaches a new consistent snapshot. ADD, CURRENT, and RESET messages are guaranteed to (eventually) result in a new consistent snapshot (while NO_CHANGE and REMOVE messages are not).  For a given stream, &#x60;read_time&#x60; is guaranteed to be monotonically increasing. Defaults to: `null`.
  - resumeToken (binary()): A token that can be used to resume the stream for the given &#x60;target_ids&#x60;, or all targets if &#x60;target_ids&#x60; is empty.  Not set on every target change. Defaults to: `null`.
  - targetChangeType (String.t): The type of change that occurred. Defaults to: `null`.
    - Enum - one of [NO_CHANGE, ADD, REMOVE, CURRENT, RESET]
  - targetIds ([integer()]): The target IDs of targets that have changed.  If empty, the change applies to all targets.  For &#x60;target_change_type&#x3D;ADD&#x60;, the order of the target IDs matches the order of the requests to add the targets. This allows clients to unambiguously associate server-assigned target IDs with added targets.  For other states, the order of the target IDs is not defined. Defaults to: `null`.
  """

  defstruct [
    :"cause",
    :"readTime",
    :"resumeToken",
    :"targetChangeType",
    :"targetIds"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Firestore.V1beta1.Model.TargetChange do
  import GoogleApi.Firestore.V1beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"cause", :struct, GoogleApi.Firestore.V1beta1.Model.Status, options)
    
    
    
    
    
  end
end

defimpl Poison.Encoder, for: GoogleApi.Firestore.V1beta1.Model.TargetChange do
  def encode(value, options) do
    GoogleApi.Firestore.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end

