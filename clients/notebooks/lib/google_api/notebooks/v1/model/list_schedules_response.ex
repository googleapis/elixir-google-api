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

defmodule GoogleApi.Notebooks.V1.Model.ListSchedulesResponse do
  @moduledoc """
  Response for listing scheduled notebook job.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Page token that can be used to continue listing from the last result in the next list call.
  *   `schedules` (*type:* `list(GoogleApi.Notebooks.V1.Model.Schedule.t)`, *default:* `nil`) - A list of returned instances.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - Schedules that could not be reached. For example: ['projects/{project_id}/location/{location}/schedules/monthly_digest', 'projects/{project_id}/location/{location}/schedules/weekly_sentiment']
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :schedules => list(GoogleApi.Notebooks.V1.Model.Schedule.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:schedules, as: GoogleApi.Notebooks.V1.Model.Schedule, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.ListSchedulesResponse do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.ListSchedulesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.ListSchedulesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
