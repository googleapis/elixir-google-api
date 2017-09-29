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

defmodule GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateList do
  @moduledoc """
  Response returned by ListInstanceUpdates method.

  ## Attributes

  - items (List[InstanceUpdate]): Collection of requested instance updates. Defaults to: `null`.
  - kind (String): [Output Only] Type of the resource. Defaults to: `null`.
  - nextPageToken (String): A token used to continue a truncated list request. Defaults to: `null`.
  - selfLink (String): [Output Only] The fully qualified URL for the resource. Defaults to: `null`.
  """

  defstruct [
    :"items",
    :"kind",
    :"nextPageToken",
    :"selfLink"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateList do
  import GoogleApi.ReplicaPoolUpdater.V1beta1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"items", :list, GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdate, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ReplicaPoolUpdater.V1beta1.Model.InstanceUpdateList do
  def encode(value, options) do
    GoogleApi.ReplicaPoolUpdater.V1beta1.Deserializer.serialize_non_nil(value, options)
  end
end

