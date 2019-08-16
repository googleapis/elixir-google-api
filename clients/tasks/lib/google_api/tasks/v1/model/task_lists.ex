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

defmodule GoogleApi.Tasks.V1.Model.TaskLists do
  @moduledoc """


  ## Attributes

  *   `etag` (*type:* `String.t`, *default:* `nil`) - ETag of the resource.
  *   `items` (*type:* `list(GoogleApi.Tasks.V1.Model.TaskList.t)`, *default:* `nil`) - Collection of task lists.
  *   `kind` (*type:* `String.t`, *default:* `tasks#taskLists`) - Type of the resource. This is always "tasks#taskLists".
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token that can be used to request the next page of this result.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :etag => String.t(),
          :items => list(GoogleApi.Tasks.V1.Model.TaskList.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:etag)
  field(:items, as: GoogleApi.Tasks.V1.Model.TaskList, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Tasks.V1.Model.TaskLists do
  def decode(value, options) do
    GoogleApi.Tasks.V1.Model.TaskLists.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Tasks.V1.Model.TaskLists do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
