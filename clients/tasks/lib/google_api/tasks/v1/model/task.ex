# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.Tasks.V1.Model.Task do
  @moduledoc """


  ## Attributes

  *   `completed` (*type:* `String.t`, *default:* `nil`) - Completion date of the task (as a RFC 3339 timestamp). This field is omitted if the task has not been completed.
  *   `deleted` (*type:* `boolean()`, *default:* `nil`) - Flag indicating whether the task has been deleted. The default is False.
  *   `due` (*type:* `String.t`, *default:* `nil`) - Due date of the task (as a RFC 3339 timestamp). Optional. The due date only records date information; the time portion of the timestamp is discarded when setting the due date. It isn't possible to read or write the time that a task is due via the API.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `hidden` (*type:* `boolean()`, *default:* `nil`) - Flag indicating whether the task is hidden. This is the case if the task had been marked completed when the task list was last cleared. The default is False. This field is read-only.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Task identifier.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Type of the resource. This is always "tasks#task".
  *   `links` (*type:* `list(GoogleApi.Tasks.V1.Model.TaskLinks.t)`, *default:* `nil`) - Collection of links. This collection is read-only.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - Notes describing the task. Optional. Maximum length allowed: 8192 characters.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Parent task identifier. This field is omitted if it is a top-level task. This field is read-only. Use the "move" method to move the task under a different parent or to the top level.
  *   `position` (*type:* `String.t`, *default:* `nil`) - String indicating the position of the task among its sibling tasks under the same parent task or at the top level. If this string is greater than another task's corresponding position string according to lexicographical ordering, the task is positioned after the other task under the same parent task (or at the top level). This field is read-only. Use the "move" method to move the task to another position.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - URL pointing to this task. Used to retrieve, update, or delete this task.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the task. This is either "needsAction" or "completed".
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the task. Maximum length allowed: 1024 characters.
  *   `updated` (*type:* `String.t`, *default:* `nil`) - Last modification time of the task (as a RFC 3339 timestamp).
  *   `webViewLink` (*type:* `String.t`, *default:* `nil`) - An absolute link to the task in the Google Tasks Web UI. This field is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :completed => String.t() | nil,
          :deleted => boolean() | nil,
          :due => String.t() | nil,
          :etag => String.t() | nil,
          :hidden => boolean() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :links => list(GoogleApi.Tasks.V1.Model.TaskLinks.t()) | nil,
          :notes => String.t() | nil,
          :parent => String.t() | nil,
          :position => String.t() | nil,
          :selfLink => String.t() | nil,
          :status => String.t() | nil,
          :title => String.t() | nil,
          :updated => String.t() | nil,
          :webViewLink => String.t() | nil
        }

  field(:completed)
  field(:deleted)
  field(:due)
  field(:etag)
  field(:hidden)
  field(:id)
  field(:kind)
  field(:links, as: GoogleApi.Tasks.V1.Model.TaskLinks, type: :list)
  field(:notes)
  field(:parent)
  field(:position)
  field(:selfLink)
  field(:status)
  field(:title)
  field(:updated)
  field(:webViewLink)
end

defimpl Poison.Decoder, for: GoogleApi.Tasks.V1.Model.Task do
  def decode(value, options) do
    GoogleApi.Tasks.V1.Model.Task.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Tasks.V1.Model.Task do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
