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

defmodule GoogleApi.Games.V1.Model.EventDefinition do
  @moduledoc """
  This is a JSON template for an event definition resource.

  ## Attributes

  - childEvents (List[EventChild]): A list of events that are a child of this event. Defaults to: `null`.
  - description (String): Description of what this event represents. Defaults to: `null`.
  - displayName (String): The name to display for the event. Defaults to: `null`.
  - id (String): The ID of the event. Defaults to: `null`.
  - imageUrl (String): The base URL for the image that represents the event. Defaults to: `null`.
  - isDefaultImageUrl (Boolean): Indicates whether the icon image being returned is a default image, or is game-provided. Defaults to: `null`.
  - kind (String): Uniquely identifies the type of this resource. Value is always the fixed string games#eventDefinition. Defaults to: `null`.
  - visibility (String): The visibility of event being tracked in this definition. Possible values are:   - \&quot;REVEALED\&quot;: This event should be visible to all users.  - \&quot;HIDDEN\&quot;: This event should only be shown to users that have recorded this event at least once. Defaults to: `null`.
  """

  defstruct [
    :"childEvents",
    :"description",
    :"displayName",
    :"id",
    :"imageUrl",
    :"isDefaultImageUrl",
    :"kind",
    :"visibility"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.EventDefinition do
  import GoogleApi.Games.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"childEvents", :list, GoogleApi.Games.V1.Model.EventChild, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.EventDefinition do
  def encode(value, options) do
    GoogleApi.Games.V1.Deserializer.serialize_non_nil(value, options)
  end
end

