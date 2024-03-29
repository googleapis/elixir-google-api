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

defmodule GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaIdeaActivity do
  @moduledoc """
  An idea activity entry.

  ## Attributes

  *   `ideas` (*type:* `list(String.t)`, *default:* `nil`) - The Idea IDs for this entry. If empty, topics should be set.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Unique identifier for the idea activity. The name is ignored when creating an idea activity. Format: platforms/{platform}/properties/{property}/ideaActivities/{idea_activity}
  *   `topics` (*type:* `list(String.t)`, *default:* `nil`) - The Topic IDs for this entry. If empty, ideas should be set.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of activity performed.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The uri the activity relates to.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ideas => list(String.t()) | nil,
          :name => String.t() | nil,
          :topics => list(String.t()) | nil,
          :type => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:ideas, type: :list)
  field(:name)
  field(:topics, type: :list)
  field(:type)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaIdeaActivity do
  def decode(value, options) do
    GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaIdeaActivity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IdeaHub.V1beta.Model.GoogleSearchIdeahubV1betaIdeaActivity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
