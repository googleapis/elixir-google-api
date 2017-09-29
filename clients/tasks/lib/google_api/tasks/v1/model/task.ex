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

defmodule GoogleApi.Tasks.V1.Model.Task do
  @moduledoc """
  

  ## Attributes

  - completed (DateTime): Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed. Defaults to: `null`.
  - deleted (Boolean): Flag indicating whether the task has been deleted. The default if False. Defaults to: `null`.
  - due (DateTime): Due date of the task (as a RFC 3339 timestamp). Optional. Defaults to: `null`.
  - etag (String): ETag of the resource. Defaults to: `null`.
  - hidden (Boolean): Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only. Defaults to: `null`.
  - id (String): Task identifier. Defaults to: `null`.
  - kind (String): Type of the resource. This is always \&quot;tasks#task\&quot;. Defaults to: `null`.
  - links (List[TaskLinks]): Collection of links. This collection is read-only. Defaults to: `null`.
  - notes (String): Notes describing the task. Optional. Defaults to: `null`.
  - parent (String): Parent task identifier. This field is omitted if it is a top-level task. This field is read-only. Use the \&quot;move\&quot; method to move the task under a different parent or to the top level. Defaults to: `null`.
  - position (String): String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task&#39;s corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). This field is read-only. Use the \&quot;move\&quot; method to move the task to another position. Defaults to: `null`.
  - selfLink (String): URL pointing to this task. Used to retrieve, update, or delete this task. Defaults to: `null`.
  - status (String): Status of the task. This is either \&quot;needsAction\&quot; or \&quot;completed\&quot;. Defaults to: `null`.
  - title (String): Title of the task. Defaults to: `null`.
  - updated (DateTime): Last modification time of the task (as a RFC 3339 timestamp). Defaults to: `null`.
  """

  defstruct [
    :"completed",
    :"deleted",
    :"due",
    :"etag",
    :"hidden",
    :"id",
    :"kind",
    :"links",
    :"notes",
    :"parent",
    :"position",
    :"selfLink",
    :"status",
    :"title",
    :"updated"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Tasks.V1.Model.Task do
  import GoogleApi.Tasks.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"links", :list, GoogleApi.Tasks.V1.Model.TaskLinks, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Tasks.V1.Model.Task do
  def encode(value, options) do
    GoogleApi.Tasks.V1.Deserializer.serialize_non_nil(value, options)
  end
end

