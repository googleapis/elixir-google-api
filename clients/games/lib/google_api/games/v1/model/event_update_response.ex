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

defmodule GoogleApi.Games.V1.Model.EventUpdateResponse do
  @moduledoc """
  This is a JSON template for an event period update resource.

  ## Attributes

  - batchFailures (List[EventBatchRecordFailure]): Any batch-wide failures which occurred applying updates. Defaults to: `null`.
  - eventFailures (List[EventRecordFailure]): Any failures updating a particular event. Defaults to: `null`.
  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string games#eventUpdateResponse. Defaults to: `null`.
  - playerEvents (List[PlayerEvent]): The current status of any updated events Defaults to: `null`.
  """

  defstruct [
    :"batchFailures",
    :"eventFailures",
    :"kind",
    :"playerEvents"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventUpdateResponse do
  import GoogleApi.Games.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"batchFailures", :list, GoogleApi.Games.V1.Model.EventBatchRecordFailure, options)
    |> deserialize(:"eventFailures", :list, GoogleApi.Games.V1.Model.EventRecordFailure, options)
    |> deserialize(:"playerEvents", :list, GoogleApi.Games.V1.Model.PlayerEvent, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventUpdateResponse do
  def encode(value, options) do
    GoogleApi.Games.V1.Deserializer.serialize_non_nil(value, options)
  end
end

