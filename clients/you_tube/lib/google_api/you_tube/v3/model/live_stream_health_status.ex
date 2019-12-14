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

defmodule GoogleApi.YouTube.V3.Model.LiveStreamHealthStatus do
  @moduledoc """


  ## Attributes

  *   `configurationIssues` (*type:* `list(GoogleApi.YouTube.V3.Model.LiveStreamConfigurationIssue.t)`, *default:* `nil`) - The configurations issues on this stream
  *   `lastUpdateTimeSeconds` (*type:* `String.t`, *default:* `nil`) - The last time this status was updated (in seconds)
  *   `status` (*type:* `String.t`, *default:* `nil`) - The status code of this stream
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configurationIssues =>
            list(GoogleApi.YouTube.V3.Model.LiveStreamConfigurationIssue.t()),
          :lastUpdateTimeSeconds => String.t(),
          :status => String.t()
        }

  field(:configurationIssues,
    as: GoogleApi.YouTube.V3.Model.LiveStreamConfigurationIssue,
    type: :list
  )

  field(:lastUpdateTimeSeconds)
  field(:status)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveStreamHealthStatus do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveStreamHealthStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveStreamHealthStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
